part of '../widgets.dart';

class CustomTextField extends StatefulWidget {
  final String? hintText;

  const CustomTextField({Key? key, this.hintText}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: RichText(
          text: TextSpan(
            text: "Email",
            style: semiBold.copyWith(color: grey),
            children: [
              TextSpan(text: "*", style: semiBold.copyWith(color: peach700)),
            ],
          ),
        ),
        // constraints: BoxConstraints(
        //     maxHeight: 62, maxWidth: double.infinity, minHeight: 24),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: grey, width: 2.0),
        ),
        focusColor: green700,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: green700, width: 2.0),
        ),
      ),
    );
  }
}
