import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubeVideoPlayer extends StatefulWidget {
  final String videoId;
  final String text1;
  final String text2;
  final String text3;

  YouTubeVideoPlayer({
    required this.videoId,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  @override
  _YouTubeVideoPlayerState createState() => _YouTubeVideoPlayerState();
}

class _YouTubeVideoPlayerState extends State<YouTubeVideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
              bottom: 5,
            ),
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.red,
              progressColors: const ProgressBarColors(
                playedColor: Colors.red,
                handleColor: Colors.redAccent,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5,),
            child: Text(
              widget.text1,
              style: const TextStyle(
                color: Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.text2,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.text3,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
