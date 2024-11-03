import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _isChecked = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[900],
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/login.png",
                        height: 120,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text("By signing in you are agreeing to our"),
                      const Text(
                        "Terms and privacy policy",
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(215, 215, 215, 150),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 8),
                            hintText: "Email Address",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w300,
                            ),
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.mail_outline,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(215, 215, 215, 150),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 8),
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w300,
                            ),
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isChecked = !_isChecked;
                                });
                              },
                              child: Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 30,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(
                                        215, 215, 215, 150),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: _isChecked
                                      ? const Center(
                                          child: Icon(
                                            Icons.check,
                                            size: 25,
                                            color: Colors.grey,
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text("Remember password")
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      // Diagonal Divider
                      CustomPaint(
                        painter: DiagonalDivider(),
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20))),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot password?",
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.blue,
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text("Register"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text("Login with Touch ID"),
                      const SizedBox(height: 04),
                      SvgPicture.asset("assets/finger.svg"),
                      const SizedBox(height: 04),
                      const Text("or connect with "),
                      const SizedBox(height: 04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/facebook 1.svg"),
                          const SizedBox(width: 20),
                          SvgPicture.asset("assets/instagram 1.svg"),
                          const SizedBox(width: 20),
                          SvgPicture.asset("assets/pinterest 1.svg"),
                          const SizedBox(width: 20),
                          SvgPicture.asset("assets/linkedin 1.svg"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DiagonalDivider extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue.shade900
      ..strokeWidth = 15;

    const startX = -20.0;
    const startY = 30.0;

    final endX = size.width + 30;
    final endY = size.height - 55;

    canvas.drawLine(const Offset(startX, startY), Offset(endX, endY), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
