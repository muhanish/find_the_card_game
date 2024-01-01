import 'package:find_the_match/Utils/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
            CustomeButton(onPressed: () {}, text: "Join Game").animate(effects: AnimationEffects.transitionIn),
            10.hh,
            CustomeButton(onPressed: () {}, text: "Create New Game").animate(effects: AnimationEffects.transitionIn),
            40.hh,
          ],
        ),
      ),
    );
  }
}
