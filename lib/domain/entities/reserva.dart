import 'package:segurancaif/domain/entities/sala.dart';
import 'package:segurancaif/domain/entities/usuario.dart';

class Reserva {
  
  String id;
  Usuario usuario;
  Sala sala;
  DateTime horario;

  Reserva(this.id, this.usuario, this.sala, this.horario);
}