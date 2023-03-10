import 'package:flinger/classes/set_check.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:provider/provider.dart';

class TextFieldRed extends StatefulWidget {
  final Widget suffix;
  final Widget second;
  final TextEditingController textEditingController;

  const TextFieldRed(
      {super.key,
      required this.suffix,
      this.second = const SizedBox(),
      required this.textEditingController});

  @override
  State<TextFieldRed> createState() => _TextFieldRedState();
}

class _TextFieldRedState extends State<TextFieldRed> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          controller: widget.textEditingController,
          cursorColor: const Color(0xFFff0008),
          maxLength: 9,
          cursorHeight: 16,
          keyboardType: TextInputType.phone,
          style: GoogleFonts.shareTechMono(fontSize: 16),
          inputFormatters: [MaskedInputFormatter("### ## ##")],
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.only(left: 110, top: 15),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFff0008), width: 2)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.suffix,
              Padding(
                padding: const EdgeInsets.only(left: 218),
                child: widget.second,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
