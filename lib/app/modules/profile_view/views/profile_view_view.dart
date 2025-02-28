import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_view_controller.dart';

class ProfileViewView extends GetView<ProfileViewController> {
  const ProfileViewView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProfileViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
