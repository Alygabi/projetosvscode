void main() async{
  await buscarDados();
  print('Carregamento de tela');
  print('Botões');
  print('Campos');
  print('pictures');


print('A função Future, permite que o trabalho seja executado de forma assíncrona, para liberar treads ou outros segmentos quaisqer para que não seja bloqueado e também para trabalhar com ações ou dados futuros.');
print('A função Async, determina se uma ação será assincrona, ou seja, enquanto o processo não é finalizado, o app pode continuar executando outras tarefas.');
print('A função Await, permite que um dado aguarde o processamento de outro dado antes da execução.');
print('A progrmação assincrona surgiu da necessidade de o programa não ficar preso na demora de um comando. Com essa função, traz a possiblilidade de buscar dados sem demora, enquanto os outros comandos são caregados.');

}

Future buscarDados(){
  return Future.delayed(Duration(seconds:5), () => print('Fazendo Loading'));
  

}

final createTable ='''
CREATE TABLE contact(
  id INT NOT NULL PRIMARY KEY
  ,nome VARCHAR(250) NOT NULL
  ,telefone CHAR(18) NOT NULL
  ,email VARCHAR(100) NOT NULL
  ,url_avatar VARCHAR(300) NOT NULL
   
)
''';
final insert1='''
INSERT INTO contact(nome, telefone, email,url_avatar)
VALUES('Roseta', '(86) 9 9541-7863', 'rosetalark@gmail.com','https://cdn.pixabay.com/photo/2021/07/13/15/57/woman-6463926_960_720.jpg' )

''';
final insert2='''
INSERT INTO contact(nome, telefone, email,url_avatar)
VALUES('Cinder', '(86) 9 9641-8537', 'throialcinder@gmail.com', 'https://cdn.pixabay.com/photo/2021/05/10/08/00/woman-6242836_960_720.png')
''';