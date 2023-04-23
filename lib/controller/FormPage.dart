import 'package:flutter/material.dart';
import 'package:flutter_sample/view/widget/ToastUtil.dart';

class FormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}

class _LoginPageState extends State<FormPage> {

  // 全局key用来获取Form表单组件
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();
  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text("表单"),),
      body: Form(
          key: loginKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: new InputDecoration(
                  labelText: '请输入用户名',
                ),
                onSaved: (value) {
                  username = value;
                },
              ),
              TextFormField(
                decoration: new InputDecoration(
                  labelText: '请输入密码',
                ),
                obscureText: true,
                validator: (value) {
                  return value.length < 6 ? "密码长度不够6位" : null;
                },
                onSaved: (value) {
                  password = value;
                },
              ),
              SizedBox(
                width: double.infinity,
                height: 42.0,
                child: ElevatedButton(
                  onPressed: login,
                  child: Text('登录', style: TextStyle(fontSize: 18.0),),
                ),
              )

            ],
          ),
      ),
    );
  }

  void login() {
    var loginForm = loginKey.currentState;

    if (loginForm.validate()) {
      loginForm.save();
      ToastUtil.show('userName:' + username + '\npassword:' + password);
    }
  }

}