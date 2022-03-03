part of 'widgets.dart';

class SliderJadwal extends StatelessWidget {
  final Jadwal jadwal;
  const SliderJadwal({Key? key, required this.jadwal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 303,
      height: 115,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                DateFormat('dd').format(jadwal.from ?? DateTime.now()),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: green700,
                ),
              ),
              Text(
                  DateFormat('EEEE')
                      .format(jadwal.from ?? DateTime.now())
                      .substring(0, 3),
                  style: normalText),
            ],
          ),
          const SizedBox(width: 24),
          const VerticalDivider(),
          const SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/time_icon.png',
                    width: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "${DateFormat("HH:mm").format(jadwal.from ?? DateTime.now())} - ${DateFormat("HH:mm").format(jadwal.until ?? DateTime.now())} WITA",
                    style: normalText.copyWith(
                      color: titleColor,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 9),
              Text(
                jadwal.status == Status.pending
                    ? "Penukaran di pending"
                    : jadwal.status == Status.complete
                        ? "Penukaran selesai"
                        : "Menunggu Jemputan",
                style: normalText.copyWith(
                  color: peach700,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
