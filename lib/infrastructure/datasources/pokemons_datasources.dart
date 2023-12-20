import 'package:app_setup_riverpod/domain/domain.dart';
import 'package:app_setup_riverpod/infrastructure/mappers/pokemons_mapper.dart';
import 'package:dio/dio.dart';

class PokemonsDatasourceImpl implements PokemonsDatasource {
  PokemonsDatasourceImpl()
      : dio = Dio(
          BaseOptions(baseUrl: 'https://pokeapi.co/api/v2/'),
        );
  final Dio dio;

  @override
  Future<(Pokemon?, String)> getPokemon(String id) async {
    try {
      final resp = await dio.get<dynamic>('pokemon/$id');

      final pokemon = PokemonMapper.pokeApiPokemonToEntity(
        resp.data as Map<String, dynamic>,
      );

      return (pokemon, 'Data de respuesta');
    } catch (e) {
      return (null, 'no se pudo obtener pokemon $e');
    }
  }
}
