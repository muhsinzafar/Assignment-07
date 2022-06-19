import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  State<ToDoApp> createState() => _homeState();
}

class _homeState extends State<ToDoApp> {
  var listViewItem = [];
  TextEditingController myvalue = TextEditingController();
  addItemAction() {
    setState(() {
      listViewItem.add(myvalue.text);
    });
    myvalue.clear();
  }

  deleteItem(abc) {
    setState(() {
      listViewItem.removeAt(abc);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
                child: SizedBox(
              width: 200,
              child: TextField(
                controller: myvalue,
              ),
            )),
            ElevatedButton(
                onPressed: () {
                  addItemAction();
                },
                child: const Text("Add Items")),
            Expanded(
              child: ListView.builder(
                itemCount: listViewItem.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(listViewItem[index]),
                  trailing: Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            deleteItem(index);
                          },
                          icon: const Icon(Icons.delete)),
                      IconButton(
                        onPressed: () {
                          addItemAction();
                        },
                        icon: const Icon(Icons.update),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
