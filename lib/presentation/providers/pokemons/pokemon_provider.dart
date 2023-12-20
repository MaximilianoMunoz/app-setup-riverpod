// ignore_for_file: only_throw_errors

import 'package:app_setup_riverpod/domain/domain.dart';
import 'package:app_setup_riverpod/infrastructure/repositories/pokemons_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pokemonsRepositoryProvider = Provider<PokemonsRepository>((ref) {
  return PokemonsRepositoryImpl();
});

final pokemonProvider = FutureProvider.family<Pokemon, String>(
  (ref, id) async {
    final pokemonRepository = ref.watch(pokemonsRepositoryProvider);

    final (pokemon, error) = await pokemonRepository.getPokemon(id);

    if (pokemon != null) return pokemon;

    throw error;
  },
);
