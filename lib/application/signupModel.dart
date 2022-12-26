class User{

  var emailController;
  var passwordController;
  var nameController;
  var walletController;
  var addressController;
  var phoneController;
  var isExpert;

  User({
    this.nameController,
    this.emailController,
    this.passwordController,
    this.phoneController,
    this.addressController,
    this.walletController,
    this.isExpert
  });

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      nameController:json['name'],
      emailController: json['email'],
      passwordController: json['password'],
      phoneController: json['phone'],
      addressController: json['address'],
      walletController: json['wallet'],
      isExpert: json['is_expert'],
    );
  }
}