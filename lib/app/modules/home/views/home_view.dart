import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
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
                  child: Container(decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                    padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(controller.todo_list[index]['task_name'],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(controller.todo_list[index]['task_status'],style: const TextStyle(color: Colors.white),),
                            Text(controller.todo_list[index]['task_date'],style: const TextStyle(color: Colors.white),)
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: controller.items),
    );
  }
}
