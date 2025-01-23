class Player{
  final String pName;
  final int jersyNo;
  final int runs;
  final double avg;


  Player({
    required this.pName,
    required this.jersyNo,
    required this.runs,
    required this.avg
  });

  Map<String,dynamic> playerMap(){
    return{
      "pName":pName,
      "jersyNo":jersyNo,
      "runs":runs,
      "avg":avg
    };
  }
}