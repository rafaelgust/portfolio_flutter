import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../widgets/window_content.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'projects'.i18n(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) => Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: const Center(
                child: WindowContent(
                  width: 350,
                  height: 500,
                  title: 'Projeto',
                  content: Center(
                    child: Text('dsad'),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
