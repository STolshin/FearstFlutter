
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {

  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(
          child: Text('Настройки',
      ),
        ),
    ),
      body: Container(
        width: double.infinity,
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _UserInfo(),
            SizedBox(height: 30,),
            _MenuWidget(),
          ],
        ),
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {

   _MenuWidget({Key? key}) : super(key: key);
    List<Data> list = [Data(text: 'Избранное',icon: Icons.favorite),
                       Data(text: 'Звонки',icon: Icons.call),
                       Data(text: 'Устройства',icon: Icons.computer),
                       Data(text: 'Папкас чатами',icon: Icons.folder),];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(children:
          list.map((element) => _MenuWidgetRow(data: element.icon, text: element.text)).toList()
        //list.map((element) => _MenuWidgetRow(data: element.icon, text: element.text)).toList()

      ),
    );
  }
}


class Data {
  final String text;
  final IconData icon;

  Data({required this.text, required this.icon});
}
class _MenuWidgetRow extends StatelessWidget {

  final String text;
  final IconData data;

  const _MenuWidgetRow({Key? key, required this.text, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data),
          SizedBox(width: 15,),
          Expanded(child: Text(text)),
          Icon(Icons.chevron_right),
        ],),
    );
  }
}



class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(children: [
        SizedBox(height: 30,),
        _AvatarWidget(),
        SizedBox(height: 30,),
        _TextWidget(),
        SizedBox(height: 10,),
        _UserPhoneWidget(),
        SizedBox(height: 10,),
        _UserEmailWidget(),],),
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
             fontSize: 17,
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
