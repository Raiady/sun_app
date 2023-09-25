//classe de dados (DTO)
class Users {
  String? id;
  String? userName;
  String? email;
  String? password;
  String? phone;
  String? birthday;
  Users({
    this.id,
    this.userName,
    this.email,
    this.password,
    this.phone,
  });

  //método para converter dados do objeto em formato compatível com JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'email': email,
      'phone': phone,
      'password': password
    };
  }
}
