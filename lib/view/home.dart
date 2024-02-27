import 'package:architecture/data/models/user_model.dart';
import 'package:architecture/domain/user_repository.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late UserModel userModel;
  bool isLoading = true;

  Future<void> loadUser() async {
    userModel = await UserRepository.getUser();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    loadUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Пример чистой архитектуры'),
      ),
      body: isLoading ? 
        const Center(
          child: CircularProgressIndicator()
          )
        : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text('Имя: ${userModel.firstName}'),
            Text('Фамилия: ${userModel.lastName}'),
            Text('Дата входа: ${userModel.logged.toString()}'),

          ]),
        )
    );
  }
}