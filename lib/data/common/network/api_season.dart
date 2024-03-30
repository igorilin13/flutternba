int calculateCurrentApiSeason() {
  final now = DateTime.now();
  return now.month >= DateTime.august ? now.year : now.year - 1;
}
