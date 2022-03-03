part of 'widgets.dart';

class SliderItem extends StatelessWidget {
  final Widget imageChild;
  final Widget child;
  final Color color;
  const SliderItem(
      {Key? key,
      required this.child,
      required this.imageChild,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(187, 187, 187, 0.25),
              offset: Offset(15, 15),
              blurRadius: 50,
            )
          ],
        ),
        child: Stack(
          children: [
            Container(
              width: 303,
              height: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color,
              ),
            ),
            Container(
              width: 303,
              height: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/mask_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: child,
              ),
            ),
            Positioned(
              top: -13,
              right: -30,
              child: Container(
                width: 142,
                height: 142,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
                child: Center(child: imageChild),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
