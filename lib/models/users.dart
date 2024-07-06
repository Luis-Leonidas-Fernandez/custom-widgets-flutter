import 'dart:convert';

class UsersModel {
    List<Estudiante> estudiantes;

    UsersModel({
        required this.estudiantes,
    });

    factory UsersModel.fromJson(String str) => UsersModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory UsersModel.fromMap(Map<String, dynamic> json) => UsersModel(
        estudiantes: List<Estudiante>.from(json["estudiantes"].map((x) => Estudiante.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "estudiantes": List<dynamic>.from(estudiantes.map((x) => x.toMap())),
    };
}

class Estudiante {
    String nombre;
    String apellido;
    String direccion;
    int edad;
    String sexo;
    String pais;

    Estudiante({
        required this.nombre,
        required this.apellido,
        required this.direccion,
        required this.edad,
        required this.sexo,
        required this.pais,
    });

    factory Estudiante.fromJson(String str) => Estudiante.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Estudiante.fromMap(Map<String, dynamic> json) => Estudiante(
        nombre: json["nombre"],
        apellido: json["apellido"],
        direccion: json["direccion"],
        edad: json["edad"],
        sexo: json["sexo"],
        pais: json["pais"],
    );

    Map<String, dynamic> toMap() => {
        "nombre": nombre,
        "apellido": apellido,
        "direccion": direccion,
        "edad": edad,
        "sexo": sexo,
        "pais": pais,
    };
}
