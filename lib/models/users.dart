//classe de dados (DTO)
class Users {
  String? id;
  String? userName;
  String? email;
  String? password;
  String? phone;
  String? birth;
  String? social;
  Users({
    this.id,
    this.userName,
    this.email,
    this.password,
    this.phone,
    this.birth,
    this.social,
  });

  //método para converter dados do objeto em formato compatível com JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'email': email,
      'social': social,
      'phone': phone,
      'password': password,
      'birth': birth,
    };
  }
}
