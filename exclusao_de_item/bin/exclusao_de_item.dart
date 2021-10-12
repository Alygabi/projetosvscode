import 'dart:html';


class ContactListBack=_ContactListBack with _$ContactListBack;
abstract class _ContactLitstBack with Store{

  @observable
  Future<List<Contact>>list;

  @action
  AtualizeList([dynamic value]){
    list = _service.find();
  }

  _ContactLitstBack(){
    AtualizeList();
  }
}

Widget iconRemoveButton(BuildContext context,Function remove){
  return IconButton(
    icon: Icon(Icons.delete),
    color: Colors.red,
    onPressed:(){
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Deletar'),
          content: Text('Você tem ceteza?'),
          actions: [
            FlatButton[
              child:Text('Não'),
              onPressed: (){
                Navigator.of(context).pop();
              }
              FlatButton[
                child: Text('Sim'),
                onPressed: remove
              ]
            ]
          ]
        )
      )
    }
  )
}
}