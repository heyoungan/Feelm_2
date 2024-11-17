import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFBAD3EE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFBAD3EE),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        toolbarHeight: 25, // AppBar 높이를 줄임
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // 간격을 더 줄임
                const SizedBox(height: 0), // 화살표와 구름 이미지 간격

                // 구름 이미지 로고
                Image.asset(
                  'assets/cloud.png', // 구름 이미지 경로 설정
                  width: 256, // 크기를 기존보다 축소
                  height: 150,
                ),
                const SizedBox(height: 50), // 구름 이미지와 username 사이 간격을 늘림

                // Username 입력 필드
                TextField(
                  controller: usernameController,
                  decoration: _inputDecoration('username'),
                ),
                const SizedBox(height: 20),

                // Password 입력 필드
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: _inputDecoration('Password'),
                ),
                const SizedBox(height: 20),

                // Email 입력 필드
                TextField(
                  controller: emailController,
                  decoration: _inputDecoration('E-mail'),
                ),
                const SizedBox(height: 30),

                // 회원가입 버튼
                ElevatedButton(
                  onPressed: () async {
                    final username = usernameController.text.trim();
                    final password = passwordController.text.trim();
                    final email = emailController.text.trim();

                    if (username.isEmpty || password.isEmpty || email.isEmpty) {
                      _showErrorDialog(context, '모든 필드를 채워주세요.');
                      return;
                    }

                    try {
                      // Firestore에 데이터 저장
                      await FirebaseFirestore.instance
                          .collection('users')
                          .doc(username)
                          .set({
                        'username': username,
                        'password': password,
                        'email': email,
                      });

                      _showSuccessDialog(context, '회원가입 성공!');
                    } catch (e) {
                      _showErrorDialog(context, '회원가입 실패: $e');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),

                // 카카오 로그인 버튼
                ElevatedButton.icon(
                  onPressed: () {
                    // 카카오 로그인 처리 로직 (아직 구현되지 않음)
                  },
                  icon: const Icon(Icons.chat_bubble, color: Colors.black),
                  label: const Text(
                    '카카오 로그인',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFE812),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // 네이버 로그인 버튼
                ElevatedButton.icon(
                  onPressed: () {
                    // 네이버 로그인 처리 로직 (아직 구현되지 않음)
                  },
                  icon: const Text(
                    'N',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  label: const Text(
                    '네이버 로그인',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF03C75A),
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.black),
      ),
    );
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('오류'),
        content: Text(message),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('확인'),
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('성공'),
        content: Text(message),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text('확인'),
          ),
        ],
      ),
    );
  }
}