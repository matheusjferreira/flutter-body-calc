class PersonModel {
  final double height;
  final double weight;

  PersonModel(
    this.height,
    this.weight,
  );

  double getBmi() {
    return weight / (height * height);
  }
}
