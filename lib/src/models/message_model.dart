import 'package:gaming_buddy/src/models/user_model.dart';

class Message {
  final User sender;
  final String time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  }
  );
}

// YOU - current user
final User currentUser =
User(id: 0, name: 'Current User', imageUrl: 'lib/src/imgs/img_perfil/greg.jpg');

// USERS
final User matheus = User(id: 1, name: 'Matheus', imageUrl: 'lib/src/imgs/img_perfil/greg.jpg');
final User joao = User(id: 2, name: 'João', imageUrl: 'lib/src/imgs/img_perfil/james.jpg');
final User marcos = User(id: 3, name: 'Marcos', imageUrl: 'lib/src/imgs/img_perfil/john.jpg');
final User olivia = User(id: 4, name: 'Olivia', imageUrl: 'lib/src/imgs/img_perfil/olivia.jpg');
final User maria = User(id: 5, name: 'Maria', imageUrl: 'lib/src/imgs/img_perfil/sam.jpg');
final User sofia = User(id: 6, name: 'Sofia', imageUrl: 'lib/src/imgs/img_perfil/sophia.jpg');
final User fernando = User(id: 7, name: 'Fernando', imageUrl: 'lib/src/imgs/img_perfil/steven.jpg');

// FAVORITE CONTACTS
List<User> favorites = [maria, fernando, olivia, joao, matheus];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: joao,
    time: '5:30 PM',
    text: 'Boa noite. Sábado estou livre para jogar.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'Oie, tudo bem? A gente já está te esperando no esquadrão.',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: marcos,
    time: '3:30 PM',
    text: 'Opa man, vou me atrasar um pouco, cê me espera né?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sofia,
    time: '2:30 PM',
    text: 'Nossa olha isso que o Marcos me enviou hoje kkkkkkk',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: fernando,
    time: '1:30 PM',
    text: 'Fala grande, blz? Ow tem vaga ai nesse squad pra amanhã no Destiny 2?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: maria,
    time: '12:30 PM',
    text: 'Oie <3. To doidinha pra jogar Gears, bora?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: matheus,
    time: '11:30 AM',
    text: 'Ow doido, não esquece de fazer aquela raid marota comigo hoje',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: joao,
    time: '1:30 PM',
    text: '10/10 fechado então :)',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:00 PM',
    text: 'Perfeito, combinado então, vou avisar a galera',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: joao,
    time: '2:05 PM',
    text: 'vou levar minha mãe na casa da amiga dela de carro, daí umas 4PM devo estar livre',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: joao,
    time: '2:15 PM',
    text: 'Então...',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Pow massa! Que horas mais ou menos?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: joao,
    time: '3:00 PM',
    text: 'Boa noite. Sábado estou livre para jogar.',
    isLiked: false,
    unread: true,
  ),
];
