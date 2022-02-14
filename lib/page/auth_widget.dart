import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Увійдіть в свій профіль'),
      ),
      body: ListView(
        children: [
          _HeaderWidget(),
          SizedBox(height: 15),
          _FormWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(
              'Щоб отримати додаткові можливості при роботі з застосунком необхідно увійти до свого профілю'),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  _FormWidget({Key? key}) : super(key: key);

  @override
  __FormWidgetState createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Text('Ім\'я кориcтувача'),
          TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          Text('Пароль'),
          TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
            obscureText: true,
          ),
          Row(
            children: [
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
                onPressed: () {},
                child: Text('Увійти'),
              ),
              SizedBox(width: 30),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.blue),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
                onPressed: () {},
                child: Text('Скинути пароль'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

