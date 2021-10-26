import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ContactForm extends StatelessWidget {

Widget fieldName() {
    return TextFormField (  
      decoration: InputDecoration ( 
        labelText: 'Nome:'
      )
    );
  }
  
Widget fieldEmail() {
    return TextFormField (  
      decoration: InputDecoration ( 
        labelText: 'E-mail:'
      )
    );
  }

Widget fieldPhone() {
    var mask = MaskTextInputFormatter(mask: '(##) # ####-####');
    return TextFormField (  
      inputFormatters: [mask],
      keyboardType: TextInputType.number,
      decoration: InputDecoration ( 
        labelText: 'Telefone:', 
        hintText: '(90) 9 9689-7589'
      )
    );
  }

Widget fieldURLImage() {
    return TextFormField (  
      decoration: InputDecoration ( 
        labelText: 'Endereço Foto:', 
        hintText: 'http://www.site.com'
      )
    );
  }


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: Text('Cadastro de Contato'),
        actions: [
          IconButton(icon: Icon(Icons.save), onPressed: null)
        ],
      ),
      body: Padding(  
        padding: EdgeInsets.all(10),
        child: Form(  
          child:  Column (
            children: [
              fieldName(),
              fieldEmail(),
              fieldPhone(), 
              fieldURLImage()
            ],
            ),
        ),
      ),
      
    );
  }
}

class ContacFormBack  =_ContactFormBack with $ContactFormBack
abstract class_ContactFormBack with store{
    Contact contact;
_ContactFormBack(BuildContext context){
    var parameter = ModalRoute.off(context).settings.arguments;
    contact = (parameter == null)? Contact() : parameter;
}
}
