class Card {
  String member;
  String suit;

  Card(this.member, this.suit);
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var members = [
      'Ace',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Jack',
      'Queen',
      'King'
    ];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var member in members) {
        var card = new Card(member, suit);
        cards.add(card);
      }
    }
  }

  void printDeck() {
    for (var x in cards) {
      print("${x.member} of ${x.suit}");
    }
  }

  cardsWithSuit(String suit) {
    var results = cards.where((x) => x.suit == suit);

    for (var x in results) {
      print("${x.member} of ${x.suit}");
    }
  }
}
