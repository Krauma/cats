import 'dart:convert';

List<CatSearchResult> searchedCatsFromJson(String str) => List<CatSearchResult>.from(
    json.decode(str).map((x) => CatSearchResult.fromJson(x)));

class CatSearchResult {
  int? adaptability;
  int? affectionLevel;
  String? altNames;
  int? childFriendly;
  String? countryCode;

  String? description;
  int? dogFriendly;
  int? energyLevel;
  int? hairless;
  int? healthIssues;

  String? id;
  int? indoor;
  int? intelligence;
  String? lifeSpan;
  String? name;
  int? natural;
  String? origin;
  int? rare;
  String? referenceImageId;
  int? shortLegs;
  int? socialNeeds;
  int? strangerFriendly;
  int? suppressedTail;
  String? temperament;

  CatSearchResult(
      {this.adaptability,
      this.affectionLevel,
      this.altNames,
      this.childFriendly,
      this.countryCode,
      this.description,
      this.dogFriendly,
      this.energyLevel,
      this.hairless,
      this.healthIssues,
      this.id,
      this.indoor,
      this.intelligence,
      this.lifeSpan,
      this.name,
      this.natural,
      this.origin,
      this.rare,
      this.referenceImageId,
      this.shortLegs,
      this.socialNeeds,
      this.strangerFriendly,
      this.suppressedTail,
      this.temperament});

  factory CatSearchResult.fromJson(Map<String, dynamic> json) {
    return CatSearchResult(
        adaptability: json['adaptability'],
        affectionLevel: json['affectionLevel'],
        altNames: json['altNames'],
        childFriendly: json['childFriendly'],
        countryCode: json['countryCode'],
        description: json['description'],
        dogFriendly: json['dogFriendly'],
        energyLevel: json['energyLevel'],
        hairless: json['hairless'],
        healthIssues: json['healthIssues'],
        id: json['id'],
        indoor: json['indoor'],
        intelligence: json['intelligence'],
        lifeSpan: json['lifeSpan'],
        name: json['name'],
        natural: json['natural'],
        origin: json['origin'],
        rare: json['rare'],
        referenceImageId: json['referenceImageId'],
        shortLegs: json['shortLegs'],
        socialNeeds: json['socialNeeds'],
        strangerFriendly: json['strangerFriendly'],
        suppressedTail: json['suppressedTail'],
        temperament: json['temperament']);
  }
}
