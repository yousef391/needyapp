import 'package:flutter/material.dart';
import 'package:sign_in/home/chat.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _body(),
          ],
        ),
      ),
    );
  }


  Widget _body() {
    return Expanded(
      
      child: Container(// ajout de padding vertical et horizontal

        color: Colors.white, //Définir la couleur de fond blanche ici

        child: ListView(
          children: [

            _itemChats(
              avatar: 'images/c2.jpg',
              name: 'Meriem',
              chat:
                  'you are always welcome',
              time: '08:10',
            ),
            _itemChats(
              avatar: 'images/is.jpg',
              name: 'islem',
              chat: 'why not',
              time: '09:19',
            ),
            _itemChats(
              avatar: 'images/c3.jpg',
              name: 'youcef',
              chat: 'Can you lower the price a little ? It didnt help me',
              time: '11:53',
            ),
            _itemChats(
              avatar: 'images/cc.jpg',
              name: 'yousef',
              chat: 'thanks',
              time: '12:39',
            ),
            _itemChats(
              avatar: 'images/c1.jpg',
              name: 'fatima',
              chat:
                  'saha ftorek',
              time: '14:09',
            ),
            _itemChats(
              avatar: 'images/c0.jpg',
              name: 'ibrahim',
              chat:
                  'saha shorek',
              time: '14:59',
            ),
            _itemChats(
              avatar: 'images/c5.jpg',
              name: 'houda',
              chat:
                  'saha aidek',
              time: '16:10',
            ),
            _itemChats(
              avatar: 'images/cv.jpg',
              name: 'soulaymen',
              chat:
                  'It didnt work for me',
              time: '16:15',
            ),
             _itemChats(
              avatar: 'images/c7.jpg',
              name: 'said',
              chat:
                  'how much is it?',
              time: '17:17',
            ),
             _itemChats(
              avatar: 'images/c8.jpg',
              name: 'mohamed',
              chat:
                  'Idk',
              time: '18:10',
            ),
             _itemChats(
              avatar: 'images/c4.jpg',
              name: 'soumia',
              chat:
                  'thank u very much its really help me',
              time: '20:00',
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemChats(
      {String avatar = '', name = '', chat = '', time = '00.00'}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ChatPage(),
          ),
        );
      },
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Color.fromARGB(90, 158, 158, 158),
            width: 0.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            
            children: [
              Avatar(
                margin: EdgeInsets.only(right: 15),
                size: 60,
                image: avatar,

                
              ),
              Expanded(
                
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '$name',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ), 
                        
                        Text(
                          
                            '$time',
                            
                            style: TextStyle(

                                color: Colors.grey, fontWeight: FontWeight.bold),
                          ),
                        
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$chat',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final double size;
  final image;
  final EdgeInsets margin;
  Avatar({this.image, this.size = 50, this.margin = const EdgeInsets.all(0)});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          image,
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
