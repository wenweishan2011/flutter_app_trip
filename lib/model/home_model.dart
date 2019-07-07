import 'common_model.dart';

class HomeModel {
  List<CommonModel> bannerList;
  List<CommonModel> subNavList;
  List<CommonModel> localNavList;
  HomeSalesBox salesBox;
  HomeConfig config;
  HomeGridNav gridNav;

  HomeModel(
      {this.bannerList,
      this.subNavList,
      this.localNavList,
      this.salesBox,
      this.config,
      this.gridNav});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['bannerList'] != null) {
      bannerList = new List<CommonModel>();
      (json['bannerList'] as List).forEach((v) {
        bannerList.add(new CommonModel.fromJson(v));
      });
    }
    if (json['subNavList'] != null) {
      subNavList = new List<CommonModel>();
      (json['subNavList'] as List).forEach((v) {
        subNavList.add(new CommonModel.fromJson(v));
      });
    }
    if (json['localNavList'] != null) {
      localNavList = new List<CommonModel>();
      (json['localNavList'] as List).forEach((v) {
        localNavList.add(new CommonModel.fromJson(v));
      });
    }
    salesBox = json['salesBox'] != null
        ? new HomeSalesBox.fromJson(json['salesBox'])
        : null;
    config =
        json['config'] != null ? new HomeConfig.fromJson(json['config']) : null;
    gridNav = json['gridNav'] != null
        ? new HomeGridNav.fromJson(json['gridNav'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bannerList != null) {
      data['bannerList'] = this.bannerList.map((v) => v.toJson()).toList();
    }
    if (this.subNavList != null) {
      data['subNavList'] = this.subNavList.map((v) => v.toJson()).toList();
    }
    if (this.localNavList != null) {
      data['localNavList'] = this.localNavList.map((v) => v.toJson()).toList();
    }
    if (this.salesBox != null) {
      data['salesBox'] = this.salesBox.toJson();
    }
    if (this.config != null) {
      data['config'] = this.config.toJson();
    }
    if (this.gridNav != null) {
      data['gridNav'] = this.gridNav.toJson();
    }
    return data;
  }
}

class HomeSalesBox {
  CommonModel bigCard2;
  CommonModel smallCard4;
  CommonModel smallCard3;
  CommonModel bigCard1;
  CommonModel smallCard2;
  CommonModel smallCard1;
  String icon;
  String moreUrl;

  HomeSalesBox(
      {this.bigCard2,
      this.smallCard4,
      this.smallCard3,
      this.bigCard1,
      this.smallCard2,
      this.smallCard1,
      this.icon,
      this.moreUrl});

  HomeSalesBox.fromJson(Map<String, dynamic> json) {
    bigCard2 = json['bigCard2'] != null
        ? new CommonModel.fromJson(json['bigCard2'])
        : null;
    smallCard4 = json['smallCard4'] != null
        ? new CommonModel.fromJson(json['smallCard4'])
        : null;
    smallCard3 = json['smallCard3'] != null
        ? new CommonModel.fromJson(json['smallCard3'])
        : null;
    bigCard1 = json['bigCard1'] != null
        ? new CommonModel.fromJson(json['bigCard1'])
        : null;
    smallCard2 = json['smallCard2'] != null
        ? new CommonModel.fromJson(json['smallCard2'])
        : null;
    smallCard1 = json['smallCard1'] != null
        ? new CommonModel.fromJson(json['smallCard1'])
        : null;
    icon = json['icon'];
    moreUrl = json['moreUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bigCard2 != null) {
      data['bigCard2'] = this.bigCard2.toJson();
    }
    if (this.smallCard4 != null) {
      data['smallCard4'] = this.smallCard4.toJson();
    }
    if (this.smallCard3 != null) {
      data['smallCard3'] = this.smallCard3.toJson();
    }
    if (this.bigCard1 != null) {
      data['bigCard1'] = this.bigCard1.toJson();
    }
    if (this.smallCard2 != null) {
      data['smallCard2'] = this.smallCard2.toJson();
    }
    if (this.smallCard1 != null) {
      data['smallCard1'] = this.smallCard1.toJson();
    }
    data['icon'] = this.icon;
    data['moreUrl'] = this.moreUrl;
    return data;
  }
}

class HomeConfig {
  String searchUrl;

  HomeConfig({this.searchUrl});

  HomeConfig.fromJson(Map<String, dynamic> json) {
    searchUrl = json['searchUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['searchUrl'] = this.searchUrl;
    return data;
  }
}

class HomeGridNav {
  GridNavItem flight;
  GridNavItem hotel;
  GridNavItem travel;

  HomeGridNav({this.flight, this.hotel, this.travel});

  HomeGridNav.fromJson(Map<String, dynamic> json) {
    flight = json['flight'] != null
        ? new GridNavItem.fromJson(json['flight'])
        : null;
    hotel = json['hotel'] != null
        ? new GridNavItem.fromJson(json['hotel'])
        : null;
    travel = json['travel'] != null
        ? new GridNavItem.fromJson(json['travel'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.flight != null) {
      data['flight'] = this.flight.toJson();
    }
    if (this.hotel != null) {
      data['hotel'] = this.hotel.toJson();
    }
    if (this.travel != null) {
      data['travel'] = this.travel.toJson();
    }
    return data;
  }
}

class GridNavItem {
  CommonModel item2;
  CommonModel item1;
  String endColor;
  CommonModel mainItem;
  CommonModel item4;
  CommonModel item3;
  String startColor;

  GridNavItem(
      {this.item2,
      this.item1,
      this.endColor,
      this.mainItem,
      this.item4,
      this.item3,
      this.startColor});

  GridNavItem.fromJson(Map<String, dynamic> json) {
    item2 =
        json['item2'] != null ? new CommonModel.fromJson(json['item2']) : null;
    item1 =
        json['item1'] != null ? new CommonModel.fromJson(json['item1']) : null;
    endColor = json['endColor'];
    mainItem = json['mainItem'] != null
        ? new CommonModel.fromJson(json['mainItem'])
        : null;
    item4 =
        json['item4'] != null ? new CommonModel.fromJson(json['item4']) : null;
    item3 =
        json['item3'] != null ? new CommonModel.fromJson(json['item3']) : null;
    startColor = json['startColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    data['endColor'] = this.endColor;
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    data['startColor'] = this.startColor;
    return data;
  }
}