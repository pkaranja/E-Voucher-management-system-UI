import 'package:flutter/material.dart';

class bottomAppBar extends StatelessWidget {
  const bottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          color: Color(0xFF313131).withOpacity(0.7),
          height: 50,
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/');
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/discover');
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/mybookings');
                },
                icon: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/user');
                },
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
