import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../business_logic/cubit/courses_cubit.dart';
import '../../../business_logic/cubit/courses_state.dart';
import 'widget/course_form.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Courses",
            style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w300)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
       flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF5B2DF0), Color(0xFF8D148D)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: BlocBuilder<CoursesCubit, CoursesState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.coursesList.length,
                  itemBuilder: (context, index) {
                    return CourseForm(
                      index: index,
                      onRemove: () {
                        context.read<CoursesCubit>().removeCourse(index);
                      },
                    );
                  },
                ),
              ),
              
               Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.end, // توزيع الزرين
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        context.read<CoursesCubit>().addCourse();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      icon: const Icon(Icons.add, color: Colors.white),
                      label: const Text("Add", style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                    SizedBox(width: 20,),
                    ElevatedButton.icon(
                      onPressed: () {
                        // تنفيذ منطق الحفظ هنا
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Projects saved successfully!"), backgroundColor: Colors.purple),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      icon: const Icon(Icons.save, color: Colors.white),
                      label: const Text("Save", style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
