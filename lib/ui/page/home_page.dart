part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: 960,
            color: const Color(0xffFAFAFA),
          ),
          //*background
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 288,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 288,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(117),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/sampah.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 288,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(117),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xff488D7F).withOpacity(0.1),
                          const Color(0xff488D7F).withOpacity(0.7)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //* Hi
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Amara',
                          style: boldText.copyWith(
                            color: whiteColor,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'Edukasi dan tukar sampah yuk',
                          style: normalText.copyWith(color: whiteColor),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        color: whiteColor,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/Notification_icon.png',
                        width: 17,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          //*Menu
          Positioned(
            top: 174,
            left: 40,
            right: 40,
            height: 147,
            child: Container(
              width: 335,
              height: 147,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/logo.svg',
                        width: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'MED Poin',
                        style: boldText.copyWith(
                          color: titleColor,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '35',
                        style: boldText.copyWith(
                          color: titleColor,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/Arrow - Right Circle.svg',
                        width: 20,
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildIcon('assets/add_btn.svg', peach200),
                      buildIcon('assets/calendar_btn.svg', green500),
                      buildIcon('assets/scan_btn.svg', blue500),
                      buildIcon(
                        'assets/ticket_btn.svg',
                        yellow500.withOpacity(0.3),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //* Slider
          Positioned(
            top: 348,
            left: 0,
            right: 0,
            child: CarouselSlider(
              items: [
                SliderItem(
                  child: SizedBox(
                      width: 165,
                      child: Text(
                        'Tukar poinmu, dapat reward menarik',
                        style: boldText.copyWith(
                          color: whiteColor,
                          fontSize: 12,
                        ),
                      )),
                  color: peach700,
                  imageChild: SvgPicture.asset(
                    'assets/illustration1.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                SliderItem(
                  child: SizedBox(
                    width: 165,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: "Tukarkan ",
                                ),
                                WidgetSpan(
                                    child: SvgPicture.asset('assets/logo.svg')),
                                const TextSpan(
                                  text: " MED Poin",
                                ),
                              ],
                              style: boldText.copyWith(
                                  color: whiteColor, fontSize: 12)),
                        ),
                        Text(
                          "dengan saldo Gopay, OVO,",
                          style: boldText.copyWith(
                            color: whiteColor,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "Dana atau ShopeePay",
                          style: boldText.copyWith(
                            color: whiteColor,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  color: blue500,
                  imageChild: Padding(
                    padding: const EdgeInsets.only(left: 26.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/shopeepay_icon.png',
                              width: 32,
                            ),
                            const SizedBox(
                              width: 2.8,
                            ),
                            Image.asset(
                              'assets/gopay_icon.png',
                              width: 32,
                            ),
                          ],
                        ),
                        const SizedBox(height: 2.8),
                        Row(
                          children: [
                            Image.asset(
                              'assets/ovo_icon.png',
                              width: 32,
                            ),
                            const SizedBox(width: 2.8),
                            Image.asset(
                              'assets/dana_icon.png',
                              width: 32,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SliderItem(
                  child: SizedBox(
                      width: 165,
                      child: Text(
                        'Cintai \nLingkungan ',
                        style: boldText.copyWith(
                          color: whiteColor,
                          fontSize: 18,
                        ),
                      )),
                  color: yellow500,
                  imageChild: Container(
                    width: 142,
                    height: 142,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteColor,
                      image: DecorationImage(
                        image: AssetImage('assets/trash.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(height: 115),
            ),
          ),

          //* Jadwal Penukaran Title
          Positioned(
            top: 484,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Jadwal Penukaran",
                    style: boldText.copyWith(color: titleColor, fontSize: 18),
                  ),
                  Text(
                    "Lihat semua",
                    style: normalText.copyWith(color: green700, fontSize: 10),
                  )
                ],
              ),
            ),
          ),

          //* Jadwal Penukaran carousel slider
          Positioned(
            top: 527,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dummyJadwal.length,
                itemBuilder: (BuildContext context, int index) => Container(
                  margin: index == 0
                      ? const EdgeInsets.only(left: 20, right: 20)
                      : const EdgeInsets.only(right: 20),
                  child: SliderJadwal(jadwal: dummyJadwal[index]),
                ),
              ),
            ),
          ),

          //* Jadwal Penukaran Title
          Positioned(
            top: 650,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Edukasi Yuk!",
                    style: boldText.copyWith(color: titleColor, fontSize: 18),
                  ),
                  Text(
                    "Lihat semua",
                    style: normalText.copyWith(color: green700, fontSize: 10),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 671,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(top: 11),
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dummyArticles.length,
                itemBuilder: (context, index) => Stack(
                  children: [
                    Container(
                      width: 199,
                      height: 220,
                      margin: index == 0
                          ? const EdgeInsets.only(left: 20, right: 20)
                          : const EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          end: Alignment.bottomCenter,
                          begin: Alignment.topCenter,
                          colors: index == 0
                              ? [
                                  const Color(0xffEAF0F5),
                                  const Color(0xffEAF0F5).withOpacity(0),
                                ]
                              : [
                                  const Color(0xffFFF6EA),
                                  const Color(0xffFFF6EA).withOpacity(0),
                                ],
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: SvgPicture.asset(
                          dummyArticles[index].imgUrl ?? "assets/article1.svg",
                          width: 137,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      width: 199,
                      height: 220,
                      margin: index == 0
                          ? const EdgeInsets.only(left: 20, right: 20)
                          : const EdgeInsets.only(right: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        dummyArticles[index].title ?? "Judul article",
                        maxLines: 2,
                        style: boldText.copyWith(
                          fontSize: 16,
                          color: titleColor,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildIcon(String imgUrl, Color color) => Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(imgUrl),
      );
}
