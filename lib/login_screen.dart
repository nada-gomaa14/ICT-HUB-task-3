import 'package:flutter/material.dart';
import 'package:task3/register_screen.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LogInScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black87
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    bottom: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign in to your',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Sign in to your account',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  right: 30,
                  left: 30,
                  top: 50,
                  bottom: 30
                ),
                height: 600,
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    spacing: 10,
                    children: [
                      TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty) {
                            return 'This field is required.';
                          }
                          else {
                            return null;
                          }
                        },
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.blue,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                              width: 2
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2
                            )
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                              width: 5
                            )
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                              width: 5
                            )
                          )
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty) {
                            return 'This field is required.';
                          }
                          else if(value.length < 8) {
                            return 'Password must be at least 8 characters.';
                          }
                          else {
                            return null;
                          }
                        },
                        obscureText: isObscure,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.blue,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                              width: 2
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2
                            )
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                              width: 5
                            )
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                              width: 5
                            )
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              isObscure = !isObscure;
                              setState(() {});
                            },
                            icon: isObscure
                                ? Icon(Icons.visibility, color: Colors.grey,)
                                : Icon(Icons.visibility_off, color: Colors.grey,)
                          )
                        ),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if(formKey.currentState!.validate()){
                            print("Login Successful");
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.blue,
                          ),
                          height: 60,
                          width: double.infinity,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Divider()
                          ),
                          Text(
                            'Or login with',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                            ),
                          ),
                          Expanded(
                            child: Divider(),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(
                                right: 10
                              ),
                              alignment: Alignment.center,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                border: Border.all(
                                  color: Colors.grey
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network('https://static.vecteezy.com/system/resources/previews/013/948/549/non_2x/google-logo-on-transparent-white-background-free-vector.jpg'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Google',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(
                                left: 10
                              ),
                              alignment: Alignment.center,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                border: Border.all(
                                  color: Colors.grey
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network('https://icon2.cleanpng.com/20180802/zer/ce47a756a4ebee4298b2cd320d69eab3.webp'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Facebook',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: 50
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()
                            )
                        );
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
