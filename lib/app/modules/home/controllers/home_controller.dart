import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vipapp/app/models/fastShoppingRecomItemModel.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  PageController pageController = PageController(initialPage: 0);
  ScrollController scrollController = ScrollController();
  final pageIndex = 0.obs;
  final pageTabs = [
    {
      'title': '推荐',
      'bgColor': Color.fromRGBO(242, 229, 255, 1),
      // 'bgImage': 'https://h2a.appsimg.com/b.appsimg.com/upload/momin/2025/05/29/84/1748515538665_750x660_90.png.webp',
      'banner': 'assets/images/recommend.png'
    },
    {
      'title': '女装',
      'bgColor': Color.fromRGBO(255, 25, 102, 1),
      'banner': 'assets/images/recommend.png'
    },
    {
      'title': '美妆',
      'bgColor': Color.fromRGBO(213, 0, 39, 1),
      'banner': 'assets/images/recommend.png'
    },
     {
      'title': '运动',
      'bgColor': Color.fromRGBO(255, 101, 30, 1),
      'banner': 'assets/images/recommend.png'
    },
    {
      'title': '男装',
      'bgColor': Color.fromRGBO(47, 140, 199, 1),
      'banner': 'assets/images/recommend.png'
    },
    {
      'title': '鞋靴',
      'bgColor': Color.fromRGBO(255, 77, 141, 1),
      'banner': 'assets/images/recommend.png'
    },
     {
      'title': '母婴',
      'bgColor': Color.fromRGBO(253, 156, 171, 1),
      'banner': 'assets/images/recommend.png'
    },
  {
      'title': '家居',
      'bgColor': Color.fromRGBO(255, 101, 30, 1),
      'banner': 'assets/images/recommend.png'
    },
    {
      'title': '数码',
      'bgColor': Color.fromRGBO(74, 103, 219, 1),
      'banner': 'assets/images/recommend.png'
    },
      {
      'title': '内衣',
      'bgColor': Color.fromRGBO(199, 164, 139, 1),
      'banner': 'assets/images/recommend.png'
    },
 {
      'title': '家电',
       'bgColor': Color.fromRGBO(74, 103, 219, 1),
      'banner': 'assets/images/recommend.png'
    },

    {
      'title': '箱包',
      'bgColor': Color.fromRGBO(255, 25, 102, 1),
      'banner': 'assets/images/recommend.png'
    },
   
    {
      'title': '洗护',
      'bgColor': Color.fromRGBO(114, 198, 209, 1),
      'banner': 'assets/images/recommend.png'
    },
    
    {
      'title': '箱包',
      'bgColor': Color.fromRGBO(255, 77, 141, 1),
      'banner': 'assets/images/recommend.png'
    },
     {
      'title': '饰品',
      'bgColor': Color.fromRGBO(164, 23, 28, 1),
      'banner': 'assets/images/recommend.png'
    },
    {
      'title': '食品',
      'bgColor': Color.fromRGBO(242, 150, 76, 1),
      'banner': 'assets/images/recommend.png'
    },
    {
      'title': '保健',
      'bgColor': Color.fromRGBO(105, 190, 104, 1),
      'banner': 'assets/images/recommend.png'
    },

    {
      'title': '宠物',
      'bgColor': Color.fromRGBO(255, 128, 18, 1),
      'banner': 'assets/images/recommend.png'
    },
    {
      'title': '户外',
      'bgColor': Color.fromRGBO(154, 181, 47, 1),
      'banner': 'assets/images/recommend.png'
    },
  ];
  RxMap<String, dynamic> currTab = <String, dynamic>{}.obs;
  // 闪购推荐列表
  final fastShoppingRecomList = <FastShoppingRecomItemModel>[
    FastShoppingRecomItemModel(
      id: 1,
      title: '冲锋衣',
      image: 'assets/images/temp/fastShopping1.jpg',
      price: '208',
      oldPrice: '--',
    ),
    FastShoppingRecomItemModel(
      id: 2,
      title: '连衣裙',
      image: 'assets/images/temp/fastShopping2.jpg',
      price: '958',
      oldPrice: '--',
    ),
    FastShoppingRecomItemModel(
      id: 3,
      title: '吊坠',
      image: 'assets/images/temp/fastShopping3.jpg',
      price: '612',
      oldPrice: '--',
    ),
    
    
  ].obs;
  @override
  void onInit() {
    super.onInit();
    currTab.value = pageTabs[0];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
