import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        backgroundColor: Color.fromRGBO(253, 213, 23, 0.3),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://akns-images.eonline.com/eol_images/Entire_Site/2019522/rs_600x600-190622131329-600.michael-keaton-batman.ct.062219.jpg?fit=around|1080:1080&output-quality=90&crop=1080:1080;center,top'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.amber,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://cdn.vox-cdn.com/thumbor/ZpXFF25h5wtSV2Wi3OlihekCIPY=/0x0:1600x1067/1400x1050/filters:focal(0x0:1600x1067):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/45611514/BatmanRobin.0.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
