class IssuerCategoryModel {
  int id;
  String icon;
  String name;
  String status;
  String? backgroundColor;

  IssuerCategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.status,
    this.backgroundColor,
  });

  factory IssuerCategoryModel.fromJson(Map<String, dynamic> json) {
    return IssuerCategoryModel(
      id: json['id'],
      icon: json['icon'],
      name: json['name'],
      status: json['status'],
      backgroundColor: json['backgroundColor'],
    );
  }

  @override
  String toString() {
    return 'IssuerCategoryModel{id: $id, icon: $icon, name: $name, status: $status, backgroundColor: $backgroundColor}';
  }
}