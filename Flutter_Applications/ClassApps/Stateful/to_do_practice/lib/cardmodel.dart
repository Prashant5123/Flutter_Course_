class CardModel {
  final String title;
  final String description;
  final String date;
  

  CardModel(
    {
      required this.title,
      required this.description,
      required this.date,
   
      
    }
  );

  Map<String,dynamic> cardMap(){
    return{
      "title":title,
      "description":description,
      "date":date,
    };
  }
}

