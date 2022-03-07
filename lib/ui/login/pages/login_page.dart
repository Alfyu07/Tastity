part of '../../pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              SafeArea(
                child: SvgPicture.asset('assets/login_graphic.svg'),
              ),
              const SizedBox(height: 46),
              Text(
                "Selamat Datang Kembali!",
                style: semiBold.copyWith(fontSize: 24, color: titleColor),
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: 238,
                child: Text(
                  "Masukkan informasi dibawah\natau masuk dengan akun sosial media",
                  style: medium.copyWith(fontSize: 12, color: grey),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: edge),
                child: CustomTextField(),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: edge),
                child: CustomTextField(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
