import 'package:app_setup_riverpod/config/config.dart';
import 'package:quick_actions/quick_actions.dart';

class QuickActionsPlugin {
  static void registerActions() {
    const QuickActions()
      ..initialize(
        (shortcutType) {
          switch (shortcutType) {
            case 'pokemons':
              router.push('/pokemons');
            case 'charmander':
              router.push('/pokemons/4');
            default:
          }
        },
      )
      ..setShortcutItems(
        <ShortcutItem>[
          const ShortcutItem(
            type: 'pokemons',
            localizedTitle: 'Pokemons view',
            icon: 'pokemons',
          ),
          const ShortcutItem(
            type: 'charmander',
            localizedTitle: 'Charmander view',
            icon: 'charmander',
          ),
        ],
      );
  }
}
