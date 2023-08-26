import 'package:fluttertoast/fluttertoast.dart';

showMessage(String message) async {
  return await Fluttertoast.showToast(
    msg: message,
    gravity: ToastGravity.TOP,
    toastLength: Toast.LENGTH_SHORT,
  );
}
