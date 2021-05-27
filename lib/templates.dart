import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'pages.dart';


class AdaptiveBuilder extends StatelessWidget {
  final Widget? child;
  AdaptiveBuilder(this.child);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper.builder(
      this.child,
      minWidth: 450,
      maxWidth: 2460,
      defaultScale: true,
      breakpoints: [
        ResponsiveBreakpoint.resize(600, name: MOBILE),
        ResponsiveBreakpoint.autoScale(800, name: TABLET),
        ResponsiveBreakpoint.resize(1200, name: DESKTOP),
        ResponsiveBreakpoint.autoScale(2460, name: '4k'),
      ],
    );
  }
}

class Template extends StatelessWidget {
  final int checkpoint;
  final String title, picture, mainText;
  final List options;
  Template(
      this.checkpoint, this.title, this.picture, this.mainText, this.options);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Scorching Planet',
      builder: (context, widget) => AdaptiveBuilder(widget),
      debugShowCheckedModeBanner: false,
      home: TemplateScaffold(checkpoint, title, picture, mainText, options),
      theme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class UI extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(UI oldDelegate) => false;
}

class TemplateScaffold extends StatelessWidget {
  final int checkpoint;
  final String title, picture, mainText;
  final List options;
  TemplateScaffold(
      this.checkpoint, this.title, this.picture, this.mainText, this.options);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'The Scorching Planet',
          style: GoogleFonts.poiretOne(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.only(
                    bottom: 0.05 * height, right: 0.075 * width),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: Text(
                        'Global\nWarming\nCheckpoint $checkpoint',
                        style: GoogleFonts.dosis(
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                          height: 1.25,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 0.05 * height)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(25.0),
                        textStyle: GoogleFonts.montserrat(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.25,
                        ),
                        primary: Colors.blueGrey[800],
                        elevation: 50.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Colors.white,
                            width: 1.5,
                          ),
                        ),
                      ),
                      child: Text(
                        'CONTINUE',
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                'Checkpoint $checkpoint',
                                style: GoogleFonts.dosis(
                                  fontSize: 30.0,
                                ),
                              ),
                              content: Text(
                                mainText,
                                style: GoogleFonts.openSans(
                                  fontSize: 24.0,
                                ),
                              ),
                              actions: [
                                for (String e in options)
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      elevation: 50.0,
                                    ),
                                    child: Text(
                                      e,
                                      textAlign: TextAlign.end,
                                      style: GoogleFonts.dosis(
                                        fontSize: 27.0,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => getTemplate(e),
                                        ),
                                      );
                                    },
                                  ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            ClipPath(
              clipper: UI(),
              child: Container(
                color: Colors.blueGrey[900],
                child: Container(
                  padding: EdgeInsets.only(top: 0.05 * height, left: 0.075 * width),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.dosis(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Flexible(
                            flex: 3,
                            child: ClipRect(
                              child: Container(
                                child: Image.asset(
                                  picture,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
