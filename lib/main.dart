import 'package:flutter/material.dart';

main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          title: Text(
            "My Cart",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.delete,
              color: Colors.black,
            ),
          ],
        ),
        body: Container(
          color: Colors.white,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage("https://i.pravatar.cc/150?img=$index"),
                  ),
                  title: Text("Product Name"),
                  subtitle: Text("\$120.00"),
                  trailing: Column(
                    children: [
                      Flexible(
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text("-"),
                          ),
                        ),
                      ),
                      Expanded(child: Text("1")),
                      Expanded(
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade100,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text("+"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider()
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -5),
                color: Colors.black12,
                blurRadius: 10,
              ),
            ],
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$420.00"),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      Text(
                        "Check out",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
