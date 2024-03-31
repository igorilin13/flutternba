class TeamIdMapping {
  final Map<int, int> _fromSportsIoToBallApiTeamMapping = {
    1: 1,
    2: 2,
    4: 3,
    5: 4,
    6: 5,
    7: 6,
    8: 7,
    9: 8,
    10: 9,
    11: 10,
    14: 11,
    15: 12,
    16: 13,
    17: 14,
    19: 15,
    20: 16,
    21: 17,
    22: 18,
    23: 19,
    24: 20,
    25: 21,
    26: 22,
    27: 23,
    28: 24,
    29: 25,
    30: 26,
    31: 27,
    38: 28,
    40: 29,
    41: 30,
  };

  int getBallApiTeamId(int sportsIoTeamId) {
    return _fromSportsIoToBallApiTeamMapping[sportsIoTeamId]!;
  }
}
