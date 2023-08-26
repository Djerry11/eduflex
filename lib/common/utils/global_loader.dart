import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'global_loader.g.dart';

@Riverpod(keepAlive: true)
class AppLoader extends _$AppLoader {
  @override
  bool build() {
    return false;
  }

  void toggleLoader() {
    state = !state;
  }
}
