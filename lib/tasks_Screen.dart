import 'package:flutter/material.dart';

class TaskesScreen extends StatelessWidget {
  const TaskesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasksScreen(),
    );
  }
}

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  // قائمة المهام
  List<Map<String, dynamic>> tasks = [
    {'title': 'Design New UI For Dashboard', 'isDone': false},
    {'title': 'Design New UI For Dashboard', 'isDone': false},
    {'title': 'Design New UI For Dashboard', 'isDone': true},
    {'title': 'Design New UI For Dashboard', 'isDone': false},
    {'title': 'Design New UI For Dashboard', 'isDone': true},
    {'title': 'Design New UI For Dashboard', 'isDone': false},
    {'title': 'Design New UI For Dashboard', 'isDone': true},
    {'title': 'Design New UI For Dashboard', 'isDone': true},
    {'title': 'Design New UI For Dashboard', 'isDone': true},
    {'title': 'Design New UI For Dashboard', 'isDone': true},
  ];

  @override
  Widget build(BuildContext context) {
    int completed = tasks.where((task) => task['isDone']).length;
    double progress = completed / tasks.length;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Good Morning, Ali',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff090909),
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Monday, July 14',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'My Day Progress',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: progress,
                color: const Color(0xff2B7FFF),
                backgroundColor: Colors.grey[300],
                minHeight: 8,
              ),
              const SizedBox(height: 6),
              Text(
                '$completed/${tasks.length} Tasks Completed',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Tasks',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                itemCount: tasks.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(
                      tasks[index]['title'],
                      style: TextStyle(
                        fontSize: 15,
                        decoration: tasks[index]['isDone']
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                    ),
                    value: tasks[index]['isDone'],
                    onChanged: (value) {
                      setState(() {
                        tasks[index]['isDone'] = value!;
                      });
                    },
                    activeColor: const Color(0xff2B7FFF),
                    controlAffinity: ListTileControlAffinity.leading,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff2B7FFF),
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff2B7FFF),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Completed'),
        ],
      ),
    );
  }
}
