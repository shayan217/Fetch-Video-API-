class VideoWorks {
  int? id;
  String? name;
  String? desc;
  int? price;
  bool? pricecheck;
  int? saleper;
  String? startDate;
  String? endDate;
  String? floorplan;
  Null? frontImage;
  int? userId;
  bool? referral;
  bool? status;
  bool? deleted;
  String? createdAt;
  String? updatedAt;
  int? projectId;
  int? sortno;
  List<Null>? dealImages;
  List<DealInventory>? dealInventory;
  Project? project;
  List<DealPaymentPlan>? dealPaymentPlan;
  List<DealCategory>? dealCategory;
  VideoWorks(
      {this.id,
      this.name,
      this.desc,
      this.price,
      this.pricecheck,
      this.saleper,
      this.startDate,
      this.endDate,
      this.floorplan,
      this.frontImage,
      this.userId,
      this.referral,
      this.status,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      this.projectId,
      this.sortno,
      this.dealImages,
      this.dealInventory,
      this.project,
      this.dealPaymentPlan,
      this.dealCategory});
  VideoWorks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    desc = json['desc'];
    price = json['price'];
    pricecheck = json['pricecheck'];
    saleper = json['saleper'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    floorplan = json['floorplan'];
    frontImage = json['frontImage'];
    userId = json['userId'];
    referral = json['referral'];
    status = json['status'];
    deleted = json['deleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    projectId = json['projectId'];
    sortno = json['sortno'];
    if (json['DealImages'] != null) {
      dealImages = <Null>[];
      json['DealImages'].forEach((v) {
        // dealImages!.add(new Null.fromJson(v));
      });
    }
    if (json['DealInventory'] != null) {
      dealInventory = <DealInventory>[];
      json['DealInventory'].forEach((v) {
        dealInventory!.add(new DealInventory.fromJson(v));
      });
    }
    project =
        json['project'] != null ? new Project.fromJson(json['project']) : null;
    if (json['DealPaymentPlan'] != null) {
      dealPaymentPlan = <DealPaymentPlan>[];
      json['DealPaymentPlan'].forEach((v) {
        dealPaymentPlan!.add(new DealPaymentPlan.fromJson(v));
      });
    }
    if (json['DealCategory'] != null) {
      dealCategory = <DealCategory>[];
      json['DealCategory'].forEach((v) {
        dealCategory!.add(new DealCategory.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['price'] = this.price;
    data['pricecheck'] = this.pricecheck;
    data['saleper'] = this.saleper;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['floorplan'] = this.floorplan;
    data['frontImage'] = this.frontImage;
    data['userId'] = this.userId;
    data['referral'] = this.referral;
    data['status'] = this.status;
    data['deleted'] = this.deleted;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['projectId'] = this.projectId;
    data['sortno'] = this.sortno;
    if (this.dealImages != null) {
      // data['DealImages'] = this.dealImages!.map((v) => v.toJson()).toList();
    }
    if (this.dealInventory != null) {
      data['DealInventory'] =
          this.dealInventory!.map((v) => v.toJson()).toList();
    }
    if (this.project != null) {
      data['project'] = this.project!.toJson();
    }
    if (this.dealPaymentPlan != null) {
      data['DealPaymentPlan'] =
          this.dealPaymentPlan!.map((v) => v.toJson()).toList();
    }
    if (this.dealCategory != null) {
      data['DealCategory'] = this.dealCategory!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class DealInventory {
  int? dealId;
  int? inventoryId;
  Inventory? inventory;
  DealInventory({this.dealId, this.inventoryId, this.inventory});
  DealInventory.fromJson(Map<String, dynamic> json) {
    dealId = json['dealId'];
    inventoryId = json['inventoryId'];
    inventory = json['inventory'] != null
        ? new Inventory.fromJson(json['inventory'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dealId'] = this.dealId;
    data['inventoryId'] = this.inventoryId;
    if (this.inventory != null) {
      data['inventory'] = this.inventory!.toJson();
    }
    return data;
  }
}
class Inventory {
  int? id;
  String? unitno;
  int? totalunit;
  String? sizestype;
  int? totalsize;
  int? saleprice;
  int? totalSalePrice;
  Null? salepriceofficial;
  Null? costamount;
  Null? fixedamount;
  Null? costfixedamount;
  int? userId;
  int? proptypeId;
  int? blockId;
  int? floorId;
  int? catId;
  int? proplocId;
  bool? status;
  bool? deleted;
  String? createdAt;
  String? updatedAt;
  int? projectId;
  Floors? floors;
  Floors? blocks;
  Floors? propertylocation;
  Floors? propertytype;
  Inventory(
      {this.id,
      this.unitno,
      this.totalunit,
      this.sizestype,
      this.totalsize,
      this.saleprice,
      this.totalSalePrice,
      this.salepriceofficial,
      this.costamount,
      this.fixedamount,
      this.costfixedamount,
      this.userId,
      this.proptypeId,
      this.blockId,
      this.floorId,
      this.catId,
      this.proplocId,
      this.status,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      this.projectId,
      this.floors,
      this.blocks,
      this.propertylocation,
      this.propertytype});
  Inventory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    unitno = json['unitno'];
    totalunit = json['totalunit'];
    sizestype = json['sizestype'];
    totalsize = json['totalsize'];
    saleprice = json['saleprice'];
    totalSalePrice = json['totalSalePrice'];
    salepriceofficial = json['salepriceofficial'];
    costamount = json['costamount'];
    fixedamount = json['fixedamount'];
    costfixedamount = json['costfixedamount'];
    userId = json['userId'];
    proptypeId = json['proptypeId'];
    blockId = json['blockId'];
    floorId = json['floorId'];
    catId = json['catId'];
    proplocId = json['proplocId'];
    status = json['status'];
    deleted = json['deleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    projectId = json['projectId'];
    floors =
        json['floors'] != null ? new Floors.fromJson(json['floors']) : null;
    blocks =
        json['blocks'] != null ? new Floors.fromJson(json['blocks']) : null;
    propertylocation = json['propertylocation'] != null
        ? new Floors.fromJson(json['propertylocation'])
        : null;
    propertytype = json['propertytype'] != null
        ? new Floors.fromJson(json['propertytype'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['unitno'] = this.unitno;
    data['totalunit'] = this.totalunit;
    data['sizestype'] = this.sizestype;
    data['totalsize'] = this.totalsize;
    data['saleprice'] = this.saleprice;
    data['totalSalePrice'] = this.totalSalePrice;
    data['salepriceofficial'] = this.salepriceofficial;
    data['costamount'] = this.costamount;
    data['fixedamount'] = this.fixedamount;
    data['costfixedamount'] = this.costfixedamount;
    data['userId'] = this.userId;
    data['proptypeId'] = this.proptypeId;
    data['blockId'] = this.blockId;
    data['floorId'] = this.floorId;
    data['catId'] = this.catId;
    data['proplocId'] = this.proplocId;
    data['status'] = this.status;
    data['deleted'] = this.deleted;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['projectId'] = this.projectId;
    if (this.floors != null) {
      data['floors'] = this.floors!.toJson();
    }
    if (this.blocks != null) {
      data['blocks'] = this.blocks!.toJson();
    }
    if (this.propertylocation != null) {
      data['propertylocation'] = this.propertylocation!.toJson();
    }
    if (this.propertytype != null) {
      data['propertytype'] = this.propertytype!.toJson();
    }
    return data;
  }
}
class Floors {
  String? name;
  Floors({this.name});
  Floors.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}
class Project {
  int? id;
  String? name;
  String? address;
  String? description;
  String? logo;
  Null? estimatedcost;
  int? locId;
  int? proplocId;
  int? projtypeId;
  int? cityId;
  String? unittype;
  String? sizestype;
  int? totalsize;
  int? userId;
  bool? status;
  bool? deleted;
  String? createdAt;
  String? updatedAt;
  String? floorPlan;
  String? locationIframe;
  String? video;
  int? companyId;
  List<ProjectsFeature>? projectsFeature;
  Floors? cities;
  Floors? location;
  Floors? projectstype;
  Floors? propertylocation;
  Project(
      {this.id,
      this.name,
      this.address,
      this.description,
      this.logo,
      this.estimatedcost,
      this.locId,
      this.proplocId,
      this.projtypeId,
      this.cityId,
      this.unittype,
      this.sizestype,
      this.totalsize,
      this.userId,
      this.status,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      this.floorPlan,
      this.locationIframe,
      this.video,
      this.companyId,
      this.projectsFeature,
      this.cities,
      this.location,
      this.projectstype,
      this.propertylocation});
  Project.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    description = json['description'];
    logo = json['logo'];
    estimatedcost = json['estimatedcost'];
    locId = json['locId'];
    proplocId = json['proplocId'];
    projtypeId = json['projtypeId'];
    cityId = json['cityId'];
    unittype = json['unittype'];
    sizestype = json['sizestype'];
    totalsize = json['totalsize'];
    userId = json['userId'];
    status = json['status'];
    deleted = json['deleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    floorPlan = json['floorPlan'];
    locationIframe = json['locationIframe'];
    video = json['video'];
    companyId = json['companyId'];
    if (json['ProjectsFeature'] != null) {
      projectsFeature = <ProjectsFeature>[];
      json['ProjectsFeature'].forEach((v) {
        projectsFeature!.add(new ProjectsFeature.fromJson(v));
      });
    }
    cities =
        json['cities'] != null ? new Floors.fromJson(json['cities']) : null;
    location =
        json['location'] != null ? new Floors.fromJson(json['location']) : null;
    projectstype = json['projectstype'] != null
        ? new Floors.fromJson(json['projectstype'])
        : null;
    propertylocation = json['propertylocation'] != null
        ? new Floors.fromJson(json['propertylocation'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['address'] = this.address;
    data['description'] = this.description;
    data['logo'] = this.logo;
    data['estimatedcost'] = this.estimatedcost;
    data['locId'] = this.locId;
    data['proplocId'] = this.proplocId;
    data['projtypeId'] = this.projtypeId;
    data['cityId'] = this.cityId;
    data['unittype'] = this.unittype;
    data['sizestype'] = this.sizestype;
    data['totalsize'] = this.totalsize;
    data['userId'] = this.userId;
    data['status'] = this.status;
    data['deleted'] = this.deleted;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['floorPlan'] = this.floorPlan;
    data['locationIframe'] = this.locationIframe;
    data['video'] = this.video;
    data['companyId'] = this.companyId;
    if (this.projectsFeature != null) {
      data['ProjectsFeature'] =
          this.projectsFeature!.map((v) => v.toJson()).toList();
    }
    if (this.cities != null) {
      data['cities'] = this.cities!.toJson();
    }
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    if (this.projectstype != null) {
      data['projectstype'] = this.projectstype!.toJson();
    }
    if (this.propertylocation != null) {
      data['propertylocation'] = this.propertylocation!.toJson();
    }
    return data;
  }
}
class ProjectsFeature {
  Feature? feature;
  ProjectsFeature({this.feature});
  ProjectsFeature.fromJson(Map<String, dynamic> json) {
    feature =
        json['feature'] != null ? new Feature.fromJson(json['feature']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.feature != null) {
      data['feature'] = this.feature!.toJson();
    }
    return data;
  }
}
class Feature {
  int? id;
  String? name;
  String? icon;
  String? createdAt;
  String? updatedAt;
  Feature({this.id, this.name, this.icon, this.createdAt, this.updatedAt});
  Feature.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    icon = json['icon'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
class DealPaymentPlan {
  int? dealId;
  int? paymentplanId;
  String? plantype;
  int? userId;
  int? downpayment;
  int? possessionamount;
  int? annualpayment;
  int? biannualpayments;
  int? quarterlypayments;
  int? noOfInstallments;
  int? amountPerInstallment;
  int? bookingamount;
  DealPaymentPlan(
      {this.dealId,
      this.paymentplanId,
      this.plantype,
      this.userId,
      this.downpayment,
      this.possessionamount,
      this.annualpayment,
      this.biannualpayments,
      this.quarterlypayments,
      this.noOfInstallments,
      this.amountPerInstallment,
      this.bookingamount});
  DealPaymentPlan.fromJson(Map<String, dynamic> json) {
    dealId = json['dealId'];
    paymentplanId = json['paymentplanId'];
    plantype = json['plantype'];
    userId = json['userId'];
    downpayment = json['downpayment'];
    possessionamount = json['possessionamount'];
    annualpayment = json['annualpayment'];
    biannualpayments = json['biannualpayments'];
    quarterlypayments = json['quarterlypayments'];
    noOfInstallments = json['noOfInstallments'];
    amountPerInstallment = json['amountPerInstallment'];
    bookingamount = json['bookingamount'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dealId'] = this.dealId;
    data['paymentplanId'] = this.paymentplanId;
    data['plantype'] = this.plantype;
    data['userId'] = this.userId;
    data['downpayment'] = this.downpayment;
    data['possessionamount'] = this.possessionamount;
    data['annualpayment'] = this.annualpayment;
    data['biannualpayments'] = this.biannualpayments;
    data['quarterlypayments'] = this.quarterlypayments;
    data['noOfInstallments'] = this.noOfInstallments;
    data['amountPerInstallment'] = this.amountPerInstallment;
    data['bookingamount'] = this.bookingamount;
    return data;
  }
}
class DealCategory {
  int? dealId;
  int? categoryid;
  Floors? category;
  DealCategory({this.dealId, this.categoryid, this.category});
  DealCategory.fromJson(Map<String, dynamic> json) {
    dealId = json['dealId'];
    categoryid = json['categoryid'];
    category =
        json['category'] != null ? new Floors.fromJson(json['category']) : null;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dealId'] = this.dealId;
    data['categoryid'] = this.categoryid;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    return data;
  }
}