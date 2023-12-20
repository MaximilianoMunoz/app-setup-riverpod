// ignore_for_file: one_member_abstracts

import 'package:app_setup_riverpod/domain/domain.dart';

abstract class PokemonsDatasource {
  Future<(Pokemon?, String)> getPokemon(String id);
}
