import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String _linkedin = "https://www.linkedin.com";
  final String _instagram = "https://www.instagram.com/mr.mandz";
  final String _github = "https://github.com/";
  final String _phoneNumber = "+8801972075116";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
             child: Container(
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
               alignment: Alignment.center,
               decoration: const BoxDecoration(
                   gradient: LinearGradient(
                     begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                        colors: [
                          Colors.lightBlueAccent,
                          Colors.blueAccent,
                ],
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage("https://scontent-ccu1-1.xx.fbcdn.net/v/t39.30808-6/343773861_108178688936837_599189624776165337_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFrhco4kRKhq5p0oY7xOB8NRS7ox5w5GKVFLujHnDkYpWxRW-lAvjC12vX-fKZZPnRiA0TpqcuZ-811fzcAZpTM&_nc_ohc=I-_JIybXweUAX9A5Izr&_nc_ht=scontent-ccu1-1.xx&oh=00_AfBHefXB0WBgks7f3SQFw5h-QH50Uk_RnMy0uh7J9ls0iQ&oe=6479D2D2"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Gazi Tamim Hasan",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 28
              ),
              ),
              const Text("Professional Flutter Developer",style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white70,
                  fontSize: 14
              ),
              ),
              const SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              InkWell(
                onTap: ()async{
                  if(await canLaunch(_linkedin)){
                    await launch(_linkedin);
                  }
                },
                child: const Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'Gazi Tamim Hasan',
                      style: TextStyle(
                        color: Colors.black54,
                        // fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: ()async{
                  if(await canLaunch(_instagram)){
                    await launch(_instagram);
                  }
                },
                child: const Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'mr.mandz',
                      style: TextStyle(
                        color: Colors.black54,
                        // fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: ()async{
                  if(await canLaunch(_github)){
                    await launch(_github);
                  }
                },
                child: const Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'mr.mandz',
                      style: TextStyle(
                        color: Colors.black54,
                        // fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: ()async{
                  // // final _call = 'tell:$_phoneNumber';
                  // if(await canLaunch(_phoneNumber)){
                  //   await launch(_phoneNumber);
                  // }
                  launch('tel://$_phoneNumber');
                },
                child: const Text("Contact Here",style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14
                ),
                ),
              )

            ],
              ),
             ),
          ),
        ),
      ),
    );
  }
}
