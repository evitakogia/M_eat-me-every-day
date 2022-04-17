// ignore_for_file: non_constant_identifier_names
library my_prj.globals;

String globalString = "";
List imagearray = [];

class Data {
  String thermides, proteines, idatanthrakes, alati;
  Data(
      {required this.thermides,
      required this.proteines,
      required this.idatanthrakes,
      required this.alati});
}

final data = Data(
    thermides: '${(14.8 * baros) + 485}',
    proteines: '${0.83 * baros}',
    idatanthrakes: '255',
    alati: '5');

String name = "";

String kilo = "";

late int baros;

double Alati = 0.5;
double Ydatanthrakes = 49.1;
double Proteines = 12.35;
double Thermides = 321.1;
