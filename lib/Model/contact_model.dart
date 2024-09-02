class ContactModel {
  final String name;
  final String lastMessageTime;
  final String profileUrl;
  final String lastMessage;
  final String lastSeen;
  final int? noOfMessages;

  const ContactModel({
    required this.name,
    required this.lastMessageTime,
    required this.profileUrl,
    required this.lastMessage,
    required this.lastSeen,
    this.noOfMessages,
  });
}

List<ContactModel> contacts = const [
  ContactModel(
    name: 'Yasir',
    lastMessageTime: 'Last Seen Yesterday',
    profileUrl: 'asssets/yasir.png',
    lastMessage: 'Check my latest mail',
    lastSeen: 'Today',
  ),
  ContactModel(
    name: 'Kami',
    lastMessageTime: 'Last Seen Monday',
    profileUrl: 'asssets/kami.png',
    lastMessage: 'Recieved my parcel',
    lastSeen: 'Monday',
  ),
  ContactModel(
    name: 'Khalid',
    lastMessageTime: 'Online Now',
    profileUrl: 'asssets/khalid.png',
    lastMessage: 'Thanks for having You sir❤️',
    lastSeen: 'Online',
    noOfMessages: 1,
  ),
  ContactModel(
    name: 'Haider',
    lastMessageTime: 'Last Seen Just Now',
    profileUrl: 'asssets/haider.png',
    lastMessage: 'MashaAllah',
    lastSeen: '9:04',
    noOfMessages: 3,
  ),
  ContactModel(
    name: 'Nabeel',
    lastMessageTime: 'Online Now',
    profileUrl: 'asssets/nabeel.png',
    lastMessage: 'Hacker sab',
    lastSeen: 'Online',
  ),
  ContactModel(
    name: 'Nasir',
    lastMessageTime: 'Last Seen Friday',
    profileUrl: 'asssets/nasir.png',
    lastMessage: 'Cricket star',
    lastSeen: 'Friday',
    noOfMessages: 23,
  ),
];
