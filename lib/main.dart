import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alsaif',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    const Text('Home Page'),
    const Text('Categories'),
    const Text('Cart'),
    const Text('Offers'),
    Account(), // Updated to use the Account widget here
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/loggo.png', // Your logo here
              height: 45,
            ),
            SizedBox(width: 1),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'What are you looking for?',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.normal, // Unbolded text
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(239, 204, 201, 201),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritesScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/favlog.png', // Path to your image asset
          height: 120,
        ),
        centerTitle: true, // Center the image in the AppBar
      ),
      body: Center(
        child: Text('Your favorite items will appear here.'),
      ),
    );
  }
}

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            // Image.asset(
            //   'assets/favlo.png', // Path to your favlo.png asset
            //   height: 120,
            // ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 143, 10, 0), // Red background color
                padding: EdgeInsets.symmetric(vertical: 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Straight edges
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal, // Unbolded text
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account ? ",
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Register now',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text('Language'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: Text('Country'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: Text('Allow Notifications'),
              trailing: Switch(
                value: true,
                activeColor: Colors.red,
                inactiveThumbColor: Colors.white,
                onChanged: (bool value) {},
              ),
            ),
            ListTile(
              title: Text('Contact Us'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: Text('Our Story'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: Text('Loyalty Points Policy'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: Text('Privacy Policy'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            ListTile(
              title: Text('Payment Method'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.facebook, color: Colors.black),
                  onPressed: () {
                    // Add your Facebook link here
                  },
                ),
                IconButton(
                  icon: Icon(Icons.facebook, color: Colors.black),
                  onPressed: () {
                    // Add your Twitter link here
                  },
                ),
                IconButton(
                  icon: Icon(Icons.facebook, color: Colors.black),
                  onPressed: () {
                    // Add your Instagram link here
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              '• Shipping and delivery information\n'
              '• Terms and conditions\n'
              '• Return policy\n'
              '• How to buy\n'
              '• FAQs\n'
              '• Warranty',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Alsaif Gallery © • All rights reserved.',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  bool isPhoneSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/favlog.png', // Path to your image asset
          height: 120,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Choose your login method',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isPhoneSelected = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: isPhoneSelected ? Colors.red : Colors.white,
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    child: Column(
                      children: [
                        Icon(
                          Icons.phone,
                          color: isPhoneSelected
                              ? Colors.white
                              : const Color.fromARGB(255, 156, 20, 10),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Phone Number',
                          style: TextStyle(
                            color: isPhoneSelected
                                ? Colors.white
                                : const Color.fromARGB(255, 151, 18, 8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isPhoneSelected = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: !isPhoneSelected
                          ? const Color.fromARGB(255, 182, 25, 14)
                          : Colors.white,
                      border: Border.all(
                          color: const Color.fromARGB(255, 170, 18, 7)),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    child: Column(
                      children: [
                        Icon(
                          Icons.email,
                          color: !isPhoneSelected ? Colors.white : Colors.red,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'E-mail Address',
                          style: TextStyle(
                            color: !isPhoneSelected
                                ? Colors.white
                                : const Color.fromARGB(255, 168, 16, 5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            isPhoneSelected
                ? Column(
                    children: [
                      Row(
                        children: [
                          DropdownButton<String>(
                            value: '+966',
                            items: <String>['+966', '+971', '+965', '+968']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (newValue) {},
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Phone Number',
                                hintText: 'Phone Number',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'We\'ll text you a code',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'E-mail Address',
                          hintText: 'E-mail Address',
                        ),
                      ),
                      SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'We\'ll text you a code',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'OR',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 219, 36, 4), // Red background color
                padding: EdgeInsets.symmetric(vertical: 11),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Straight edges
                ),
                minimumSize: Size(double.infinity,
                    44), // Make button full width and adjust height
              ),
              onPressed: () {
                // Google login functionality here
              },
              icon: FaIcon(
                FontAwesomeIcons.google,
                color: Colors.white, // Set Google icon color to white
              ),
              label: Text(
                'LOGIN WITH GOOGLE',
                style: TextStyle(
                  color: Colors.white, // Set text color to white
                  fontSize: 16,
                  fontWeight: FontWeight.normal, // Unbolded text
                ),
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // Navigate to the registration screen
              },
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'REGISTER NOW',
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
