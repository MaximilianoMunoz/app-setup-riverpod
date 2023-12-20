import 'package:app_setup_riverpod/config/config.dart';
import 'package:app_setup_riverpod/domain/domain.dart';
import 'package:app_setup_riverpod/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokemonScreen extends ConsumerWidget {
  const PokemonScreen({
    required this.pokemonId,
    super.key,
  });
  final String pokemonId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonAsync = ref.watch(pokemonProvider(pokemonId));

    return pokemonAsync.when(
      data: (pokemon) => _PokemonView(pokemon: pokemon),
      error: (error, stackTrace) => _ErrorView(
        message: error.toString(),
      ),
      loading: () => const _LoadingView(),
    );
  }
}

class _PokemonView extends StatelessWidget {
  const _PokemonView({required this.pokemon});
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
        actions: [
          IconButton(
            onPressed: () {
              SharePlugin.shareLink(
                link:
                    'https://pokemon-deep-linking-mml.up.railway.app/pokemons/${pokemon.id}/',
                subject: 'Mira este pokemon',
              );
            },
            icon: const Icon(Icons.share_outlined),
          ),
        ],
      ),
      body: Center(
        child: Image.network(
          pokemon.spriteFront,
          fit: BoxFit.contain,
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(message),
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
