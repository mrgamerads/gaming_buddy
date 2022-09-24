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
final User samuel = User(id: 5, name: 'Samuel', imageUrl: 'lib/src/imgs/img_perfil/sam.jpg');
final User sofia = User(id: 6, name: 'Sofia', imageUrl: 'lib/src/imgs/img_perfil/sophia.jpg');
final User fernando = User(id: 7, name: 'Fernando', imageUrl: 'lib/src/imgs/img_perfil/steven.jpg');

// FAVORITE CONTACTS
List<User> favorites = [samuel, fernando, olivia, joao, matheus];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: joao,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: marcos,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sofia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: fernando,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: samuel,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: matheus,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: joao,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: joao,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: joao,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: joao,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
