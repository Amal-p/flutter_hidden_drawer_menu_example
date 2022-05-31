class OperationModal {
  String title;
  String Icon;
  // String CardExpiried;
  // String CardType;
  // String CardBackground;
  // String CardElementTop;
  // String CardElementBottom;

  OperationModal(this.title, this.Icon);
}

List<OperationModal> datas = cardData
    .map(
      (item) => OperationModal(
        item['title'].toString(),
        item['Icon'].toString(),
        // item['CardNumber'].toString(),
        // item['CardType'].toString(),
        // item['CardBackground'].toString(),
        // item['CardElementTop'].toString(),
        // item['CardElementBottom'].toString(),
      ),
    )
    .toList();

var cardData = [
  {
    "title": "Mony Transfer",
    "Icon": "",
  },
  {
    "title": "Insight Tracking",
    "Icon": "",
  },
  {
    "title": "Bank Withdraw",
    "Icon": "",
  }
];
