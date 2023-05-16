import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../utility/video_utility.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoResponse extends StatefulWidget {
  const VideoResponse({super.key});

  @override
  State<VideoResponse> createState() => _CarousalState();
}

class _CarousalState extends State<VideoResponse> {
  late final CarouselController _controller;
  final String? videoId1 =
      YoutubePlayer.convertUrlToId('https://youtu.be/tnP6WJNEN24');
  final String? videoId2 =
      YoutubePlayer.convertUrlToId('https://youtu.be/DLgyEtzOGYo');
  final String? videoId3 =
      YoutubePlayer.convertUrlToId('https://youtu.be/bZ1fEyUYaRs');
  final String? videoId4 =
      YoutubePlayer.convertUrlToId('https://youtu.be/SOwQJqdcgAo');
  final String? videoId5 =
      YoutubePlayer.convertUrlToId('https://youtu.be/b6oAvadGapY');

  @override
  void initState() {
    super.initState();
    _controller = CarouselController();
  }

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
        width: double.infinity,
        child: Stack(
          children: [
            CarouselSlider(
              carouselController: _controller,
              items: [
                YouTubeVideoPlayer(
                  videoId: videoId1!,
                  text1:
                      'please follow the group and take your experience.Thank you Babynama family',
                  text2: 'Mr. and Mrs. Sharma',
                  text3: 'Parents of 4 month old baby',
                ),
                YouTubeVideoPlayer(
                  videoId: videoId2!,
                  text1:
                      "It is a life changer.You can't go to offline doctor all the time,doctors here are very polite and very efficient",
                  text2: 'Shipra',
                  text3: 'Mother of 3 month old baby',
                ),
                YouTubeVideoPlayer(
                  videoId: videoId3!,
                  text1:
                      'My baby had breadthing issues,doctors here identified it and helped me calm down a lot.I get replies on my whatsApp,very helpful',
                  text2: 'Abha',
                  text3: 'Mother of 4 month old',
                ),
                YouTubeVideoPlayer(
                  videoId: videoId4!,
                  text1:
                      'The Doctors are easily available in a matter of minutes....it is really worth taking the plan.',
                  text2: 'Charu Chandrana',
                  text3: 'Mother of 7 month old baby',
                ),
                YouTubeVideoPlayer(
                  videoId: videoId5!,
                  text1:
                      'Dr.Sumitra & Babynama have helped me in so many ways... suggest this for all mothers',
                  text2: 'Ruchi Garg',
                  text3: 'Mother of 7 month old twins',
                ),
              ],
              options: CarouselOptions(
                height: isLandScape ? 450 : 300,
                enlargeCenterPage: true,
                autoPlay: false,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: isLandScape?0.5:1,
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
                onPressed: () => _controller.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                ),
                onPressed: () => _controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                ),
              ),
            ),
          ],
        ));
  }
}
