import 'package:flutter/material.dart';
import 'package:learning_flutter/constants/custom_colors.dart';
import 'package:learning_flutter/models/whatsapp/user_model.dart';
import 'package:learning_flutter/styles/text_style.dart';

class WhatsAppPage extends StatelessWidget {
  const WhatsAppPage({Key? key}) : super(key: key);
  static String routeName = "WhatsAppPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.darkGreen,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("WhatsApp Clone"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 150,
              child: WAStories(),
            ),
            Expanded(
              child: MessagesPannel(),
            ),
          ],
        ),
      ),
    );
  }
}

class WAStories extends StatelessWidget {
  const WAStories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<UserModel> newStoriers =
        usersList.where((user) => user.hasNewStory == true).toList();
    return ListView.builder(
      padding: const EdgeInsets.all(20.0),
      itemCount: newStoriers.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  maxRadius: 35,
                  backgroundImage: NetworkImage(newStoriers[index].avatarUrl),
                ),
              ),
              Text(
                newStoriers[index].userName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        );
      },
      scrollDirection: Axis.horizontal,
    );
  }
}

class MessagesPannel extends StatelessWidget {
  const MessagesPannel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView.builder(
        itemCount: usersList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: SizedBox(
              height: 120,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 15.0,
                      top: 15.0,
                      right: 10.0,
                    ),
                    child: CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: NetworkImage(usersList[index].avatarUrl),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          usersList[index].userName,
                          style: CustomTextStyle.titleStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          usersList[index].messages!.last.message,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(usersList[index].messages!.last.timeSent),
                      const SizedBox(height: 10),
                      usersList[index].messages!.last.hasBeenSeen == true
                          ? const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            )
                          : const Icon(
                              Icons.check_circle_outline,
                              color: Colors.grey,
                            ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
