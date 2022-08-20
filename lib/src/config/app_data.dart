import 'package:gaming_buddy/src/models/item_model.dart';

ItemModel eldenRing = ItemModel(
  description: 'Xbox/Playstation/PC',
  imgUrl: 'lib/src/imgs/img_jogos/download.jpg',
  itemName: 'Elden Ring',
);

ItemModel assassinsCreed = ItemModel(
  description: 'Xbox/Playstation/PC',
  imgUrl: 'lib/src/imgs/img_jogos/ac_valhalla.png',
  itemName: 'Assassins Creed Vallhala',
);

ItemModel farCry = ItemModel(
  description: 'Xbox/Playstation/PC',
  imgUrl: 'lib/src/imgs/img_jogos/far_cry_6.png',
  itemName: 'FarCry 6',
);

ItemModel destiny = ItemModel(
  description: 'Xbox/Playstation/PC',
  imgUrl: 'lib/src/imgs/img_jogos/destiny-2-game-destiny-logo.jpg',
  itemName: 'Destiny 2',
);

ItemModel zelda = ItemModel(
    itemName: 'Zelda Breath of The Wild',
    imgUrl: 'lib/src/imgs/img_jogos/197480.jpg',
    description: 'Nintendo Switch'
);

ItemModel cod = ItemModel(
    itemName: 'COD Warzone',
    imgUrl: 'lib/src/imgs/img_jogos/call_of_duty_warzone.jpg',
    description: 'Xbox/Playstation/PC'
);

ItemModel valorant = ItemModel(
    itemName: 'Valorant',
    imgUrl: 'lib/src/imgs/img_jogos/valorant-logo-FAB2CA0E55-seeklogo.com.png',
    description: 'PC'
);

ItemModel horizon = ItemModel(
    itemName: 'Horizon: Forbidden West',
    imgUrl: 'lib/src/imgs/img_jogos/Horizon-Forbidden-West-titulo.jpg',
    description: 'Playstation'
);


List<ItemModel> items = [
  eldenRing,
  assassinsCreed,
  farCry,
  destiny,
  zelda,
  cod,
  valorant,
  horizon,
];

List<String> categories = [
  'Ação',
  'Aventura',
  'RPG',
  'FPS',
  'Battle Royale',
  'Terror',
  'MMORPG',
];

