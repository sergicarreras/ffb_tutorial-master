import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SharedForm extends StatelessWidget {
  //* Form key
  final _formKey = GlobalKey<FormBuilderState>();
  final _ScaffoldKey = GlobalKey();

  final title;
  final formField;

  SharedForm({Key key, this.formField, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _ScaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('$title'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: FormBuilder(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(child: formField),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    //* Save form
                    _formKey.currentState.save();
                    //* Get form data
                    final formData = _formKey.currentState.value;
                    // //* Close keyboard
                    // FocusScope.of(context).unfocus();
                    //* Display Snackbar with form data
                    ScaffoldMessenger.of(_ScaffoldKey.currentContext)
                        .showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 10),
                        content: Row(
                          children: [
                            Expanded(
                              child: Text('$formData', textScaleFactor: 1.5),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                ScaffoldMessenger.of(
                                        _ScaffoldKey.currentContext)
                                    .hideCurrentSnackBar();
                              },
                              icon: Icon(Icons.close),
                              label: Text('Close'),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  child: Text('Show form data'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
