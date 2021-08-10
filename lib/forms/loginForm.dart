import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 350,
        //width: MediaQuery.of(context).size.width * 0.7,
        //height: MediaQuery.of(context).size.height * 0.9,
        child: Form(
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.account_box_outlined,size: 100,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: TextFormField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: TextFormField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text('Login'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){}, child: Text('Register'),),
                      TextButton(onPressed: (){}, child: Text('Forgot Password'),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
