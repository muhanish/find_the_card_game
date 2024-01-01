import 'package:find_the_match/Utils/exports.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomeButton(onPressed: () {}, text: "Join Game"),
            10.hh,
            CustomeButton(onPressed: () {}, text: "Create New Game"),
            40.hh,
          ],
        ),
      ),
    );
  }
}
