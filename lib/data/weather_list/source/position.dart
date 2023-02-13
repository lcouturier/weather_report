class Position {
  final double lat;
  final double lng;

  Position(this.lat, this.lng);

  @override
  String toString() => '$lat,$lng';

  static Position paris = Position(48.8249279, 2.3980539);
}
