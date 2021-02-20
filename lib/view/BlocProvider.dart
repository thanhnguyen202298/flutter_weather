import 'package:flutter/widgets.dart';
import 'package:flutter_weather/stream/Bloc.dart';

/**
 * Created by Nguyễn Trung Thành on 2/20/2021.
 *
 * victo202298@gmail.com
 */
class BlocProvider extends InheritedWidget {
  final Bloc bloc;

  BlocProvider({Key key, @required this.bloc, Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static Bloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider).bloc;
}