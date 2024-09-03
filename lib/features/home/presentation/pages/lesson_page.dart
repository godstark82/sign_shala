import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_shala/features/home/data/models/course_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LessonPage extends StatefulWidget {
  final LessonModel lesson;
  const LessonPage({super.key, required this.lesson});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  late YoutubePlayerController ytController;

  @override
  void initState() {
    ytController = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.lesson.videoUrl!)!,
        flags: YoutubePlayerFlags(
          autoPlay: true,
        ));
    super.initState();
  }
  

  @override
  void dispose() {
    ytController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            title: Text(widget.lesson.name),
          ),
          SliverToBoxAdapter(
              child: Container(
            margin: EdgeInsets.all(16),
            height: context.height * 0.25,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey),
                  BoxShadow(color: Colors.grey),
                  BoxShadow(color: Colors.grey),
                  BoxShadow(color: Colors.grey),
                ],
                borderRadius: BorderRadius.circular(16)),
            child: YoutubePlayer(controller: ytController),
          )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.lesson.desc,
                    style: TextStyle(fontSize: 18),
                  ),
                  if (widget.lesson.img != null)
                    Text('Images related to this lesson'),
                  if (widget.lesson.img != null)
                    Image.network(widget.lesson.img!)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
