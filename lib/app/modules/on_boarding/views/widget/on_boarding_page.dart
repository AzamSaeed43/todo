import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/app/routes/app_pages.dart';

class OnboardingPage extends StatelessWidget {
  final String imageUrl;
  final String text;
  final bool isActive;
  final int index;

  const OnboardingPage({super.key,
    required this.imageUrl,
    required this.text,
    required this.isActive,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: isActive ? 1.0 : 0.2,
          child: Image.network(imageUrl, height: MediaQuery.of(context).size.height),
        ),
        const SizedBox(height: 20),
        Positioned(
          bottom: 130,
          right: 20,
          child: TweenAnimationBuilder(
            duration: index==0 ? const Duration(seconds: 8) : const Duration(seconds: 2),
            tween: Tween<double>(begin: isActive ? 0.8 : 0.5, end: isActive ? 1.0 : 0.5),
            builder: (context, double scale, child) {
              return Transform.scale(
                scale: scale,
                child: InkWell(
                  onTap: (){
                    if(index==2){
                      Get.toNamed(Routes.HOME);
                    }
                  },
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}