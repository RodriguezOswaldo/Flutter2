import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _theName = '';
  String _email = '';
  String _date = '';
  TextEditingController _inputFieldDateController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de Texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate(context),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letter: '),
          hintText: 'Full Name',
          labelText: 'Name: ',
          helperText: 'Just Name',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        print(_theName);
        setState(() {
          _theName = valor;
        });
      },
    );
  }

  Widget _createPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Password',
        labelText: 'Password: ',
        suffixIcon: Icon(Icons.lock),
        icon: Icon(Icons.lock_open),
      ),
      // onChanged: (valor) => setState(() {
      //       _email = valor;
      //     })
    );
  }

  Widget _createEmail() {
    return TextField(
        enableInteractiveSelection: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            hintText: 'Email Address',
            labelText: 'Email: ',
            suffixIcon: Icon(Icons.alternate_email),
            icon: Icon(Icons.email)),
        onChanged: (valor) => setState(() {
              _email = valor;
            }));
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      // obscureText: true,
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'DoB',
        labelText: 'DoB: ',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.perm_contact_calendar),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFieldDateController.text = _date;
      });
    }
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Name is: $_theName'),
      subtitle: Text('Email Addres : $_email'),
    );
  }
}
