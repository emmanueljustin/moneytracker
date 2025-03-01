import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moneytracker/global_core/cubits/widgets_helper_cubit.dart';

class BlocProviders {
  static List<BlocProvider> get() {
    return [
      BlocProvider<WidgetsHelperCubit<bool>>(create: (context) => WidgetsHelperCubit<bool>(false)),
    ];
  }
}