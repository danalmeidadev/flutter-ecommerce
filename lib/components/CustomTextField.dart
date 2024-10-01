import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Customtextfield extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final bool readOnly;


   const Customtextfield({
     Key? key,
      required this.icon,
      required this.label,
      this.isSecret = false,
      this.inputFormatters,
      this.initialValue,
      this.readOnly = false,
      })
      : super(key: key);

  @override
  State<Customtextfield> createState() => _CustomtextfieldState();
}

class _CustomtextfieldState extends State<Customtextfield> {
  bool isPassword = false;

  @override
  void initState() {
    super.initState();
    isPassword = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        initialValue: widget.initialValue,
        readOnly: widget.readOnly,
        inputFormatters: widget.inputFormatters,
        obscureText: isPassword,

        decoration: InputDecoration(
            suffixIcon: widget.isSecret
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    icon: Icon(isPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                  )
                : null,
            labelText: widget.label,
            hintText: 'Enter your email',
            prefixIcon: Icon(widget.icon),
            isDense: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(16))),
      ),
    );
  }
}
