class SenderIdInvalidException implements Exception {
  static const String report = "SenderIdInvalidException";
  String idSender;
  SenderIdInvalidException({required this.idSender});

  @override
  String toString() {
    return "$report\n ID sender: $idSender";
  }
}

class ReceiverIdInvalidException implements Exception {
  static const String report = "ReceiverIdInvalidException";
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString() {
    return "$report\n ID sender: $idReceiver";
  }
}

class SenderNotAuthenticatedException implements Exception {
  static const String report = "SenderNotAuthenticatedException";
  String idSender;
  bool authenticSender;
  SenderNotAuthenticatedException(
      {required this.idSender, required this.authenticSender});

  @override
  String toString() {
    return "$report\n ID sender: $idSender";
  }
}

class ReceiverNotAuthenticatedException implements Exception {
  static const String report = "ReceiverNotAuthenticatedException";
  String idReceiver;
  bool authenticReceiver;

  ReceiverNotAuthenticatedException(
      {required this.idReceiver, required this.authenticReceiver});

  @override
  String toString() {
    return "$report\n ID receiver: $idReceiver";
  }
}

class SenderBalanceLowerThaAmountException implements Exception {
  static const String report = "SenderBalanceLowerThaAmountException";
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThaAmountException(
      {required this.idSender,
      required this.senderBalance,
      required this.amount});

  @override
  String toString() {
    return "$report\n ID sender: $idSender\n Sender Balance: $senderBalance\n Amount: $amount";
  }
}
