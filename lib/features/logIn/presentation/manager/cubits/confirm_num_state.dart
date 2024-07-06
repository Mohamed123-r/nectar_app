part of 'confirm_num_cubit.dart';

@immutable
sealed class ConfirmNumState {}

final class ConfirmNumInitial extends ConfirmNumState {}
final class ConfirmNumSuccess extends ConfirmNumState {}
final class ConfirmNumError extends ConfirmNumState {}
final class ConfirmNumLoading extends ConfirmNumState {}
