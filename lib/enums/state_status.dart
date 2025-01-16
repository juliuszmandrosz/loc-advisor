enum StateStatus {
  initial,
  loading,
  failure,
  success,
}

extension StateStatusX on StateStatus {
  bool get isInitial => this == StateStatus.initial;
  bool get isLoading => this == StateStatus.loading;
  bool get isFailure => this == StateStatus.failure;
  bool get isSuccess => this == StateStatus.success;
}
