import 'package:carousel_slider/carousel_slider.dart';
import 'package:find_the_match/Features/Dashboard/controller/dashboard_controller.dart';
import 'package:find_the_match/Features/Dashboard/model/gameList.dart';
import 'package:find_the_match/Features/Dashboard/model/game_list_model.dart';
import 'package:find_the_match/Utils/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palette_generator/palette_generator.dart';
// import 'package:palette_generator/palette_generator.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});

  @override
  ConsumerState<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  CarouselController? carouselController;

  @override
  void initState() {
    super.initState();
    carouselController = CarouselController();
    ref.read(dashboardController).updateSelectedGame(index: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.PRIMARY_DARK,
              AppColors.PRIMARY_SEC_DARK,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              40.hh,
              const Text(
                "Choose Game",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              const Spacer(),
              gamesList(),
              const Spacer(),
              CustomeButton(onPressed: () => onJoinGame(), text: "Join Game")
                  .animate(effects: AnimationEffects.transitionIn),
              10.hh,
              CustomeButton(onPressed: () => onCreateGame(), text: "Create New Game")
                  .animate(effects: AnimationEffects.transitionIn),
              40.hh,
            ],
          ),
        ),
      ),
    );
  }

  onJoinGame() {}
  onCreateGame() async {
    await carouselController?.onReady.then((value) {
      print("ready");
    });
    ref.read(dashboardController).createNewGame();
  }

  Widget gamesList() {
    return Consumer(builder: (context, ref, child) {
      final List<GameListModel> gameList = ref.watch(dashboardController).gameList;
      return Container(
        // color: Colors.amber.shade100,
        child: CarouselSlider.builder(
          itemCount: gameList.length,
          carouselController: carouselController,
          options: CarouselOptions(
            height: 500,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(minutes: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.33,
            onPageChanged: (index, reason) {
              ref.read(dashboardController).updateSelectedGame(index: index);
            },
            scrollDirection: Axis.horizontal,
          ),
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) => colorPicker(gameList[itemIndex]),
        ),
      );
    });
  }

  Widget card(
      {required GameListModel game, bgColor = const Color.fromRGBO(255, 204, 188, 1), textColor = Colors.white}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            // height: 400,
            width: 400,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            padding: const EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: Image.asset(
                game.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        20.hh,
        Text(
          game.gameName ?? "",
          style: TextStyle(
            fontSize: 24,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  colorPicker(GameListModel game) {
    return FutureBuilder<PaletteGenerator>(
      future: _updatePaletteGenerator(imageUrl: game.image), // async work
      builder: (BuildContext context, AsyncSnapshot<PaletteGenerator> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const Center(child: CircularProgressIndicator());
          default:
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              // Color color=new Color(snapshot.data.);
              Color? face = snapshot.data?.dominantColor?.color;
              // print("face:$face");
              return card(game: game, bgColor: face);
            }
        }
      },
    );
  }

  Future<PaletteGenerator> _updatePaletteGenerator({required String imageUrl}) async {
    late PaletteGenerator paletteGenerator;

    paletteGenerator = await PaletteGenerator.fromImageProvider(
      Image.asset(imageUrl).image,
    );
    return paletteGenerator;
  }
}
