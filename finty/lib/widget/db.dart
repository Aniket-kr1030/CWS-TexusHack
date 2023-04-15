import 'dart:async';

import 'package:mysql1/mysql1.dart';

Future fun() async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost', port: 3306, user: 'root', db: 'mydb', password: ''));

  var result = await conn.query(
      'insert into users (name, phone, password, email) values (?, ?, ?)',
      ['Bob', '432532532', 'iamdeath', 'bob@bob.com']);

  print('Inserted row id=${result.insertId}');

  // Query the database using a parameterized query
  var results =
      await conn.query('select * from users where id = ?', [result.insertId]);

  for (var row in results) {
    print(
        'Name: ${row[0]}, phone: ${row[1]} password: ${row[2]},  email : ${row[3]}');
  }

  // Finally, close the connection
  await conn.close();
}
