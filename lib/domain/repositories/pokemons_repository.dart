// ignore_for_file: one_member_abstracts

import 'package:app_setup_riverpod/domain/domain.dart';

abstract class PokemonsRepository {
  Future<(Pokemon?, String)> getPokemon(String id);
}
