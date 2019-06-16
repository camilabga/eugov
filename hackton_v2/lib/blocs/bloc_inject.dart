

import 'package:hackton_v2/blocs/home_bloc.dart';
import 'package:hackton_v2/blocs/login_bloc.dart';

class BlocInject {
 LoginBloc _login = LoginBloc();
  HomeBloc _navBottomBar = HomeBloc();

  LoginBloc get login => _login;
  HomeBloc get navBottomBar => _navBottomBar;}