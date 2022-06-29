import 'package:flutter/material.dart';
import 'routes.dart';

class RegisterPage extends StatefulWidget{
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  bool _PassVisibility = true;
  TextEditingController passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
        //backgroundColor: Colors.yellow,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 25),
                //SANS Logo
                Image.asset('assets/images/SANS.png'),
                    SizedBox(height: 25),

                // Hello Again
                Text("Hello, Create Your Account!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),


                // Email Field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),


                SizedBox(height: 10),
                // Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwordCon,
                        obscureText: _PassVisibility,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            suffixIcon: IconButton(onPressed: () {
                              setState((){
                                _PassVisibility = !_PassVisibility;
                              });
                            },
                              icon: _PassVisibility
                                  ?const ImageIcon(AssetImage('assets/images/tidak_lihat.png'))
                                  : const ImageIcon(AssetImage('assets/images/lihat.png')),
                            )
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 56,
                  width: 244,
                  padding: EdgeInsets.all(0),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Button Clicked');
                    },
                    child: Text("Create Account"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
                // Login Button
                SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('I agree to'),
                        TextButton(
                          onPressed: ((){
                            Navigator.pushNamed(context, MyRoutes.loginScreen
                            );
                          }),
                          child: Text('Terms of Service and Privacy Policy',
                            style: TextStyle(color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),

                // Divider
                Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Divider(
                                                height: 20,
                                                thickness: 1,
                                                //indent: 20,
                                                endIndent: 20,
                                                color: Colors.black,
                                              ),
                                          ),

                                          Text("OR"),

                                          Expanded(
                                              child: Divider(
                                                height: 20,
                                                thickness: 1,
                                                indent: 20,
                                                //endIndent: 20,
                                                color: Colors.black,
                                              ),
                                          ),
                                        ]
                                    ),

                                SizedBox(height: 10),

                    InkWell(
                        onTap: () {},
                        splashColor: Colors.white,
                        child: Container(
                            height: 48,
                            width: 244,
                            child: Image.asset('assets/images/facebook_signup_4.png')
                        )
                    ),
                                    SizedBox(height: 10),

                    InkWell(
                        onTap: () {},
                        splashColor: Colors.white,
                        child: Container(
                            height: 48,
                            width: 244,
                            child: Image.asset('assets/images/google_signup_4.png')
                        )
                    ),
                                    SizedBox(height: 10),

                    InkWell(
                        onTap: () {},
                        splashColor: Colors.white,
                        child: Container(
                            height: 48,
                            width: 244,
                            child: Image.asset('assets/images/apple_signup_4.png')
                        )
                    ),
                                    SizedBox(height: 10),

                SizedBox(height: 10),

                // Dont have an account
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: ((){
                      Navigator.pushNamed(context, MyRoutes.loginScreen
                      );
                    }),
                    child: Text('Login Here',
                      style: TextStyle(color: Colors.blue,
                  ),
                  ),
                  ),
                ],
              ),
              ]),
            ),
          ),
      ),
      );
  }
}