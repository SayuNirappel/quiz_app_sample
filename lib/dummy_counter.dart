class Flagcounter {
  static final Flagcounter _instance = Flagcounter._internal();
  factory Flagcounter() {
    return _instance;
  }
  Flagcounter._internal();
  List<int> fCounter = [0, 1, 0];
}
