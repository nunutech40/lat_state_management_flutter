import 'package:flutter/material.dart';
import 'package:lat_state_management_flutter/pages/modulpage/done_module_list.dart';
import 'package:lat_state_management_flutter/pages/modulpage/module_list.dart';

class ModulPage extends StatefulWidget {
  const ModulPage({Key? key}) : super(key: key);

  @override
  _ModulPageState createState() => _ModulPageState();
}

class _ModulPageState extends State<ModulPage> {
  final List<String> doneModuleList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memulai Pemrograman Dengan Dart'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoneModuleList(),
                ),
              );
            },
            icon: const Icon(Icons.done),
          )
        ],
      ),
      body: ModuleList(),
    );
  }
}
