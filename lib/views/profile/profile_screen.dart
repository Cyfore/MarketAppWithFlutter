import 'package:market_app_with_flutter/consts/consts.dart';

import '../../widgets/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            //edit profile button
            const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit,
                  color: whiteColor,
                )),
            //users details seciton
            Row(
              children: [
                Image.asset(midoriya, width: 130, fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
                10.widthBox,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Dummy User".text.fontFamily(semibold).white.make(),
                      5.heightBox,
                      "customer@example.com".text.white.make(),
                    ],
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: whiteColor,
                      ),
                      fixedSize: const Size(125, 25)),
                  child: loggedout.text.fontFamily(semibold).white.make(),
                )
              ],
            )
          ],
        ),
      )),
    ));
  }
}
