import 'package:creativetodo/database/models/person.dart';
import 'package:creativetodo/widgets/custom_drawer.dart';
import 'package:creativetodo/widgets/custom_loading.dart';
import 'package:creativetodo/widgets/empty_todo_card.dart';
import 'package:creativetodo/widgets/gradient_background.dart';
import 'package:creativetodo/widgets/todo_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;
  PageController _pageController;
  int _pageIndex = 0;
  Person _person = Person();

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        microseconds: 300,
      ),
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.8,
    );

    _createPerson();
  }

  void _createPerson() async {
    final response = await http.get('https://randomuser.me/api/');

    final json = convert.jsonDecode(response.body)['results'].first;
    _person = Person.fromJson(json);
    setState(() {});
  }

  String get diaAtual => DateFormat('EEEE').format(DateTime.now());

  String get mesAtual => DateFormat('MMM').format(DateTime.now());

  String get dataAtual => DateFormat('d').format(DateTime.now());

  Future<Person> get person async => await _person;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;
    final double heigth = size.height;

    return GradientBackground(
      color: Colors.blueAccent,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: CustomDrawer(
          person: _person,
        ),
        appBar: AppBar(
          title: Text(
            'TODO',
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: .0,
                left: width * .1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      diaAtual,
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    '$dataAtual - $mesAtual',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: PageView.builder(
                itemCount: 1,
                controller: _pageController,
                itemBuilder: (BuildContext _, int index) =>
//                    EmptyTodoCard(),
                TodoCard(),
              ),
            ),
            SizedBox(
              height: heigth * .05,
            ),
          ],
        ),
      ),
    );
  }
}
