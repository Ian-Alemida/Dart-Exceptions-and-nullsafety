import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bankController_exeption.dart';
import 'models/account.dart';

/**void main() {
  //Criando o banco
  BankController bankController = BankController();

  //Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 1600, isAuthenticated: true));

  //Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 1800);
    //Observando resultado
    if (result) {
      print("Transação feita com sucesso");
    }
  } on SenderIdInvalidException catch (e) {
    print("O ID ${e.idSender} do remetente não é um ID valido");
  } on ReceiverIdInvalidException catch (e) {
    print("O ID ${e.idReceiver} do destinatario não é um ID valido");
  } on SenderNotAuthenticatedException catch (e) {
    print("O usuario de ID ${e.idSender} não está autenticado");
  } on ReceiverNotAuthenticatedException catch (e) {
    print("O destinatario de ID ${e.idReceiver} não está autenticado");
  } on SenderBalanceLowerThaAmountException catch (e) {
    print(
        "O usuario com ID ${e.idSender} tentou enviar ${e.amount} sendo que sua conta tem apenas ${e.senderBalance}");
  } on Exception {
    print("Algo deu errado");
  }
}**/

void main() {
  Account? testAccount;

  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if (randomNumber <= 5) {
    testAccount = Account(
        name: "Ian",
        balance: 600,
        isAuthenticated: true,
        createdAt: DateTime.now());
  }

  print(testAccount.runtimeType);

  print(testAccount?.createdAt?.day);
}
