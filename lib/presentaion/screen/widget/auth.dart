import 'package:flutter/material.dart';

class Customer1 extends StatelessWidget {
  final String mainText;
  final String subText;
  const Customer1({super.key, required this.mainText, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mainText,
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            subText,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class TextFormField1 extends StatefulWidget {
  const TextFormField1(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.validator,
      required this.textStyle,
      required this.onChanged,
      required this.fillColor,
      });

  final String hintText;
  final Widget prefixIcon;
  final String? Function(String?)? validator;
  final TextStyle? textStyle;
  final void Function(String)? onChanged;
  final Color fillColor;
   
//style: const TextStyle(color: Color(0xff)),
  @override
  State<TextFormField1> createState() => _TextFormField1State();
}

class _TextFormField1State extends State<TextFormField1> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(filled:true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: widget.prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide.none,
          ),
          fillColor: widget.fillColor),style: TextStyle(color: Color(0xffB9BCC2)),
      validator: widget.validator,
      onChanged: widget.onChanged,
    );

  }
}


    

