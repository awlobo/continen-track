class Player {
  final String name;
  int matches = 0;
  int wins = 0;
  int totalPoints = 0;
  int continentals = 0;
  int maxPoints = 0;
  int minPoints = 0;
  int pointsMatch = 0;

  Player(this.name);

  double getAverage() {
    return matches == 0 ? 0 : totalPoints / matches.toDouble();
  }

  double getPorcentajeVictorias() {
    return matches == 0 ? 0 : (this.wins / this.matches.toDouble()) * 100;
  }

  void setMaxPoints(int currentPoints) {
    this.maxPoints =
        currentPoints > this.maxPoints ? currentPoints : this.maxPoints;
  }

  void setMinPoints(int currentPoints) {
    this.minPoints = currentPoints < this.minPoints || this.minPoints == 0
        ? currentPoints
        : this.minPoints;
  }
}
