import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../business_logic/cubit/education_cubit.dart';
import '../../../business_logic/cubit/education_state.dart';
import 'widget/education_form.dart';
class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education",
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
      body: BlocBuilder<EducationCubit, EducationState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.educationList.length,
                  itemBuilder: (context, index) {
                    return EducationForm(
                      index: index,
                      onRemove: () {
                        context.read<EducationCubit>().removeEducation(index);
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    context.read<EducationCubit>().addEducation();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 162, 31, 214),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: const Text("+  Add", style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
