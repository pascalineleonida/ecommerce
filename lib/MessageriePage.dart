import 'package:flutter/material.dart';

List message=[

];
class messagerie extends StatefulWidget {
  dynamic e;
   messagerie({super.key,this.e});

  @override
  State<messagerie> createState() => _messagerieState();
}

class _messagerieState extends State<messagerie> {

  bool value= true;

  @override
  Widget build(BuildContext context) {

    final sms= TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.e['nom'].toString(),style: TextStyle(fontSize: 15)),
      ),
      body: Container(
        child: Column(
          children: message.map((e) => Padding(
            padding:  EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if(widget.e['nom'].toString()== e['usersend'].toString())
                Row(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage(e['image'])),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(e['nom'].toString()),
                    ),
                  ],
                ),
                if(widget.e['nom'].toString()== e['usersend'].toString())
                Row(
                  children: [
                    Text(e['heure']),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: (){
                            setState(() {
                              message.remove(e);
                            });
                          },
                          child: Icon(e['icon'])),
                    )
                  ],
                ),
              ],
            ),
          ),).toList(),
        ),
      ),
      bottomSheet: Container(
        height: 80,
        alignment: Alignment.center,
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            controller: sms,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                    Icons.emoji_emotions_outlined),
                hintText: 'message',suffixIcon: GestureDetector(onTap: (){
              setState(() {
                message.add(
                    {
                      'nom':sms.text,
                      'image':'Images/avatar/a.jpg',
                      'heure':DateTime.now().hour.toString()+'.'+DateTime.now().minute.toString(),
                      'icon':Icons.check,
                      'usersend':widget.e['nom'].toString(),
                    }
                );
              });
            },
                child: Icon(Icons.send))),
          ),
        ),
      ),
    );
  }
}
