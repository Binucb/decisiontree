import 'package:bluetrition_helper/model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';
import 'router.dart';

double qFonSize = 24.0;
double oFonSize = 18.0;

TextStyle qStyle = TextStyle(fontSize: qFonSize);
TextStyle oStyle = TextStyle(fontSize: oFonSize);

void main() {
  setPathUrlStrategy();
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      //home: QuestionWidget(question: question, oPressed1: oPressed1, oPressed2: oPressed2),
    );
  }
}

class MainScreen extends StatelessWidget {
  final Map<String, Questions> qData;
  final String qKey;
  const MainScreen({required this.qData, required this.qKey, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Quit Account"),
          actions: [
            IconButton(
                onPressed: (() => context.go('/')),
                icon: const Icon(Icons.home))
          ]),
      body: QuestionWidget(
        question: qData[qKey]!,
      ),
    );
  }
}

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Questions question;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 24,
              ),
              Text(question.qString, style: qStyle),
              const SizedBox(
                height: 24,
              ),
              (question.oTemplate != "NA")
                  ? CopyWidget(
                      temText: question.oTemplate,
                    )
                  : const SizedBox(
                      width: 1,
                    ),
              Center(
                child: Wrap(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var wid in question.oButtons)
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: OptionWidget(oButton: wid),
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CopyWidget extends StatelessWidget {
  final String temText;
  const CopyWidget({required this.temText, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SelectableText(
            temText,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  final OptionButton oButton;
  const OptionWidget({required this.oButton, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          oButton.displayText,
          style: oStyle,
        ),
      ),
      onPressed: () => context.go('/${oButton.qKey}'),
    );
  }
}
