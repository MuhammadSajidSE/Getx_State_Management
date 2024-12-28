import 'package:first/first_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme_controller.dart';

class home extends StatefulWidget {
  const home({super.key});
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Card(
            child: ListTile(
              title: const Text("GETX dialog"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete",
                  middleText: "Are you sure you want to delete",
                  contentPadding: const EdgeInsets.all(10),
                  content: const Column(
                    children: [
                      Text("Sajid"),
                      Text("Sajid"),
                    ],
                  ),
                  confirm: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Ok")),
                  cancel: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel")),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("GETX dialog"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete",
                  middleText: "Are you sure you want to delete",
                  contentPadding: const EdgeInsets.all(10),
                  content: const Column(
                    children: [
                      Text("Sajid"),
                      Text("Sajid"),
                    ],
                  ),
                  confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text("Ok")),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("GETX Bottom Style sheet"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 195, 248, 255),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.sunny),
                        title: const Text("Light mode"),
                        onTap: () {
                          themeController.setTheme(ThemeData.light());
                          Get.back();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text("Dark mode"),
                        onTap: () {
                          themeController.setTheme(ThemeData.dark());
                          Get.back();
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const firstpage()));
              },
              child: const Text("WithOut GETx")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Get.to(const firstpage());
              },
              child: const Text("GETx Button"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("GETX", "OR ky hal ha janab",
              backgroundColor: const Color.fromARGB(255, 255, 235, 233),
              snackPosition: SnackPosition.TOP,
              icon: const Icon(Icons.browse_gallery_rounded),
              mainButton: TextButton(
                  onPressed: () {}, child: const Text("Click here")));
        },
      ),
    );
  }
}
