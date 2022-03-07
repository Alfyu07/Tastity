part of '../../pages.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            SafeArea(
              child: Center(
                child: SvgPicture.asset('assets/daftar1.svg'),
              ),
            ),
            const SizedBox(height: 26),
            Center(
              child: Text(
                "Selamat Datang",
                style: semiBold.copyWith(
                  color: const Color(0xff232323),
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: SizedBox(
                width: 234,
                child: Text(
                  'Daftarkan dirimu sebelum melakukan kebaikan ya!',
                  style: medium.copyWith(
                    color: grey,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: edge),
              child: PrimaryButton(
                onTap: () {},
                lead: SvgPicture.asset('assets/email.svg'),
                text: "Daftar dengan email",
                height: 56,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: edge),
              child: SecondaryButton(
                onTap: () {},
                lead: SvgPicture.asset('assets/facebook.svg'),
                text: "Daftar dengan Facebook",
                height: 56,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: edge),
              child: SecondaryButton(
                onTap: () {},
                lead: SvgPicture.asset('assets/google.svg'),
                text: "Daftar dengan Google",
                height: 56,
              ),
            ),
            const SizedBox(height: 45),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Sudah punya akun? ",
                  style: medium.copyWith(
                    color: titleColor,
                  ),
                  children: [
                    TextSpan(
                      text: " Masuk",
                      style: semiBold.copyWith(color: green700),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
