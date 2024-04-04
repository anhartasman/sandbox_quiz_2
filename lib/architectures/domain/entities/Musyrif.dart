// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/// A user of the application.
class Musyrif {
  final String name;
  final String nik;
  final String description;
  final String group;
  final String className;
  const Musyrif({
    required this.name,
    required this.nik,
    required this.description,
    required this.group,
    required this.className,
  });

  Musyrif copyWith({
    String? name,
    String? nik,
    String? description,
    String? group,
    String? className,
  }) {
    return Musyrif(
      name: name ?? this.name,
      nik: nik ?? this.nik,
      description: description ?? this.description,
      group: group ?? this.group,
      className: className ?? this.className,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'nik': nik,
      'description': description,
      'group': group,
      'className': className,
    };
  }

  factory Musyrif.fromMap(Map<String, dynamic> map) {
    return Musyrif(
      name: map['name'] ?? '',
      nik: map['nik'] ?? '',
      description: map['description'] ?? '',
      group: map['group'] ?? '',
      className: map['className'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Musyrif.fromJson(String source) =>
      Musyrif.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Musyrif(name: $name, nik: $nik, description: $description, group: $group, className: $className)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Musyrif &&
        other.name == name &&
        other.nik == nik &&
        other.description == description &&
        other.group == group &&
        other.className == className;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        nik.hashCode ^
        description.hashCode ^
        group.hashCode ^
        className.hashCode;
  }
}
