class User {
  String showWelcome;
  String cpf;
  String phone;
  String codigoAcesso;
  int registrationIndex;
  bool showSevenPopUp;
  String smsMsg;

  User({
    this.codigoAcesso,
    this.cpf,
    this.phone,
    this.registrationIndex,
    this.showSevenPopUp,
    this.showWelcome,
    this.smsMsg
  });
}