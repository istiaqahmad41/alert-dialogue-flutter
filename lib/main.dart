import 'package:flutter/material.dart';

void main() {
  runApp( AlertDialog_10_demo());
}

//1.Basic AlertDialog
/*class AlertDialog_10_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter Basic Alert Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyAlert(),
      ),
    );
  }
}

class MyAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: OutlinedButton(
        child: Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = OutlinedButton(
    child: Text("OK"),
    onPressed: () {
      //Navigator.of(context).pop();
      // Dismiss the AlertDialog
      //Navigator.of(context).pop();

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SecondRoute()),
      );








    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Simple Alert"),
    content: Text("This is an alert message."),
    actions: [
      okButton,


    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}


//-------

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Click Me Page"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Home!'),
        ),
      ),
    );
  }
}*/

//2.TextField AlertDialog
/*class AlertDialog_10_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _userInput = "No input";
  String _phoneNumber = "No Phone Number";

  // Function to display the AlertDialog with TextField for name
  Future<void> _showNameInputDialog() async {
    final _textController = TextEditingController();

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Your Name'),
          content: TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText: 'Name',
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _userInput = _textController.text;
                });
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  // Function to display the AlertDialog with TextField for phone number
  Future<void> _showPhoneInputDialog() async {
    final _textController = TextEditingController();

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Your Phone Number'),
          content: TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText: 'Phone Number',
            ),
            keyboardType: TextInputType.phone, // Ensure numeric keyboard
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _phoneNumber = _textController.text;
                });
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField in AlertDialog Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'User Input:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              _userInput,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showNameInputDialog,
              child: Text('Show Name Input Dialog'),
            ),
            SizedBox(height: 20),
            Text(
              'Phone Number:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              _phoneNumber,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showPhoneInputDialog,
              child: Text('Show Phone Number Input Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}*/

//4Select Option AlertDialog

/*class AlertDialog_10_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedOption = "No option selected";

  // Function to show the select option dialog
  Future<void> _showSelectOptionDialog(BuildContext context) async {
    final List<String> options = ['Option 1', 'Option 2', 'Option 3'];

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select an Option'),
          content: SingleChildScrollView(
            child: ListBody(
              children: options.map((option) {
                return ListTile(
                  title: Text(option),
                  onTap: () {
                    setState(() {
                      _selectedOption = option;
                    });
                    Navigator.of(context).pop(); // Close the dialog
                  },
                );
              }).toList(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Option AlertDialog Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected Option:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              _selectedOption,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showSelectOptionDialog(context),
              child: Text('Show Select Option Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}*/
// 3..Confirmation AlertDialog

class AlertDialog_10_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // Function to show a confirmation dialog
  Future<void> _showConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // User must tap a button to dismiss the dialog
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to proceed?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text('Confirm'),
              onPressed: () {
                // Perform the action and close the dialog
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Action confirmed!'))
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation AlertDialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showConfirmationDialog(context),
          child: Text('Show Confirmation Dialog'),
        ),
      ),
    );
  }
}



