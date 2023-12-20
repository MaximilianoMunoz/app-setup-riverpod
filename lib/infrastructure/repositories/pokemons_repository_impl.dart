import 'package:app_setup_riverpod/domain/domain.dart';
import 'package:app_setup_riverpod/infrastructure/datasources/pokemons_datasources.dart';

class PokemonsRepositoryImpl implements PokemonsRepository {
  PokemonsRepositoryImpl({PokemonsDatasource? datasource})
      : datasource = datasource ?? PokemonsDatasourceImpl();
  final PokemonsDatasource datasource;

  @override
  Future<(Pokemon?, String)> getPokemon(String id) {
    return datasource.getPokemon(id);
  }
}
