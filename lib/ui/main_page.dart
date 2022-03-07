part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const Center(
      child: Text('discovery'),
    ),
    const Center(
      child: Text('plus'),
    ),
    const Center(
      child: Text('document'),
    ),
    const Center(
      child: Text('profile'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteColor,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 0
                ? Column(
                    children: [
                      const ImageIcon(
                        AssetImage(
                          'assets/home_active.png',
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: [
                              const Color(0xff488D7F),
                              const Color(0xff488D7F).withOpacity(0.55)
                            ])),
                      ),
                    ],
                  )
                : SvgPicture.asset('assets/home.svg'),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/discovery.svg'),
            label: "discovery",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/plus.svg'),
            label: "add",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/profile.svg'),
            label: "profile",
          )
        ],
      ),
    );
  }
}
