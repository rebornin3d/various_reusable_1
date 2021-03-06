import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_app/models/view_models/add_store_view_model.dart';

class AddStorePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  AddStoreViewModel _addStoreVM = AddStoreViewModel();

  void _saveStore(BuildContext context) {
    if (_formKey.currentState.validate()) {
      _addStoreVM.saveStore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Add Store")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) => _addStoreVM.storeName = value,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please enter store name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: "Enter store name"),
                ),
                TextFormField(
                  onChanged: (value) => _addStoreVM.storeAddress = value,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please enter store address";
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: "Enter store address"),
                ),
                TextFormField(
                  onChanged: (value) => _addStoreVM.storeColor = value,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please enter store color";
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: "Enter store color"),
                ),
                RaisedButton(
                    child: Text("Save", style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      _saveStore(context);
                    },
                    color: Colors.blue),
                Spacer(),
                Text("")
              ],
            ),
          ),
        ));
  }
}
