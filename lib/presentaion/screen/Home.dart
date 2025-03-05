import 'package:devloper_app/constants/Colors.dart';
import 'package:devloper_app/presentaion/screen/NavBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: MyColors.myText,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 253, 253),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 180,
                decoration: BoxDecoration(
                  color: MyColors.myText,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Do you need",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "advice to learn",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          "a new skill",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            print(".");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color(0xFF3B82F6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("Yes, I want"),
                        ),
                      ],
                    )),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/images/test2-removebg-preview.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "The best companies ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print("See All clicked");
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              CompanyAdsWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class UserGreeting extends StatelessWidget {
  final String username;

  const UserGreeting({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hi, $username",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text("How are you today?", style: TextStyle(fontSize: 16)),
      ],
    );
  }
}

class CompanyAdsWidget extends StatefulWidget {
  const CompanyAdsWidget({super.key});

  @override
  State<CompanyAdsWidget> createState() => _CompanyAdsWidgetState();
}

class _CompanyAdsWidgetState extends State<CompanyAdsWidget> {
  final List<Map<String, String>> companies = [
    {"name": "Company A", "logo": "assets/company1.png"},
    {"name": "Company B", "logo": "assets/company2.png"},
    {"name": "Company C", "logo": "assets/company3.png"},
    {"name": "Company D", "logo": "assets/company4.png"},
    {"name": "Company E", "logo": "assets/company5.png"},
    {"name": "Company A", "logo": "assets/company1.png"},
    {"name": "Company A", "logo": "assets/company1.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: companies.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      companies[index]["logo"]!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  companies[index]["name"]!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
