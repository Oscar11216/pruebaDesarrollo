// ignore_for_file: non_constant_identifier_names, missing_return

import 'package:flutter/material.dart';
import 'package:formulario/src/models/response_api.dart';
import 'package:formulario/src/models/user.dart';
import 'package:formulario/src/provider/users_provider.dart';

class HomeController {
  BuildContext context;
  TextEditingController EmailController = TextEditingController();
  TextEditingController NameController = TextEditingController();

  UsersProvider usersProvider = UsersProvider();

  Future init(BuildContext context) {
    this.context = context;
    usersProvider.init(context);
  }

  void register() async {
    String email = EmailController.text.trim();
    String name = NameController.text;

    User user = User(
      email: email,
      name: name,
    );

    ResponseApi responseApi = await usersProvider.create(user);

    // ignore: avoid_print
    print(email);
    print(name);
    print('RESPUESTA: ${responseApi.message}');
  }
}
