// ignore_for_file: inference_failure_on_instance_creation, avoid_dynamic_calls

class PokeApiPokemonResponse {
  PokeApiPokemonResponse({
    required this.abilities,
    required this.baseExperience,
    required this.forms,
    required this.gameIndices,
    required this.height,
    required this.heldItems,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.pastAbilities,
    required this.pastTypes,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  factory PokeApiPokemonResponse.fromJson(Map<String, dynamic> json) =>
      PokeApiPokemonResponse(
        abilities: List<Ability>.from(
          (json['abilities'] as List<dynamic>).map(
            (x) => Ability.fromJson(x as Map<String, dynamic>),
          ),
        ),
        baseExperience: json['base_experience'] as int,
        forms: List<Species>.from(
          (json['forms'] as List<dynamic>).map(
            (x) => Species.fromJson(x as Map<String, dynamic>),
          ),
        ),
        gameIndices: List<GameIndex>.from(
          (json['game_indices'] as List<dynamic>).map(
            (x) => GameIndex.fromJson(x as Map<String, dynamic>),
          ),
        ),
        height: json['height'] as int,
        heldItems: List<dynamic>.from(
          (json['held_items'] as List<dynamic>).map((x) => x),
        ),
        id: json['id'] as int,
        isDefault: json['is_default'] as bool,
        locationAreaEncounters: json['location_area_encounters'] as String,
        moves: List<Move>.from(
          (json['moves'] as List<dynamic>).map(
            (x) => Move.fromJson(x as Map<String, dynamic>),
          ),
        ),
        name: json['name'] as String,
        order: json['order'] as int,
        pastAbilities: List<dynamic>.from(
          (json['past_abilities'] as List<dynamic>).map((x) => x),
        ),
        pastTypes: List<dynamic>.from(
          (json['past_types'] as List<dynamic>).map((x) => x),
        ),
        species: Species.fromJson(
          json['species'] as Map<String, dynamic>,
        ),
        sprites: Sprites.fromJson(
          json['sprites'] as Map<String, dynamic>,
        ),
        stats: List<Stat>.from(
          (json['stats'] as List<dynamic>).map(
            (x) => Stat.fromJson(x as Map<String, dynamic>),
          ),
        ),
        types: List<Type>.from(
          (json['types'] as List<dynamic>).map(
            (x) => Type.fromJson(x as Map<String, dynamic>),
          ),
        ),
        weight: json['weight'] as int,
      );
  final List<Ability> abilities;
  final int baseExperience;
  final List<Species> forms;
  final List<GameIndex> gameIndices;
  final int height;
  final List<dynamic> heldItems;
  final int id;
  final bool isDefault;
  final String locationAreaEncounters;
  final List<Move> moves;
  final String name;
  final int order;
  final List<dynamic> pastAbilities;
  final List<dynamic> pastTypes;
  final Species species;
  final Sprites sprites;
  final List<Stat> stats;
  final List<Type> types;
  final int weight;

  Map<String, dynamic> toJson() => {
        'abilities': List<dynamic>.from(abilities.map((x) => x.toJson())),
        'base_experience': baseExperience,
        'forms': List<dynamic>.from(forms.map((x) => x.toJson())),
        'game_indices': List<dynamic>.from(gameIndices.map((x) => x.toJson())),
        'height': height,
        'held_items': List<dynamic>.from(heldItems.map((x) => x)),
        'id': id,
        'is_default': isDefault,
        'location_area_encounters': locationAreaEncounters,
        'moves': List<dynamic>.from(moves.map((x) => x.toJson())),
        'name': name,
        'order': order,
        'past_abilities': List<dynamic>.from(pastAbilities.map((x) => x)),
        'past_types': List<dynamic>.from(pastTypes.map((x) => x)),
        'species': species.toJson(),
        'sprites': sprites.toJson(),
        'stats': List<dynamic>.from(stats.map((x) => x.toJson())),
        'types': List<dynamic>.from(types.map((x) => x.toJson())),
        'weight': weight,
      };
}

class Ability {
  Ability({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        ability: Species.fromJson(json['ability'] as Map<String, dynamic>),
        isHidden: json['is_hidden'] as bool,
        slot: json['slot'] as int,
      );
  final Species ability;
  final bool isHidden;
  final int slot;

  Map<String, dynamic> toJson() => {
        'ability': ability.toJson(),
        'is_hidden': isHidden,
        'slot': slot,
      };
}

class Species {
  Species({
    required this.name,
    required this.url,
  });

  factory Species.fromJson(Map<String, dynamic> json) => Species(
        name: json['name'] as String,
        url: json['url'] as String,
      );
  final String name;
  final String url;

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };
}

class GameIndex {
  GameIndex({
    required this.gameIndex,
    required this.version,
  });

  factory GameIndex.fromJson(Map<String, dynamic> json) => GameIndex(
        gameIndex: json['game_index'] as int,
        version: Species.fromJson(json['version'] as Map<String, dynamic>),
      );
  final int gameIndex;
  final Species version;

  Map<String, dynamic> toJson() => {
        'game_index': gameIndex,
        'version': version.toJson(),
      };
}

class Move {
  Move({
    required this.move,
    required this.versionGroupDetails,
  });

  factory Move.fromJson(Map<String, dynamic> json) => Move(
        move: Species.fromJson(json['move'] as Map<String, dynamic>),
        versionGroupDetails: List<VersionGroupDetail>.from(
          (json['version_group_details'] as List<dynamic>).map(
            (x) => VersionGroupDetail.fromJson(x as Map<String, dynamic>),
          ),
        ),
      );
  final Species move;
  final List<VersionGroupDetail> versionGroupDetails;

  Map<String, dynamic> toJson() => {
        'move': move.toJson(),
        'version_group_details':
            List<dynamic>.from(versionGroupDetails.map((x) => x.toJson())),
      };
}

class VersionGroupDetail {
  VersionGroupDetail({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      VersionGroupDetail(
        levelLearnedAt: json['level_learned_at'] as int,
        moveLearnMethod: Species.fromJson(
          json['move_learn_method'] as Map<String, dynamic>,
        ),
        versionGroup: Species.fromJson(
          json['version_group'] as Map<String, dynamic>,
        ),
      );
  final int levelLearnedAt;
  final Species moveLearnMethod;
  final Species versionGroup;

  Map<String, dynamic> toJson() => {
        'level_learned_at': levelLearnedAt,
        'move_learn_method': moveLearnMethod.toJson(),
        'version_group': versionGroup.toJson(),
      };
}

class GenerationV {
  GenerationV({
    required this.blackWhite,
  });

  factory GenerationV.fromJson(Map<String, dynamic> json) => GenerationV(
        blackWhite: Sprites.fromJson(
          json['black-white'] as Map<String, dynamic>,
        ),
      );
  final Sprites blackWhite;

  Map<String, dynamic> toJson() => {
        'black-white': blackWhite.toJson(),
      };
}

class GenerationIv {
  GenerationIv({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  factory GenerationIv.fromJson(Map<String, dynamic> json) => GenerationIv(
        diamondPearl: Sprites.fromJson(
          json['diamond-pearl'] as Map<String, dynamic>,
        ),
        heartgoldSoulsilver: Sprites.fromJson(
          json['heartgold-soulsilver'] as Map<String, dynamic>,
        ),
        platinum: Sprites.fromJson(
          json['platinum'] as Map<String, dynamic>,
        ),
      );
  final Sprites diamondPearl;
  final Sprites heartgoldSoulsilver;
  final Sprites platinum;

  Map<String, dynamic> toJson() => {
        'diamond-pearl': diamondPearl.toJson(),
        'heartgold-soulsilver': heartgoldSoulsilver.toJson(),
        'platinum': platinum.toJson(),
      };
}

class Versions {
  Versions({
    required this.generationI,
    required this.generationIi,
    required this.generationIii,
    required this.generationIv,
    required this.generationV,
    required this.generationVi,
    required this.generationVii,
    required this.generationViii,
  });

  factory Versions.fromJson(Map<String, dynamic> json) => Versions(
        generationI: GenerationI.fromJson(
          json['generation-i'] as Map<String, dynamic>,
        ),
        generationIi: GenerationIi.fromJson(
          json['generation-ii'] as Map<String, dynamic>,
        ),
        generationIii: GenerationIii.fromJson(
          json['generation-iii'] as Map<String, dynamic>,
        ),
        generationIv: GenerationIv.fromJson(
          json['generation-iv'] as Map<String, dynamic>,
        ),
        generationV: GenerationV.fromJson(
          json['generation-v'] as Map<String, dynamic>,
        ),
        generationVi:
            Map.from(json['generation-vi'] as Map<String, dynamic>).map(
          (k, v) => MapEntry<String, Home>(
            k as String,
            Home.fromJson(v as Map<String, dynamic>),
          ),
        ),
        generationVii: GenerationVii.fromJson(
          json['generation-vii'] as Map<String, dynamic>,
        ),
        generationViii: GenerationViii.fromJson(
          json['generation-viii'] as Map<String, dynamic>,
        ),
      );
  final GenerationI generationI;
  final GenerationIi generationIi;
  final GenerationIii generationIii;
  final GenerationIv generationIv;
  final GenerationV generationV;
  final Map<String, Home> generationVi;
  final GenerationVii generationVii;
  final GenerationViii generationViii;

  Map<String, dynamic> toJson() => {
        'generation-i': generationI.toJson(),
        'generation-ii': generationIi.toJson(),
        'generation-iii': generationIii.toJson(),
        'generation-iv': generationIv.toJson(),
        'generation-v': generationV.toJson(),
        'generation-vi': Map.from(generationVi).map(
          (k, v) => MapEntry<String, dynamic>(
            k as String,
            v.toJson(),
          ),
        ),
        'generation-vii': generationVii.toJson(),
        'generation-viii': generationViii.toJson(),
      };
}

class Sprites {
  Sprites({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
    this.other,
    this.versions,
    this.animated,
  });

  factory Sprites.fromJson(Map<String, dynamic> json) => Sprites(
        backDefault: json['back_default'] as String,
        backFemale: json['back_female'],
        backShiny: json['back_shiny'] as String,
        backShinyFemale: json['back_shiny_female'],
        frontDefault: json['front_default'] as String,
        frontFemale: json['front_female'],
        frontShiny: json['front_shiny'] as String,
        frontShinyFemale: json['front_shiny_female'],
        other: json['other'] == null
            ? null
            : Other.fromJson(
                json['other'] as Map<String, dynamic>,
              ),
        versions: json['versions'] == null
            ? null
            : Versions.fromJson(
                json['versions'] as Map<String, dynamic>,
              ),
        animated: json['animated'] == null
            ? null
            : Sprites.fromJson(
                json['animated'] as Map<String, dynamic>,
              ),
      );
  final String backDefault;
  final dynamic backFemale;
  final String backShiny;
  final dynamic backShinyFemale;
  final String frontDefault;
  final dynamic frontFemale;
  final String frontShiny;
  final dynamic frontShinyFemale;
  final Other? other;
  final Versions? versions;
  final Sprites? animated;

  Map<String, dynamic> toJson() => {
        'back_default': backDefault,
        'back_female': backFemale,
        'back_shiny': backShiny,
        'back_shiny_female': backShinyFemale,
        'front_default': frontDefault,
        'front_female': frontFemale,
        'front_shiny': frontShiny,
        'front_shiny_female': frontShinyFemale,
        'other': other?.toJson(),
        'versions': versions?.toJson(),
        'animated': animated?.toJson(),
      };
}

class GenerationI {
  GenerationI({
    required this.redBlue,
    required this.yellow,
  });

  factory GenerationI.fromJson(Map<String, dynamic> json) => GenerationI(
        redBlue: RedBlue.fromJson(
          json['red-blue'] as Map<String, dynamic>,
        ),
        yellow: RedBlue.fromJson(
          json['yellow'] as Map<String, dynamic>,
        ),
      );
  final RedBlue redBlue;
  final RedBlue yellow;

  Map<String, dynamic> toJson() => {
        'red-blue': redBlue.toJson(),
        'yellow': yellow.toJson(),
      };
}

class RedBlue {
  RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  factory RedBlue.fromJson(Map<String, dynamic> json) => RedBlue(
        backDefault: json['back_default'] as String,
        backGray: json['back_gray'] as String,
        backTransparent: json['back_transparent'] as String,
        frontDefault: json['front_default'] as String,
        frontGray: json['front_gray'] as String,
        frontTransparent: json['front_transparent'] as String,
      );
  final String backDefault;
  final String backGray;
  final String backTransparent;
  final String frontDefault;
  final String frontGray;
  final String frontTransparent;

  Map<String, dynamic> toJson() => {
        'back_default': backDefault,
        'back_gray': backGray,
        'back_transparent': backTransparent,
        'front_default': frontDefault,
        'front_gray': frontGray,
        'front_transparent': frontTransparent,
      };
}

class GenerationIi {
  GenerationIi({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  factory GenerationIi.fromJson(Map<String, dynamic> json) => GenerationIi(
        crystal: Crystal.fromJson(
          json['crystal'] as Map<String, dynamic>,
        ),
        gold: Gold.fromJson(
          json['gold'] as Map<String, dynamic>,
        ),
        silver: Gold.fromJson(
          json['silver'] as Map<String, dynamic>,
        ),
      );
  final Crystal crystal;
  final Gold gold;
  final Gold silver;

  Map<String, dynamic> toJson() => {
        'crystal': crystal.toJson(),
        'gold': gold.toJson(),
        'silver': silver.toJson(),
      };
}

class Crystal {
  Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.backShinyTransparent,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontShinyTransparent,
    required this.frontTransparent,
  });

  factory Crystal.fromJson(Map<String, dynamic> json) => Crystal(
        backDefault: json['back_default'] as String,
        backShiny: json['back_shiny'] as String,
        backShinyTransparent: json['back_shiny_transparent'] as String,
        backTransparent: json['back_transparent'] as String,
        frontDefault: json['front_default'] as String,
        frontShiny: json['front_shiny'] as String,
        frontShinyTransparent: json['front_shiny_transparent'] as String,
        frontTransparent: json['front_transparent'] as String,
      );
  final String backDefault;
  final String backShiny;
  final String backShinyTransparent;
  final String backTransparent;
  final String frontDefault;
  final String frontShiny;
  final String frontShinyTransparent;
  final String frontTransparent;

  Map<String, dynamic> toJson() => {
        'back_default': backDefault,
        'back_shiny': backShiny,
        'back_shiny_transparent': backShinyTransparent,
        'back_transparent': backTransparent,
        'front_default': frontDefault,
        'front_shiny': frontShiny,
        'front_shiny_transparent': frontShinyTransparent,
        'front_transparent': frontTransparent,
      };
}

class Gold {
  Gold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    this.frontTransparent,
  });

  factory Gold.fromJson(Map<String, dynamic> json) => Gold(
        backDefault: json['back_default'] as String,
        backShiny: json['back_shiny'] as String,
        frontDefault: json['front_default'] as String,
        frontShiny: json['front_shiny'] as String,
        frontTransparent: json['front_transparent'] as String?,
      );
  final String backDefault;
  final String backShiny;
  final String frontDefault;
  final String frontShiny;
  final String? frontTransparent;

  Map<String, dynamic> toJson() => {
        'back_default': backDefault,
        'back_shiny': backShiny,
        'front_default': frontDefault,
        'front_shiny': frontShiny,
        'front_transparent': frontTransparent,
      };
}

class GenerationIii {
  GenerationIii({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  factory GenerationIii.fromJson(Map<String, dynamic> json) => GenerationIii(
        emerald: OfficialArtwork.fromJson(
          json['emerald'] as Map<String, dynamic>,
        ),
        fireredLeafgreen: Gold.fromJson(
          json['firered-leafgreen'] as Map<String, dynamic>,
        ),
        rubySapphire: Gold.fromJson(
          json['ruby-sapphire'] as Map<String, dynamic>,
        ),
      );
  final OfficialArtwork emerald;
  final Gold fireredLeafgreen;
  final Gold rubySapphire;

  Map<String, dynamic> toJson() => {
        'emerald': emerald.toJson(),
        'firered-leafgreen': fireredLeafgreen.toJson(),
        'ruby-sapphire': rubySapphire.toJson(),
      };
}

class OfficialArtwork {
  OfficialArtwork({
    required this.frontDefault,
    required this.frontShiny,
  });

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      OfficialArtwork(
        frontDefault: json['front_default'] as String,
        frontShiny: json['front_shiny'] as String,
      );
  final String frontDefault;
  final String frontShiny;

  Map<String, dynamic> toJson() => {
        'front_default': frontDefault,
        'front_shiny': frontShiny,
      };
}

class Home {
  Home({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory Home.fromJson(Map<String, dynamic> json) => Home(
        frontDefault: json['front_default'] as String,
        frontFemale: json['front_female'],
        frontShiny: json['front_shiny'] as String,
        frontShinyFemale: json['front_shiny_female'],
      );
  final String frontDefault;
  final dynamic frontFemale;
  final String frontShiny;
  final dynamic frontShinyFemale;

  Map<String, dynamic> toJson() => {
        'front_default': frontDefault,
        'front_female': frontFemale,
        'front_shiny': frontShiny,
        'front_shiny_female': frontShinyFemale,
      };
}

class GenerationVii {
  GenerationVii({
    required this.icons,
    required this.ultraSunUltraMoon,
  });

  factory GenerationVii.fromJson(Map<String, dynamic> json) => GenerationVii(
        icons: DreamWorld.fromJson(
          json['icons'] as Map<String, dynamic>,
        ),
        ultraSunUltraMoon: Home.fromJson(
          json['ultra-sun-ultra-moon'] as Map<String, dynamic>,
        ),
      );
  final DreamWorld icons;
  final Home ultraSunUltraMoon;

  Map<String, dynamic> toJson() => {
        'icons': icons.toJson(),
        'ultra-sun-ultra-moon': ultraSunUltraMoon.toJson(),
      };
}

class DreamWorld {
  DreamWorld({
    required this.frontDefault,
    required this.frontFemale,
  });

  factory DreamWorld.fromJson(Map<String, dynamic> json) => DreamWorld(
        frontDefault: json['front_default'] as String,
        frontFemale: json['front_female'],
      );
  final String frontDefault;
  final dynamic frontFemale;

  Map<String, dynamic> toJson() => {
        'front_default': frontDefault,
        'front_female': frontFemale,
      };
}

class GenerationViii {
  GenerationViii({
    required this.icons,
  });

  factory GenerationViii.fromJson(Map<String, dynamic> json) => GenerationViii(
        icons: DreamWorld.fromJson(
          json['icons'] as Map<String, dynamic>,
        ),
      );
  final DreamWorld icons;

  Map<String, dynamic> toJson() => {
        'icons': icons.toJson(),
      };
}

class Other {
  Other({
    required this.dreamWorld,
    required this.home,
    required this.officialArtwork,
  });

  factory Other.fromJson(Map<String, dynamic> json) => Other(
        dreamWorld: DreamWorld.fromJson(
          json['dream_world'] as Map<String, dynamic>,
        ),
        home: Home.fromJson(
          json['home'] as Map<String, dynamic>,
        ),
        officialArtwork: OfficialArtwork.fromJson(
          json['official-artwork'] as Map<String, dynamic>,
        ),
      );
  final DreamWorld dreamWorld;
  final Home home;
  final OfficialArtwork officialArtwork;

  Map<String, dynamic> toJson() => {
        'dream_world': dreamWorld.toJson(),
        'home': home.toJson(),
        'official-artwork': officialArtwork.toJson(),
      };
}

class Stat {
  Stat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        baseStat: json['base_stat'] as int,
        effort: json['effort'] as int,
        stat: Species.fromJson(
          json['stat'] as Map<String, dynamic>,
        ),
      );
  final int baseStat;
  final int effort;
  final Species stat;

  Map<String, dynamic> toJson() => {
        'base_stat': baseStat,
        'effort': effort,
        'stat': stat.toJson(),
      };
}

class Type {
  Type({
    required this.slot,
    required this.type,
  });

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        slot: json['slot'] as int,
        type: Species.fromJson(
          json['type'] as Map<String, dynamic>,
        ),
      );
  final int slot;
  final Species type;

  Map<String, dynamic> toJson() => {
        'slot': slot,
        'type': type.toJson(),
      };
}
