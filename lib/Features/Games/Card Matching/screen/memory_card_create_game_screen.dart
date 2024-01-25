import 'package:find_the_match/Utils/exports.dart';

class MemoryCardCreateGameScreen extends StatelessWidget {
  const MemoryCardCreateGameScreen({super.key});

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
