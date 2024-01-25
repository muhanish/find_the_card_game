import 'package:find_the_match/Features/Dashboard/model/gameList.dart';
import 'package:find_the_match/Features/Dashboard/model/game_list_model.dart';
import 'package:find_the_match/Utils/exports.dart';
import 'package:find_the_match/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardController = ChangeNotifierProvider((ref) => DashBoardController());

class DashBoardController extends ChangeNotifier {
  List<GameListModel> gameList = [
    GameListModel(
        image: Images.air_hockey_03_game, gameName: "Air Hockey", gameType: GameType.airHockey, isSelected: false),
    GameListModel(
        image: Images.tic_tac_toe_game, gameName: "Tic Tac Toe", gameType: GameType.tikTacToe, isSelected: false),
    GameListModel(
        image: Images.dots_and_boxes_game,
        gameName: "Dots and Boxes",
        gameType: GameType.dotsAndBoxes,
        isSelected: false),
    GameListModel(
        image: Images.memory_card_game, gameName: "Memory Card", gameType: GameType.memoryCard, isSelected: false),
  ];

  updateSelectedGame({required int index}) {
    for (var game in gameList) {
      game.isSelected = false;
    }
    gameList[index].isSelected = true;
  }

  createNewGame() {
    GameListModel selectedGame = gameList.firstWhere((game) => game.isSelected);
    print('SELECTED GAME: ${selectedGame.gameName} ');

    switch (selectedGame.gameType) {
      case GameType.tikTacToe:
        Navigator.pushNamed(GlobalVariable.navState.currentState!.context, Routes.ticTacToeCreateGameScreen);

        break;
      case GameType.memoryCard:
        Navigator.pushNamed(GlobalVariable.navState.currentState!.context, Routes.ticTacToeCreateGameScreen);
        break;

      default:
        GlobalVariable.showSnackBar(msg: "${selectedGame.gameName} is Coming Soon...");
    }
  }
}
