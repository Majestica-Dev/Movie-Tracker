import 'dart:convert';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/material.dart';
import 'package:majestica_ds/majestica_ds.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final openAI = OpenAI.instance.build(
      token: token,
      baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 5)),
      enableLog: true,
    );

    // TODO
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: PrimaryButton(
              onPressed: () async {
                final request = ChatCompleteText(
                    messages: [
                      Messages(
                        role: Role.user,
                        content:
                            "Based on my favorite movies 'Inception,' 'The Matrix,','Interstellar,' and my mood being 'Excited,' recommend some movies I might enjoy, including cover image URLs. in json format",
                      ).toJson(),
                    ],
                    maxToken: 200,
                    model: ChatModelFromValue(model: 'gpt-4o-mini'));

                final response =
                    await openAI.onChatCompletion(request: request);

                log(response!.toJson().toString());

                for (var element in response!.choices) {
                  print("data -> ${element.message?.content}");
                }
              },
              text: 'Text',
            ),
          )
        ],
      ),
    );
  }
}

final token =
    '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';
