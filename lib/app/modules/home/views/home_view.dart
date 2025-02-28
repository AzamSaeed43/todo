import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    controller.isSelected(false);
    return Obx(()=>Scaffold(
        body: PageView(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: controller.pages,
        ),
        floatingActionButton: Obx(()=>AnimatedAlign(
          alignment: controller.isSelected.value ? Alignment.center : Alignment.bottomRight,
          duration: controller.duration,
          curve: controller.curve,
          child: InkWell(
            onTap: ()=> controller.moveToAddTask(),
            child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(10),
                child: controller.isSelected.value ? const Icon(Icons.open_with_sharp,color: Colors.blueAccent,) : const Icon(CupertinoIcons.add_circled,color: Colors.blueAccent,)),
          ),
        )),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(controller.icons.length, (index){
                bool isSelected = controller.selectedIndex.value == index;
                return GestureDetector(
                  onTap: ()=> controller.onItemTap(index),
                  child: AnimatedContainer(duration: const Duration(seconds: 2),
                    padding: EdgeInsets.symmetric(vertical: isSelected ? 8 : 4),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedContainer(duration: const Duration(seconds: 2),
                          height: isSelected ? 8 : 0,
                          width: 8,
                          decoration: const BoxDecoration(
                              color: Colors.blueAccent,
                              shape: BoxShape.circle
                          ),
                          curve: Curves.easeInToLinear,
                        ),
                        const SizedBox(height: 5,),
                        Icon(
                          controller.icons[index],
                          size: isSelected ? 30 : 24,
                          color: isSelected ? Colors.blueAccent : Colors.grey,
                        ),
                        const SizedBox(height: 5,),
                        TweenAnimationBuilder(tween: Tween<double>(begin: isSelected ? 0.8 : 0.5,
                        end: isSelected ? 1.0 : 0.5), duration: const Duration(seconds: 2), builder: (context,double scale,child){
                          return Transform.scale(
                            scale: scale,
                            child: Text(controller.iconLabel[index],
                            style: TextStyle(
                              color: isSelected ? Colors.blueAccent : Colors.grey,
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal
                            ),),
                          );
                        })
                      ],
                    ),),
                );
              })
          ),
        )
    ));
  }
}
