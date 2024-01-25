import 'package:find_the_match/Utils/exports.dart';

class TicTacToeCreateGameScreen extends StatelessWidget {
  const TicTacToeCreateGameScreen({super.key});

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
        child: const Column(
          children: [],
        ),
      ),
    );
  }
}
