import 'package:segurancaif/data/database/db.dart';
import 'package:segurancaif/domain/entities/reserva.dart';

class ReservaRepository {

  String insert(Reserva reserva) {
    String id = (Database.reservaID++).toString();
    reserva.id = id;
    Database.reservas.add(reserva);
    return id;
  }

}