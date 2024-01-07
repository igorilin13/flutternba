import '../../../data/teams/team_model.dart';

sealed class SelectTeamOnboardingState {
  bool get canContinue;
}

class LoadingState extends SelectTeamOnboardingState {
  @override
  bool get canContinue => false;
}

class ErrorState extends SelectTeamOnboardingState {
  @override
  bool get canContinue => false;
}

class DisplayState extends SelectTeamOnboardingState {
  final List<Team> teams;
  final int? selectedId;

  DisplayState({required this.teams, required this.selectedId});

  @override
  bool get canContinue => selectedId != null;
}

sealed class SelectTeamOnboardingEvent {}

class OnboardingCompleteEvent extends SelectTeamOnboardingEvent {}
