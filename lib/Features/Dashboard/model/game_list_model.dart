import 'package:find_the_match/Features/Dashboard/model/gameList.dart';

class GameListModel {
  String image;
  String? gameName;
  GameType gameType;
  bool isSelected;

  GameListModel({this.gameName, required this.image, required this.gameType, this.isSelected = false});
}
