import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

import '../../Model/contact_model.dart';

class PersonalChatTry extends StatefulWidget {
  final String profileUrl;
  final String name;
  final List<ContactModel> contacts;

  const PersonalChatTry({
    super.key,
    required this.profileUrl,
    required this.name,
    required this.contacts,
  });

  @override
  State<PersonalChatTry> createState() => _PersonalChatTryState();
}

class _PersonalChatTryState extends State<PersonalChatTry> {
  var _otherUserName = '';
  var profileUrl = '';
  late ChatUser Kami;
  List<ChatMessage> messages = [];

  @override
  void initState() {
    super.initState();
    Kami = ChatUser(id: '2', firstName: _otherUserName);
    _otherUserName = widget.name;
    messages = <ChatMessage>[
      ChatMessage(
        text: "Hello, how are you?",
        user: ChatUser(
          id: '1',
          firstName: 'yasir',
          profileImage: 'asssets/kami.png',
        ),
        createdAt: DateTime.now().subtract(const Duration(minutes: 5)),
      ),
      ChatMessage(
        text: "Click here ",
        user: ChatUser(id: '1', firstName: _otherUserName),
        createdAt: DateTime.now().subtract(const Duration(minutes: 4)),
        replyTo: ChatMessage(
          text: "I'm good, thank you! How about you?",
          user: ChatUser(id: '2', firstName: _otherUserName),
          createdAt: DateTime.now().subtract(const Duration(minutes: 4)),
        ),
      ),
      ChatMessage(
        text: "I'm good, thank you! How about you?",
        user: ChatUser(id: '2', firstName: _otherUserName),
        createdAt: DateTime.now().subtract(const Duration(minutes: 4)),
      ),
      ChatMessage(
        text: "Doing great! What’s up?",
        user: ChatUser(
          id: '1',
          firstName: 'yasir',
          profileImage: 'asssets/kami.png',
        ),
        createdAt: DateTime.now().subtract(const Duration(minutes: 3)),
      ),
      ChatMessage(
        text: "Not much, just working on some Flutter projects.",
        user: ChatUser(id: '2', firstName: _otherUserName),
        createdAt: DateTime.now().subtract(const Duration(minutes: 2)),
      ),
      ChatMessage(
        text: "That sounds interesting. Need any help @yasir ?",
        user: ChatUser(
          id: '1',
          firstName: 'yasir',
          profileImage: 'asssets/kami.png',
        ),
        mentions: [
          Mention(title: '@yasir'),
        ],
        createdAt: DateTime.now().subtract(const Duration(minutes: 1)),
      ),
      ChatMessage(
        user: ChatUser(
          id: '1',
          firstName: 'yasir',
          profileImage: 'asssets/kami.png',
        ),
        text: 'What I am doing it rn.',
        createdAt: DateTime.now(),
        quickReplies: <QuickReply>[
          QuickReply(title: 'That sounds interesting. Need any help?'),
          QuickReply(title: 'Awesome'),
        ],
      ),
      ChatMessage(
        text: "Bullshit, you are bluffing.",
        user: ChatUser(id: '2', firstName: _otherUserName),
        createdAt: DateTime.now().subtract(const Duration(minutes: 2)),
      ),
      ChatMessage(
        text: "get this",
        user: ChatUser(id: '2', firstName: _otherUserName),
        createdAt: DateTime.now().subtract(const Duration(minutes: 2)),
        medias: <ChatMedia>[
          ChatMedia(
            url:
                'https://firebasestorage.googleapis.com/v0/b/molteo-40978.appspot.com/o/memes%2F155512641_3864499247004975_4028017188079714246_n.jpg?alt=media&token=0b335455-93ed-4529-9055-9a2c741e0189',
            type: MediaType.image,
            fileName: 'image.png',
            isUploading: false,
          ),
          ChatMedia(
            url:
                'https://firebasestorage.googleapis.com/v0/b/molteo-40978.appspot.com/o/chat_medias%2F2GFlPkj94hKCqonpEdf1%2F20210526_162318.mp4?alt=media&token=01b814b9-d93a-4bf1-8be1-cf9a49058f97',
            type: MediaType.video,
            fileName: 'video.mp4',
            isUploading: false,
          ),
          ChatMedia(
            url:
                'https://firebasestorage.googleapis.com/v0/b/molteo-40978.appspot.com/o/memes%2F155512641_3864499247004975_4028017188079714246_n.jpg?alt=media&token=0b335455-93ed-4529-9055-9a2c741e0189',
            type: MediaType.file,
            fileName: 'my-report.docx',
            uploadedDate: DateTime.now(),
          ),
        ],
      ),
      ChatMessage(
        isMarkdown: true,
        text: "'''<h1> Title </h1>'''",
        user: ChatUser(id: '1', firstName: _otherUserName),
        createdAt: DateTime.now().subtract(const Duration(minutes: 2)),
      ),
      ChatMessage(
        text: 'How you doing bud, LOOKING FOR YOU?',
        user: ChatUser(id: '2', firstName: _otherUserName),
        createdAt: DateTime.now(),
        quickReplies: <QuickReply>[
          QuickReply(title: 'Great!'),
          QuickReply(title: 'Awesome'),
        ],
        replyTo: ChatMessage(
          text: "Here rn",
          user: ChatUser(id: '1', firstName: _otherUserName),
          createdAt: DateTime.now().subtract(const Duration(minutes: 2)),
        ),
      ),
    ];
  }

  ChatUser myself = ChatUser(
    id: '1',
    firstName: 'yasir',
    profileImage: 'asssets/kami.png',
  );

  // ChatUser khalid = ChatUser(id: '3', firstName: 'Khalid');
  List<ChatUser> _typing = <ChatUser>[];

  getdata(ChatMessage m) async {
    _typing.add(Kami);
    messages.insert(0, m);
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));

    ChatMessage data = ChatMessage(
      text: "Hi, How are you?",
      user: Kami,
      createdAt: DateTime.now(),
    );

    messages.insert(0, data);
    _typing.remove(Kami);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        backgroundColor: Colors.grey.withOpacity(0.3),
      ),
      body: DashChat(
        quickReplyOptions: QuickReplyOptions(onTapQuickReply: (QuickReply r) {
          final ChatMessage m = ChatMessage(
            user: myself,
            text: r.value ?? r.title,
            createdAt: DateTime.now(),
          );
          setState(() {
            messages.insert(0, m);
          });
        }),
        messageListOptions: const MessageListOptions(
          separatorFrequency: SeparatorFrequency.hours,
          showDateSeparator: true,
        ),
        typingUsers: _typing,
        currentUser: myself,
        messages: messages,
        inputOptions: const InputOptions(
          alwaysShowSend: false,
          cursorStyle: CursorStyle(
            color: Colors.black,
          ),
          autocorrect: true,
        ),
        messageOptions: MessageOptions(
          currentUserContainerColor: Colors.blue,
          avatarBuilder: youravatorbuilder,
          showOtherUsersName: true,
          showTime: true,
        ),
        onSend: (ChatMessage m) {
          getdata(m);
        },
      ),
    );
  }

  Widget youravatorbuilder(
      ChatUser user, Function? onAvatorTap, Function? onAvatorLongPress) {
    return Center(
      child: CircleAvatar(
        radius: 18,
        backgroundImage: AssetImage(
          widget.profileUrl,
        ),
      ),
    );
  }
}
