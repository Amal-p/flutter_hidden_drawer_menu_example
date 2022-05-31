class CardModal {
  String user;
  String CardNumber;
  String CardExpiried;
  String CardType;
  String CardBackground;
  String CardElementTop;
  String CardElementBottom;

  CardModal(this.user, this.CardExpiried, this.CardNumber, this.CardType,
      this.CardBackground, this.CardElementTop, this.CardElementBottom);
}

List<CardModal> cards = cardData
    .map(
      (item) => CardModal(
        item['user'].toString(),
        item['CardExpiried'].toString(),
        item['CardNumber'].toString(),
        item['CardType'].toString(),
        item['CardBackground'].toString(),
        item['CardElementTop'].toString(),
        item['CardElementBottom'].toString(),
      ),
    )
    .toList();

var cardData = [
  {
    "user": "Xariyotha",
    "CardNumber": "**** **** **** **28",
    "CardExpiried": "22-07-3000",
    "CardType": "assets/images/Mastercard.png",
    "CardBackground": "0xFF1E1E99",
    "CardElementTop": 'assets/images/card_top0.svg',
    "CardElementBottom": 'assets/images/card_bottom_0.svg'
  },
  {
    "user": "Xariyotha",
    "CardNumber": "**** **** **** **29",
    "CardExpiried": "22-07-3000",
    "CardType": "assets/images/Mastercard.png",
    "CardBackground": "0xFFFF70A3",
    "CardElementTop": 'assets/images/card_top1.svg',
    "CardElementBottom": 'assets/images/card_bottom_1.svg',
  }
];
