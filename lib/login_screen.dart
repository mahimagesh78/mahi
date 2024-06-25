import 'package:flutter/material.dart';
import 'package:zomatto/home_screen.dart';

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<myapp> {
  var username = "mahi";
  var password = "mageshwaran";
  final TextEditingController user = TextEditingController();
  final TextEditingController pass = TextEditingController();

  var hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: user,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: Color(0xffBDBDBD)),
                      hintText: "Email",
                      fillColor: const Color(0xffF3F5F7),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: pass,
                    obscureText: hide,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: Color(0xffBDBDBD)),
                      hintText: "Password",
                      fillColor: const Color(0xffF3F5F7),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hide = !hide;
                            });
                          },
                          icon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color(0xff242424),
                          )),
                    ),
                  ),
                  TextButton(onPressed: () {}, child: Text("Forgot password")),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        if (user.text == username && pass.text == password) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => myapp()),
                          );
                        }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xff5151C6),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text("Or login by"),
                  const SizedBox(height: 5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(width: 30, image: AssetImage('images/google.png')),
                      SizedBox(width: 5),
                      Image(
                          width: 23, image: AssetImage('images/facebook.png')),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text("Don't you have an account?")),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
