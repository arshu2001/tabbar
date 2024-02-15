import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Expanded(
         child: ListView.separated(
          itemCount: 6,
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(),
            );
          },
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Black'),
              subtitle: Text('oversized tshirt size XS'),
              leading:  CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/236047/pexels-photo-236047.jpeg?cs=srgb&dl=clouds-cloudy-countryside-236047.jpg&fm=jpg'),),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('17.01.24'),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4,right: 4),
                      child: Text('5'),
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