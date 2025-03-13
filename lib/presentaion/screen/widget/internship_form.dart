import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'custom_field.dart';

class InternshipForm extends StatelessWidget {
  final int index;
  final VoidCallback onRemove;

  const InternshipForm({super.key, required this.index, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: const BoxDecoration(
                 color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Internship ${index + 1}',
                      style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.white),
                      onPressed: onRemove,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 6, left: 6, top: 12),
                child: Column(
                  children: [
                    _buildCustomField(context, 'Title', Icons.workspace_premium),
                    _buildCustomField(context, 'Company', Icons.business),
                    _buildCustomField(context, 'Duration', Icons.timer),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCustomField(BuildContext context, String hint, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: FadeInDown(
        duration: const Duration(milliseconds: 650),
        delay: const Duration(milliseconds: 200),
        child: CustomField(
          controller: TextEditingController(),
          icon: icon,
          hint: hint,
        gradientColors: [Colors.purple, Colors.deepPurpleAccent],
              validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'This field cannot be empty';
                                  }
                                  return null;
                                },
        ),
      ),
    );
  }
}
