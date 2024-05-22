
class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String? image_url;

  User({required this.id, required this.name, required this.email, required this.password, this.image_url});
}
