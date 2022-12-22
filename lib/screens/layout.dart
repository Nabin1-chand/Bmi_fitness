import "package:flutter/material.dart";

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        // margin: const EdgeInsets.fromLTRB(20, 100, 40, 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.center,
            image: AssetImage('assets/fitness.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'commit to be fit, dare to  be great',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, shadows: [
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 2.0,
                          color: Colors.grey,
                        )
                      ]),
                    )))),
      ),
    );
  }
}
