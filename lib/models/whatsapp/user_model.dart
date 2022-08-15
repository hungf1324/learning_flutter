import 'package:learning_flutter/models/whatsapp/message_model.dart';

class UserModel {
  final String userName;
  String avatarUrl;
  List<MessageModel>? messages;
  final bool hasNewStory;

  UserModel({
    required this.userName,
    required this.avatarUrl,
    this.messages,
    this.hasNewStory = false,
  });
}

List<UserModel> usersList = [
  UserModel(
    userName: 'Annupriya',
    avatarUrl: "https://cdn-icons-png.flaticon.com/512/147/147135.png",
    messages: <MessageModel>[
      MessageModel(
        message: 'Annupriya\'s message',
        timeSent: "9Am",
      ),
    ],
    hasNewStory: true,
  ),
  UserModel(
    userName: 'dev',
    avatarUrl: "https://cdn-icons-png.flaticon.com/512/147/147133.png",
    messages: <MessageModel>[
      MessageModel(
        message: 'dev\'s message',
        timeSent: "8Am",
        hasBeenSeen: true,
      ),
    ],
    hasNewStory: true,
  ),
  UserModel(
    userName: 'Pujali',
    avatarUrl: "https://cdn-icons-png.flaticon.com/512/147/147131.png",
    messages: <MessageModel>[
      MessageModel(
        message: 'Pujali\'s message',
        timeSent: "6Am",
        hasBeenSeen: true,
      ),
    ],
    hasNewStory: true,
  ),
  UserModel(
    userName: 'Dipen',
    avatarUrl: "https://cdn-icons-png.flaticon.com/512/168/168724.png",
    messages: <MessageModel>[
      MessageModel(
        message: 'Dipen\'s message',
        timeSent: "Yesterday",
      ),
    ],
    hasNewStory: true,
  ),
  UserModel(
    userName: 'Unknow Users',
    avatarUrl: "https://cdn-icons-png.flaticon.com/512/147/147132.png",
    messages: <MessageModel>[
      MessageModel(
        message: 'Unknow Users\'s message',
        timeSent: "Yesterday",
      ),
    ],
  ),
  UserModel(
    userName: 'Anjila',
    avatarUrl: "https://cdn-icons-png.flaticon.com/512/147/147143.png",
    messages: <MessageModel>[
      MessageModel(
        message: 'Anjila\'s message',
        timeSent: "San20",
        hasBeenSeen: true,
      ),
    ],
    hasNewStory: true,
  ),
  UserModel(
    userName: 'Another Unknow Users',
    avatarUrl: "https://cdn-icons-png.flaticon.com/512/147/147130.png",
    messages: <MessageModel>[
      MessageModel(
        message: 'Another Unknow Users\'s message',
        timeSent: "San20",
      ),
    ],
  ),
];
