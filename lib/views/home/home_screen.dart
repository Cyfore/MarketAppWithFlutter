import 'package:market_app_with_flutter/consts/consts.dart';
import 'package:market_app_with_flutter/consts/lists.dart';
import 'package:market_app_with_flutter/widgets/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            height: 100,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchanything,
                hintStyle: TextStyle(color: textfieldGrey),
              ),
            ),
          ),
          //swipers
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: slidersList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        slidersList[index],
                        fit: BoxFit.fitWidth,
                      ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                    },
                  ),
                ],
              ),
            ),
          ),
          10.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                2,
                (index) => homeButtons(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth / 2.5,
                      icon: index == 0 ? icTodaysDeal : icFlashDeal,
                      title: index == 0 ? todayDeal : flashsale,
                    )),
          ),

          //2nd swiper
          10.heightBox,
          //swipers brands
          VxSwiper.builder(
            aspectRatio: 16 / 9,
            autoPlay: true,
            height: 150,
            enlargeCenterPage: true,
            itemCount: secondSlidersList.length,
            itemBuilder: (context, index) {
              return Image.asset(
                secondSlidersList[index],
                fit: BoxFit.fitWidth,
              ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
            },
          ),
          10.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                3,
                (index) => homeButtons(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth / 3.5,
                      icon: index == 0
                          ? icTopCategories
                          : index == 1
                              ? icBrands
                              : icTopSeller,
                      title: index == 0
                          ? topCategories
                          : index == 1
                              ? brand
                              : topSellers,
                    )),
          ),

          //featured categories
          10.heightBox,
          Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
            ],
          )
        ],
      )),
    );
  }
}
