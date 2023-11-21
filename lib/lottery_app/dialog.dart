import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PopupDialog extends StatelessWidget {
  const PopupDialog({
    super.key,
    required this.title2,
    required this.number2,
  });
  final String title2;
  final String number2;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: 380,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$title2번째 추첨 번호",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                number2,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Lottie.asset('lottie/cat.json'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 50)), // 버튼의 가로, 세로 사이즈 지정
                child: const Text("Close"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
