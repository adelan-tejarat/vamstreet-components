import 'package:fluent_ui/fluent_ui.dart' show Color;
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;

class ButtonColorCubit extends Cubit<Color> {
  ButtonColorCubit(super.initialState);

  void updateColor(Color newColor) => emit(newColor);
}
