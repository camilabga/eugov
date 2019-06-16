
import 'package:rxdart/rxdart.dart';


class LoginBloc  {


  final _login = BehaviorSubject<String>.seeded("");
  final _senha = BehaviorSubject<String>.seeded("");

  Observable<String> get login => _login.stream;
  Function(String) get setLogin => _login.sink.add;

  Observable<String> get senha => _senha.stream;
  Function(String) get setSenha => _senha.sink.add;

  Future<bool> signIn() async {
  

    //final ret = await _service.login(_login.value, _senha.value);

    
    
    
  }

  void dispose() {
    _login.close();
    _senha.close();
  }
}
