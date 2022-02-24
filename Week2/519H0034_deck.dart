void main() {
  var deck = Deck();

  print(deck);
  //print(deck.cards.length);
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five','Six','Seven', 'Eight','Nine','Ten','Jack', 'Queen','King'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var rank in ranks){
      for (var suit in suits) {
        cards.add(Card(rank: rank, suit: suit));
      }
    }
  }
  
  String toString() {
    return cards.toString();
  }
}

class Card {
  String? suit;
  String? rank;

  Card({this.suit, this.rank});
  
  String toString() {
    return '$rank of $suit';
  }
}
