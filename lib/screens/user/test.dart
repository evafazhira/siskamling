import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(Test());
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CRUD Without Database',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyDataController extends GetxController {
  final data = <String>[].obs;

  @override
  void onInit() {
    loadData();
    super.onInit();
  }

  Future<void> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    data.assignAll(prefs.getStringList('data') ?? []);
  }

  Future<void> saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('data', data.toList());
  }

  void addData(String newData) {
    data.add(newData);
    saveData();
  }

  void updateData(int index, String newData) {
    data[index] = newData;
    saveData();
  }

  void deleteData(int index) {
    data.removeAt(index);
    saveData();
  }
}

class MyHomePage extends StatelessWidget {
  final MyDataController _controller = Get.put(MyDataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD Without Database'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: _controller.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_controller.data[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        _controller.deleteData(index);
                      },
                    ),
                    onTap: () async {
                      String? result = await showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Edit Data'),
                          content: TextField(
                            controller:
                                TextEditingController(text: _controller.data[index]),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                String newData =
                                    (context as Element).findRenderObject()!
                                        .toStringShort();
                                _controller.updateData(index, newData);
                                Navigator.pop(context, newData);
                              },
                              child: Text('Save'),
                            ),
                          ],
                        ),
                      );
                      if (result != null) {
                        _controller.updateData(index, result);
                      }
                    },
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () async {
                String? result = await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Add Data'),
                    content: TextField(),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          String newData =
                              (context as Element).findRenderObject()!
                                  .toStringShort();
                          _controller.addData(newData);
                          Navigator.pop(context, newData);
                        },
                        child: Text('Add'),
                      ),
                    ],
                  ),
                );
                if (result != null) {
                  _controller.addData(result);
                }
              },
              child: Text('Add Data'),
            ),
          ),
        ],
      ),
    );
  }
}
