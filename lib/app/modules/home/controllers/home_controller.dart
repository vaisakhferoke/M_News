import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomeController extends GetxController {
  RxList<News> newsChannelList = <News>[].obs;

  final selectedLogo = "assets/icons/assia.png".obs;
  final selectedlabel = "Assianet News".obs;

  final count = 0.obs;
  void changeChannel(News news) {
    selectedLogo.value = news.logo;
    selectedlabel.value = news.label;
    changeChannelUrl(news.url);
  }

  late YoutubePlayerController controller;
  late TextEditingController _idController;
  late TextEditingController _seekToController;

  void changeChannelUrl(String url) {
    controller.load(
      YoutubePlayer.convertUrlToId(url)!,
    );
  }

  @override
  void onInit() {
    super.onInit();
    controller = YoutubePlayerController(
      initialVideoId:
          YoutubePlayer.convertUrlToId("https://youtu.be/PNR06O9sSio")!,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: true,
        forceHD: true,
        enableCaption: false,
      ),
    );
    newsChannelList.add(News(
        label: "Assianet News",
        logo: "assets/icons/assia.png",
        url: "https://youtu.be/PNR06O9sSio"));
    newsChannelList.add(News(
        label: "Manorama news",
        logo: "assets/icons/manorama.png",
        url: "https://youtu.be/JtLBF_Gjeiw"));
    newsChannelList.add(News(
        label: "Matrubumi news",
        logo: "assets/icons/mathrubumi.png",
        url: "https://youtu.be/YGEgelAiUf0"));
    newsChannelList.add(News(
        label: "Kairali news",
        logo: "assets/icons/kairali.png",
        url: "https://youtu.be/5uMM5H1-hL0"));
    newsChannelList.add(News(
        label: "News 18",
        logo: "assets/icons/24.png",
        url: "https://youtu.be/ehbpeMBKKC8"));
    newsChannelList.add(News(
        label: "Media One",
        logo: "assets/icons/media.png",
        url: "https://youtu.be/yIe3anl_2Ks"));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
  }

  void increment() => count.value++;
}

class News {
  News({required this.label, required this.logo, required this.url});

  String label;
  String logo;
  String url;
}
