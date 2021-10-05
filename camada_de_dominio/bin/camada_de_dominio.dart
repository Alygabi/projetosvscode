import 'package:get_it/get_it.dart';

class ContactService{
  var dao = ContactDAOimpl(
    save(Contact contact);
    remove(int id);
    Future<List<Contact>>find();
  )
  setupInjection(){
    Getit getit = getit.I;
    getit.registerSingleton<ContactDAO>(ContactDAOImpl());
  
  
  print('A camada de dominio é tambem conhecida como camada de negócio ou objetos de negócio, nela estão localizadas as classes que fazem do dominio do problema, ou seja, classes que fazem parte de objetos que descrevem o problema.' );
  print('A injeção de dependencia é um padrão de projeto usado para evitar um alto nivel de acoplamento de codigos, com a injeção, é mais facil trocar uma dependencia, devido a inversao dos controles, ocorre a reultilização do có,digo, assim as classes não controlam quando a dependencia é criada.');
  }
  
}

