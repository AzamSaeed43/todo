import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task_view_controller.dart';

class TaskViewView extends GetView<TaskViewController> {
  const TaskViewView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks'),
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
                                      Hero(
                                        tag: 'hero_tag_$index',
                                        child: SizedBox(
                                          width: 24,
                                          height: 24,
                                          child: Image.asset('assets/images/person.png')),
                                      ),
                                      Text(controller.todo_list[index]['task_name'],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(controller.todo_list[index]['task_status'],style: const TextStyle(color: Colors.white),),
                                          Text(controller.todo_list[index]['task_date'],style: const TextStyle(color: Colors.white),)
                                        ],
                                      ),
                                      AnimatedRotation(turns: !controller.selected[index] ? 0.5 : 0, duration: const Duration(seconds: 1),
                                        child: const Icon(Icons.keyboard_arrow_down),)
                                    ],
                                  ),
                                  controller.selected[index] ? const SizedBox() : InkWell(
                                    key: controller.myItemKey[index],
                                    onTap: () => controller.moveToDetails(controller.myItemKey[index],index),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                        child: const Text("See more details",style: TextStyle(color: Colors.white))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
