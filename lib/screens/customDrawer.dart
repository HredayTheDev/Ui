import 'package:appbar_design/screens/person.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomDrawer(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: InkWell(
        splashColor: Colors.deepOrange,
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Person()));
        },
        child: Container(
          //  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),

          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 2))),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_right,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
