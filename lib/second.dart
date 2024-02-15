import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List name = ['Arshad','Favas','Fuaad','shakir','shibin'];
  List sub =  ['enthalla', 'how are you', 'daa', 'enthh', 'oook'];
  List date = ['8:13','6:00','5:45','12:13','1.15.24'];
  List msg = ['4','8','45','8','54'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Expanded(
         child: ListView.separated(
          itemCount: name.length,
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(),
            );
          },
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                name[index],
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
              subtitle: Text(sub[index]),
              leading:  CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/236047/pexels-photo-236047.jpeg?cs=srgb&dl=clouds-cloudy-countryside-236047.jpg&fm=jpg'),),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(date[index]),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4,right: 4),
                      child: Text(msg[index]),
                    ),
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green),
                  )

                ],
              ),
         
            );
          },
         
         ),
       ),
    );
  }
}