import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_news/app/modules/home/views/widgets/header_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller.controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.blueAccent,
        ),
        builder: (context, player) => Scaffold(
              backgroundColor: Theme.of(context).primaryColor,
              body: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Obx(() => HeaderWiget(
                          icon: controller.selectedLogo.value,
                          label: controller.selectedlabel.value,
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    player,
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/icons/play.png",
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Header2(),
                    const SizedBox(
                      height: 25,
                    ),
                    Wrap(
                        runSpacing: 25,
                        spacing: 15,
                        children: controller.newsChannelList
                            .map(
                              (element) => NewsWidget(
                                act: () {
                                  controller.changeChannel(element);
                                },
                                news: element,
                              ),
                            )
                            .toList())
                  ],
                ),
              ),
              bottomNavigationBar: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'vaisakhperumthody@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(120, 120, 120, 1),
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
              ),
            ));
  }
}

class NewsWidget extends GetView<HomeController> {
  final News news;
  final Function act;
  const NewsWidget({Key? key, required this.news, required this.act})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            act();
          },
          child: Image.asset(
            news.logo,
            width: 40,
            height: 40,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 80,
          child: Text(
            news.label,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Poppins',
                fontSize: 10,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
        )
      ],
    );
  }
}
