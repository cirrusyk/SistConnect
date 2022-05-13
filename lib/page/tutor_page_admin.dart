import 'package:flutter/material.dart';
import 'package:sistconnect/flutter_flow/flutter_flow_widgets.dart';
import 'package:sistconnect/page/tutor_create.dart';
import 'package:sistconnect/page/tutoring_admin.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'tutoring.dart';

class TutorPageAdmin extends StatefulWidget {
  const TutorPageAdmin({Key key}) : super(key: key);

  @override
  State<TutorPageAdmin> createState() => _TutorPageAdminState();
}

class _TutorPageAdminState extends State<TutorPageAdmin> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromRGBO(19, 22, 41, 1),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Tutoring'),
          backgroundColor: const Color.fromRGBO(19, 22, 41, 1),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 10),
                  child: FFButtonWidget(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TutorForm()),
                      );
                    },
                    text: 'Add new tutoring event',
                    options: FFButtonOptions(
                      height: 40,
                      color: Color(0xFF7879F1),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Mulish',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 50,
                    ),
                  ),
                ),
                TutorsAdmin(
                    title: "Science",
                    date: "25 Dec - 26 Nov",
                    description:
                        "Lorem ipsum is a name for a common type of placeholder text. Also known as filler or dummy text, this is simply text copy that serves to fill a space without actually saying anything meaningful. It's essentially nonsense text that still gives an idea of what real words will look like in the final product."),
                TutorsAdmin(
                    title: "Math",
                    date: "25 Dec - 26 Nov",
                    description:
                        "Lorem ipsum is a name for a common type of placeholder text. Also known as filler or dummy text, this is simply text copy that serves to fill a space without actually saying anything meaningful. It's essentially nonsense text that still gives an idea of what real words will look like in the final product."),
                TutorsAdmin(
                    title: "Physical",
                    date: "25 Dec - 26 Nov",
                    description:
                        "Lorem ipsum is a name for a common type of placeholder text. Also known as filler or dummy text, this is simply text copy that serves to fill a space without actually saying anything meaningful. It's essentially nonsense text that still gives an idea of what real words will look like in the final product."),
                TutorsAdmin(
                    title: "Home Edu",
                    date: "25 Dec - 26 Nov",
                    description:
                        "Lorem ipsum is a name for a common type of placeholder text. Also known as filler or dummy text, this is simply text copy that serves to fill a space without actually saying anything meaningful. It's essentially nonsense text that still gives an idea of what real words will look like in the final product."),
              ],
            ),
          ],
        ),
      );
}
