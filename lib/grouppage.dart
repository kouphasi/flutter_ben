import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';

class GroupPage extends StatelessWidget {
  const GroupPage( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザーネームの入力'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              '$usernameさんのグループは...',
              style: const TextStyle(
                fontSize: 20
                ),
            ),

            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3.0,
                  color: Colors.indigo),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 350,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                    'assets/images/neko.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    width:10
                  ),
                  ClipOval(
                    child: Image.asset(
                    'assets/images/saru.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.fill,
                    ),
                  ), 
                  const SizedBox(
                    width:10
                  ),
                  ClipOval(
                    child: Image.asset(
                    'assets/images/usagi.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    width:10
                  ),
                  ClipOval(
                    child: Image.asset(
                    'assets/images/grey.jpg',
                    width: 60,
                    height: 60,
                    fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    width:10
                  ),
                  ClipOval(
                    child: Image.asset(
                    'assets/images/grey.jpg',
                    width: 60,
                    height: 60,
                    fit: BoxFit.fill,
                    ),
                  ),
                ],
                )
              ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage()),
                );
              }, 
              child: const Text('グループに参加してはじめる')
              )
          ],
        ),
      ),
    );
  }
}