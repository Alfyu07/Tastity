part of '../widgets.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final Color color;
  final String text;
  final Widget? lead;
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.height = 48,
    this.width = 327,
    this.color = green700,
    this.lead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
          gradient: color == green700
              ? LinearGradient(
                  begin: const Alignment(-1, -1.2),
                  end: const Alignment(0.8, 1.0),
                  colors: [green700, green700.withOpacity(0.55)],
                )
              : const LinearGradient(colors: []),
          border: Border.all(
            width: 1,
            color: whiteColor.withOpacity(0.6),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xffADADAD).withOpacity(0.2),
              offset: const Offset(0, -15),
              blurRadius: 60,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          lead != null ? lead! : Container(),
          lead != null
              ? const SizedBox(
                  width: 24,
                )
              : Container(),
          Text(
            text,
            style: semiBold.copyWith(
              color: whiteColor,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
