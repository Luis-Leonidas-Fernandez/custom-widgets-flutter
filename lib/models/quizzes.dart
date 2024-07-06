import 'dart:convert';

class QuizzesModel {
    List<Pregunta> preguntas;

    QuizzesModel({
        required this.preguntas,
    });

    factory QuizzesModel.fromJson(String str) => QuizzesModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory QuizzesModel.fromMap(Map<String, dynamic> json) => QuizzesModel(
        preguntas: List<Pregunta>.from(json["preguntas"].map((x) => Pregunta.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "preguntas": List<dynamic>.from(preguntas.map((x) => x.toMap())),
    };
}

class Pregunta {
    String area;
    String pregunta;
    List<String> opciones;
    bool respuestaCorrecta;
    String imagen;

    Pregunta({
        required this.area,
        required this.pregunta,
        required this.opciones,
        required this.respuestaCorrecta,
        required this.imagen
    });

    factory Pregunta.fromJson(String str) => Pregunta.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Pregunta.fromMap(Map<String, dynamic> json) => Pregunta(
        area: json["area"],
        pregunta: json["pregunta"],
        opciones: List<String>.from(json["opciones"].map((x) => x)),
        respuestaCorrecta: json["respuesta_correcta"],
        imagen: json["imagen"],
    );

    Map<String, dynamic> toMap() => {
        "area": area,
        "pregunta": pregunta,
        "opciones": List<dynamic>.from(opciones.map((x) => x)),
        "respuesta_correcta": respuestaCorrecta,
        "imagen": imagen,
    };
}
