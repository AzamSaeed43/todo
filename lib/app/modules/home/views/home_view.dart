import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    controller.isSelected(false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.todo_list.length,
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Obx(()=>InkWell(
                    onTap: () {
                      controller.selected[index] = !controller.selected[index];
                    },
                    child: AnimatedContainer(
                      height: controller.selected[index] ? 80.0 : 130.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: controller.selected[index] ? Colors.red : Colors.blue,
                      ),
                      alignment: controller.selected[index]
                          ? Alignment.center
                          : AlignmentDirectional.topCenter,
                      duration: const Duration(seconds: 2),
                      curve: Curves.fastEaseInToSlowEaseOut,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(controller.todo_list[index]['task_name'],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(controller.todo_list[index]['task_status'],style: const TextStyle(color: Colors.white),),
                                    Text(controller.todo_list[index]['task_date'],style: const TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ],
                            ),
                            controller.selected[index] ? const SizedBox() : InkWell(
                              key: controller.myItemKey[index],
                              onTap: () => controller.moveToDetails(controller.myItemKey[index]),
                              child: const Text("See more details",style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),)
                );
              }),
            )
          ],
        ),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black26,
          selectedItemColor: Colors.white,
          items: controller.items),
    );
  }
}
