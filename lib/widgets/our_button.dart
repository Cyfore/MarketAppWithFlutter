import '../consts/consts.dart';

Widget ourButton({onPress, color, Color? textColor, String? title = 'Error'}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: title!.text.color(textColor).fontFamily(bold).make(),
  );
}
