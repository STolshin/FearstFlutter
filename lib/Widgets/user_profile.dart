
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {

  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Настройки'),),
      body: Container(
        width: double.infinity,
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            _AvatarWidget(),
            SizedBox(height: 30,),
            _TextWidget(),
            SizedBox(height: 10,),
            _UserPhoneWidget(),
            SizedBox(height: 10,),
            _UserEmailWidget(),
          ],
        ),
      ),
    );
  }
}

class _UserEmailWidget extends StatelessWidget {
  const _UserEmailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        'Stolshin@yandex.ru',
         style: TextStyle(
             color: Colors.black,
             backgroundColor: Colors.amber,
             fontSize: 20,
             fontWeight: FontWeight.w400,
           letterSpacing: 0
         ),
        );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('8 (912) 2797806',
      style: TextStyle(
          color: Colors.green,
          fontSize: 17,
          fontWeight: FontWeight.w400,
          letterSpacing: 0
      ),);
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Сергей <RED_BULL> Толшин',
      style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          letterSpacing: 0
      ),);
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,

        child: Placeholder());
  }
}
