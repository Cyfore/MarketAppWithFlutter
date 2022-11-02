import 'package:market_app_with_flutter/consts/consts.dart';
import 'package:market_app_with_flutter/consts/lists.dart';
import 'package:market_app_with_flutter/views/profile/components/details_cart.dart';

import '../../widgets/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //edit profile button
          const Padding(
              padding: EdgeInsets.all(16),
              child: Align(alignment: Alignment.topRight, child: Icon(Icons.edit, color: whiteColor))),
          //users details seciton
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                ),
              ],
            ),
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailsCard(width: context.screenWidth / 3.4, count: "00", title: "in your cart"),
              detailsCard(width: context.screenWidth / 3.4, count: "32", title: "in your wishlist"),
              detailsCard(width: context.screenWidth / 3.4, count: "675", title: "your orders"),
            ],
          ),
          40.heightBox,
          //buttons section

          ListView.separated(
            itemCount: profileButtonsList.length,
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return const Divider(
                color: lightGrey,
              );
            },
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(
                  profileButtonsIcons[index],
                  width: 22,
                ),
                title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
              );
            },
          ).box.white.rounded.padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make()
        ],
      )),
    ));
  }
}
