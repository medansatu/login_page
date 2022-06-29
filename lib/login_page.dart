import 'package:flutter/material.dart';
import 'routes.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
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
                Text("Hi Buddy, Welcome Back!",
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
                    child: Text("Login"),
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
                    TextButton(
                          onPressed: ((){
                            Navigator.pushNamed(context, MyRoutes.register
                            );
                          }),
                          child: Text('Forgot Password?',
                            style: TextStyle(color: Colors.blue,
                            ),
                          ),
                        ),

                // Divider
                /* Divider(height: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ), */
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
                        child: Container(
                          height: 48,
                          width: 244,
                            child: Image.asset('assets/images/facebook_login_4.png')
                        )
                      ),
                    SizedBox(height: 10),

                    InkWell(
                        onTap: () {},
                        child: Container(
                            height: 48,
                            width: 244,
                            child: Image.asset('assets/images/google_login_4.png')
                        )
                    ),
                    SizedBox(height: 10),

                    InkWell(
                        onTap: () {},
                        child: Container(
                            height: 48,
                            width: 244,
                            child: Image.asset('assets/images/apple_login_4.png')
                        )
                    ),
                    SizedBox(height: 10),

                // Dont have an account
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: ((){
                      Navigator.pushNamed(context, MyRoutes.register
                      );
                    }),
                    child: Text('Register Now',
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