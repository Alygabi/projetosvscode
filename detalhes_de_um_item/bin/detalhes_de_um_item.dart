import 'package:flutter/material.dart;';


class ContactDetails extends StatelessWidget{
  @Override
  widget build(BuildContext){
    var_back = ContactDetailsBack(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstructions constraints)[
        
        return Scoffold[
          body: LIstView(
            children:[
              (Uri.TryParse(contact.urAvatar)is.Absolute)?
              CircleAvatar(
                backgroundimage: NetworkImage(contact.urlAvatar),
                radius radius
                )
                CircleAvatar(
                  child: icon(
                    icons.person,
                    size:width/2,
                 
                  )
                  Center(
                    child: text($'{contact.nome}'), style:TextStyle(fontsize:30),
                  ),
                  cord(
                    child ListTitle(
                      title: text('Telefone:'),
                      subtitle: Text('$(contact.telefone)'),
                    ),
                    cord(
                    child ListTitle(
                      title: text('E-mail:'),
                      subtitle: Text('$(contact.email)'),
                    ),
                  )
                )
            ],
          ),
          
        ]
        floatingActionButton: FloatingActionButton(
          child: icon(icons.arrow_back),
          onPressed:(){
            _back.goToBack();
          }
        )
      ]
      }
    )
  }
}
