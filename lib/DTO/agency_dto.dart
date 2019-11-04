class AgencyDTO {
  final int id;
  final String name;
  final String url;
  final String timezone;
  final String lang;
  final String phone;
  final String fareUrl;
  final String email;

  AgencyDTO(
      {this.id,
        this.name,
        this.url,
        this.timezone,
        this.lang,
        this.phone,
        this.fareUrl,
        this.email});

  factory AgencyDTO.fromJson(Map<String, dynamic> json) => AgencyDTO(
      id: json['id'],
      name: json['name'],
      url: json['url'],
      timezone: json['timezone'],
      lang: json['lang'],
      phone: json['phone'],
      fareUrl: json['fareUrl'],
      email: json['email']);

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'url': url,
    'timezone': timezone,
    'lang': lang,
    'phone': phone,
    'fareUrl': fareUrl,
    'email': email,
  };
}
