import 'package:flutter/material.dart';
import 'package:status_alert/status_alert.dart';
main(){
  runApp(MaterialApp(home: StatusAlertScreen(),));
}
class StatusAlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Status Alert')),
      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (_, __) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(image: AssetImage("assets/image/Anime/chopper.png"),),
            ),
            title: Text('TONY TONY CHOPPER'),
            subtitle: Text('1000 Berry'),
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                StatusAlert.show(
                  context,
                  duration: Duration(seconds: 2),
                  maxWidth: 260,
                  title: 'Loved',
                  subtitle: 'I JUST LOVED IT',
                  configuration: IconConfiguration(icon: Icons.favorite_border),
                );
              },
            ),
          );
        },
      ),
    );
  }
}