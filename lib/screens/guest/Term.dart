import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  @override
  _TermScreenState createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
 ScrollController? _scrollController ;
  bool _termsReaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if(_scrollController.offset >=
          _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange){
        setState(() => _termsReaded = true);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text('Terms & Conditions',
            style: TextStyle(
              color: Colors.black,),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: (){},),
        ),
        body: Padding(
          padding:  EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            bottom: 20.0,

          ),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded
                (child: SingleChildScrollView(
                controller: _scrollController,
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(" Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim sit amet venenatis urna cursus eget nunc. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Egestas sed tempus urna et. In nulla posuere sollicitudin aliquam. Iaculis eu non diam phasellus vestibulum. Euismod nisi porta lorem mollis aliquam ut. Vitae turpis massa sed elementum tempus egestas sed. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Nisl nunc mi ipsum faucibus vitae aliquet nec. A scelerisque purus semper eget duis at tellus at urna.\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim sit amet venenatis urna cursus eget nunc. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Egestas sed tempus urna et. In nulla posuere sollicitudin aliquam. Iaculis eu non diam phasellus vestibulum. Euismod nisi porta lorem mollis aliquam ut. Vitae turpis massa sed elementum tempus egestas sed. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Nisl nunc mi ipsum faucibus vitae aliquet nec. A scelerisque purus semper eget duis at tellus at urna.\n \n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim sit amet venenatis urna cursus eget nunc. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Egestas sed tempus urna et. In nulla posuere sollicitudin aliquam. Iaculis eu non diam phasellus vestibulum. Euismod nisi porta lorem mollis aliquam ut. Vitae turpis massa sed elementum tempus egestas sed. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Nisl nunc mi ipsum faucibus vitae aliquet nec. A scelerisque purus semper eget duis at tellus at urna.\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim sit amet venenatis urna cursus eget nunc. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Egestas sed tempus urna et. In nulla posuere sollicitudin aliquam. Iaculis eu non diam phasellus vestibulum. Euismod nisi porta lorem mollis aliquam ut. Vitae turpis massa sed elementum tempus egestas sed. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Nisl nunc mi ipsum faucibus vitae aliquet nec. A scelerisque purus semper eget duis at tellus at urna.\n \n Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim sit amet venenatis urna cursus eget nunc. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Egestas sed tempus urna et. In nulla posuere sollicitudin aliquam. Iaculis eu non diam phasellus vestibulum. Euismod nisi porta lorem mollis aliquam ut. Vitae turpis massa sed elementum tempus egestas sed. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Nisl nunc mi ipsum faucibus vitae aliquet nec. A scelerisque purus semper eget duis at tellus at urna.\n "),

                  ],
                ),
              )),

              SizedBox(
                height: 15.0,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(
                    vertical: 15.0
                ),
                color: Theme.of(context).primaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                onPressed:!_termsReaded ? null :  () => print('accept'),
                child: Text('accept & continue'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
     ),
    );
  }
}
