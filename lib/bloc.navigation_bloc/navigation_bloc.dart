import 'package:bloc/bloc.dart';
import '../Paginas/homepage.dart';
import '../Paginas/Dispositivo.dart';
import '../Paginas/notificações.dart';
import '../Paginas/Perfil.dart';
import '../Paginas/Definições.dart';
import '../Paginas/amigos.dart';


enum NavigationEvents { 
  HomePageClickedEvent,
  DispositivoClickedEvent,
  NotifyPageClickedEvent,
  PerfilPageClickedEvent,
  ConfigPageClickedEvent,
  FriendClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async*{
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.DispositivoClickedEvent:
        yield DispoPage();
        break;
      case NavigationEvents.NotifyPageClickedEvent:
        yield NotifyPage();
        break;
      case NavigationEvents.PerfilPageClickedEvent:
        yield Perfil();
        break;
      case NavigationEvents.ConfigPageClickedEvent:
        yield ConfigPage();
        break;
      case NavigationEvents.FriendClickedEvent:
        yield FriendsPage();
        break;
    }
  }
}