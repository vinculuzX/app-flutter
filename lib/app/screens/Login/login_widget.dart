import 'package:aplicativo_frontend_flutter/app/screens/TermOfUse/termofuse_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class LoginScreen extends StatelessWidget {
  var maskCPF = new MaskedTextController(mask:'000.000.000.00');
  var maskPhone = new MaskedTextController(mask:'(00) 000000000');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image:new DecorationImage(
            image: new AssetImage('assets/background_login.png'),
            fit: BoxFit.cover
          )
        ),
        child:ListView(
          padding:EdgeInsets.only(
            top:60,
            left:15,
            right:15
          ),
          children: <Widget>[
            SizedBox(
              width: 75,
              height:75,
              child: Image.asset('assets/estacio.png'),
            ),
            SizedBox(height: 100),
            Text(
              ' É simples estar conectado.'  ,
              style:TextStyle(
                fontSize: 34, 
                color:Colors.white, 
                fontWeight:FontWeight.w700
                ) ,          
            ),
            SizedBox(height: 50),
            TextFormField(
              keyboardType:TextInputType.number,
              decoration: InputDecoration(
                labelText: 'CPF',
                labelStyle: TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                border: new UnderlineInputBorder(
                  borderSide: new BorderSide(
                    color:Color(0xFFFFFFFF),
                    width: 1.0,
                    style: BorderStyle.solid
                  )
                ),
                focusedBorder: new UnderlineInputBorder(
                  borderSide: BorderSide(
                    color:Colors.white )
                )
              ),
              controller: maskCPF,
              style: TextStyle(fontSize: 16,color:Colors.white,),
            ),
             SizedBox(height: 15),
            TextFormField(
              keyboardType:TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'DDD + Celular Cadastrado',
                labelStyle: TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                focusedBorder: new UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white
                  )
                )
              ),
              controller: maskPhone,
              style: TextStyle(fontSize: 16,color:Colors.white,),
            ),
            SizedBox(height: 50),
            Container(
              height:50,
              alignment: Alignment.bottomCenter,
              decoration: new BoxDecoration(
                color:Color(0xFF24BBCA) ,
                borderRadius:BorderRadius.all(Radius.circular(40))
              ),
              child:SizedBox.expand(
                child:FlatButton(
                  child:
                  Text('Cadastrar',
                  style: TextStyle(color: Colors.white , fontSize: 14 ),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TermOfUse()));
                  },
                )
              )
              
            )
          ],
        )
      ),
      
    );   
  }
}