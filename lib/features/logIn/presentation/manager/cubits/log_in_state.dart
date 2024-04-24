class LogInState {}

final class LogInInitial extends LogInState {}

final class LogInLoading extends LogInState {}

final class LogInSuccess extends LogInState {}

final class LogInError extends LogInState {
  final String message;

  LogInError(this.message);
}
