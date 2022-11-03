import 'package:market_app_with_flutter/consts/consts.dart';
import 'package:market_app_with_flutter/widgets/bg_widget.dart';
import 'package:market_app_with_flutter/widgets/custom_textfield.dart';
import 'package:market_app_with_flutter/widgets/our_button.dart';

class EditProfileScrenn extends StatelessWidget {
  const EditProfileScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Image.asset(midoriya, width: 130, fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
          10.heightBox,
          ourButton(color: redColor, onPress: () {}, textColor: whiteColor, title: "Change"),
          const Divider(),
          20.heightBox,
          customTextField(hint: nameHint, title: name, isPass: false),
          customTextField(hint: password, title: password, isPass: true),
        ],
      ).box.shadowSm.padding(const EdgeInsets.all(16)).margin(const EdgeInsets.only(top: 50)).make()),
    ));
  }
}
