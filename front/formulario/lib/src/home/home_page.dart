// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_final_fields, unnecessary_new
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:formulario/src/home/home_controller.dart';
import 'package:formulario/util/my_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _con = new HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              imageBanner(),
              textFileEmail(),
              textFileName(),
              datefiel(),
              buttonRegister(),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageBanner() {
    return Container(
      margin: EdgeInsets.only(top: 100, bottom: 70),
      child: Image.asset(
        'assets/img/register.jpeg',
        width: 200,
        height: 200,
      ),
    );
  }

  Widget textFileEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: _con.EmailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo electronico',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColorDark,
          ),
          prefixIcon: Icon(
            Icons.email,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget textFileName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: _con.NameController,
        decoration: InputDecoration(
          hintText: 'Nombre',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColorDark,
          ),
          prefixIcon: Icon(
            Icons.person,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget datefiel() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Fecha',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(
            color: MyColors.primaryColorDark,
          ),
          prefixIcon: Icon(
            Icons.email,
            color: MyColors.primaryColor,
          ),
        ),
      ),
    );
  }

  Widget buttonRegister() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: ElevatedButton(
        onPressed: _con.register,
        child: Text('Registrarse'),
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }

  //3 CrearWidget DataPicker
  Widget getDatePicherWidget() {
    return Container();
  }
  //4. bton quw lanza muestro dialogo picker
}
