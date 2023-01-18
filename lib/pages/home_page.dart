import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Shop32",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'avenir',
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.view_list_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.grid_view),
                ),
              ],
            ),
          ),
          Expanded(
              child:GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16),
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  );
                },
              ),)
        ],
      ),
    );
  }
}
