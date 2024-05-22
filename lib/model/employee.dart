class Employee {
  final String name;
  final String last_name;
  final String primary_image_url;
  final List<String> secondary_images_url;
  final int points; // per day
  final String? address;
  final int? phone_number;
  final DateTime? contract_begin;
  final int? shift_starts;
  final int? shift_ends;
  final String? info_discreption;

  Employee({
    required this.name,
    required this.last_name,
    required this.primary_image_url,
    required this.secondary_images_url,
    this.points = 0,
    this.address,
    this.contract_begin,
    this.info_discreption,
    this.phone_number,
    this.shift_ends,
    this.shift_starts,
  });
}
