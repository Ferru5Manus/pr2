import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Хлынин Роман ЭФБО-02-22',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyLoginPage(),
    );
  }
}
class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {

  bool _rememberMe = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Container(
            constraints: const BoxConstraints(
              maxWidth: 400.0,
            ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(top: 140.0),
              child: Center(
                child: Text(
                  "Авторизация",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: 
                Padding(
                    padding: const EdgeInsets.only(top: 128.0, left: 16.0, right: 16.0),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: "Логин",
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey),
                                fillColor: Color.fromRGBO(240, 239, 244, 50),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: "Пароль",
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Color.fromRGBO(240, 239, 244, 50),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Checkbox(
                                value: true,
                                onChanged: null,
                                activeColor: Colors.grey, 
                                checkColor: Colors.white, 
                              ),
                              const Text(
                                "Запомнить меня",
                                style: TextStyle(
                                  color: Colors.grey, 
                                  fontSize: 17
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: SizedBox(
                              width: double.infinity,
                              height: 50.0,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: WidgetStateProperty.all<OutlinedBorder>(
                                      const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                                      ),
                                    ),
                                    backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                                  ),
                                  onPressed: () {
                                  },
                                  child: const Text('Войти', style: TextStyle(fontSize: 17.0, color: Colors.white)),
                                ),
                              ),
                            ),
                          ),
        
                        const SizedBox(height: 20), 
                        Center(
                          child: SizedBox(
                            width: double.infinity,
                            height: 50.0,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: WidgetStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                  ),
                                  side: WidgetStateProperty.all<BorderSide>(
                                    const BorderSide(color: Colors.blue, width: 2.0), // Синий контур
                                  ),
                                ),
                                onPressed: () {
                                },
                                child: const Text('Регистрация', style: TextStyle(fontSize: 17.0, color: Colors.blue)),
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(height: 16.0),
                      const Text('Восстановить пароль', style: TextStyle(fontSize: 20.0, color: Colors.grey)),
                      ],
                    ),
                ),
            ),    
          ],
        ),
        ),
      ),
    );
  }
}

