import 'deck.dart';

void main() {
  var deck = new Deck();
  deck.printDeck();
  deck.cards.shuffle();
  print("---------------------------");
  deck.printDeck();
  print("---------------------------");
  deck.cardsWithSuit('Spades');
}
