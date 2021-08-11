import 'dart:core';
import './plant_model.dart';

List<PlantModel> _plantData = [
  PlantModel(
    id: 0,
    name: "Aranda singa gold",
    imageAsset: "assets/images/plant-1.jpg",
    info:"Hybrid created by Singapore Botanic Gardens - cross between Arachnis hookeriana and Vanda Bangkhuntian Gold.This is just one of the 2,000 hybrids that can be spotted at the National Orchid Garden!",
  ),
  PlantModel(
      id: 1,
      name: "Bougainvillea",
      imageAsset: "assets/images/plant-2.jpg",
      info:"The Bougainvillea is a signature plant in the Singapore landscape. It is extensively planted here because it flowers all year round in our local hot and wet weather conditions, and flowering is encouraged by controlling the amount of water and fertiliser that plants receive.",
  ),

  PlantModel(
      id: 2,
      name: "Butterfly Pea",
      imageAsset: "assets/images/plant-3.jpg",
      info:"Family Name:	Fabaceae (Leguminosae)."
          "It is a slender climbing legume with short, soft hairs on the stem. It has deep roots and ornamental flowers.",
  ),
  PlantModel(
    id: 3,
    name: "Common Dianella",
    imageAsset: "assets/images/plant-4.jpg",
    info:"(Asphodelaceae), Native to Singapore (Common). It is a herb that consists of creeping, much-branched rhizome (horizontal stem growing at ground level) from which arise at regular intervals, roots and up to 2 m-tall clumping, flowering stems.",
  ),
  PlantModel(
    id: 4,
    name: "Dendrobium shavin white",
    imageAsset: "assets/images/plant-5.jpg",
    info:"An epiphyte, it has an erect and clumping growth form.The flowers are borne on axillary racemes and consist of white sepals and petals with light green venation. The flower lip is white with light green venation. ",
  ),
  PlantModel(
    id: 5,
    name: "Heliconia",
    imageAsset: "assets/images/plant-6.jpg",
    info:"Heliconia, derived from the Greek word Ἑλικώνιος, is a genus of flowering plants in the monotypic family Heliconiaceae. Most of the ca 194 known species are native to the tropical Americas, but a few are indigenous to certain islands of the western Pacific and Maluku.",
  ),
  PlantModel(
    id: 6,
    name: "Licuala mattanensis Becc. 'Mapu'",
    imageAsset: "assets/images/plant-7.jpg",
    info:"Small Palm that is fan-shaped, pleated leaves are green with greenish yellow blotches. Rectangular leaflets are spread radially like the spokes of a wheel. Leaf tips are truncate with square-cut ends.",
  ),PlantModel(
    id: 7,
    name: "Lipstick plant",
    imageAsset: "assets/images/plant-8.jpg",
    info:"Herb with trailing growth habit.Foliage	Thick, fleshy leaves are elliptic and tightly curled under. They occur in decussate leaf arrangement with adjacent leaf pairs perpendicular to one another. The upper surface is smooth and dark green with a prominent sunken midrib, while the lower surface is light green.",
  ),PlantModel(
    id: 8,
    name: "Orchid",
    imageAsset: "assets/images/plant-9.jpg",
    info:"The Orchidaceae are a diverse and widespread family of flowering plants, with blooms that are often colourful and fragrant, commonly known as the orchid family. Along with the Asteraceae, they are one of the two largest families of flowering plants.",
  ),
  PlantModel(
    id: 9,
    name: "Simpoh Lak",
    imageAsset: "assets/images/plant-10.jpg",
    info:"Large (8-10cm across) and showy, petals bright yellow, typically 5 nos., with pinkish recurved apical stigma in centre, contrasted by numerous dark to purplish-red taller inner stamens, surrounded by shorter and more reflexed yellow outer stamens. ",

  ),PlantModel(
    id: 10,
    name: "Sugar Palm",
    imageAsset: "assets/images/plant-11.JPG",
    info:"Solitary palm growing up to 20 m tall with a deep blackish crown of massive and steeply ascending leaves.",

  ),PlantModel(
    id: 11,
    name: "Sun Dew",
    imageAsset: "assets/images/plant-12.jpg",
    info:"The Sundew (Drosera paradoxa) belongs to the largest genus of carnivorous plants, the Droseraceae. These plants attract insects with their nectar and brightly-coloured tentacle-like structures and capture them using the stalked mucilaginous glands that are found on their leaf surfaces. Once the insect is trapped on the Sundew’s sticky leaves, the tentacles will catapult it towards the center of the leaf. ",
  ),PlantModel(
    id: 12,
    name: "Travellers Palm",
    imageAsset: "assets/images/plant-13.jpg",
    info:"Ravenala is a genus of flowering plants with a single species, Ravenala madagascariensis, commonly known as the traveller's tree, traveller's palm or East-West palm, from Madagascar. It is not a true palm but a member of a monocotyledonous flowering plant family, Strelitziaceae.",

  ),PlantModel(
    id: 13,
    name: "Wormwood",
    imageAsset: "assets/images/plant-14.jpg",
    info:"Artemisia absinthium is a moderately poisonous species of Artemisia native to temperate regions of Eurasia and Northern Africa and widely naturalized in Canada and the northern United States.",
  ),
  PlantModel(
    id: 13,
    name: "Yarrow",
    imageAsset: "assets/images/plant-15.jpg",
    info:"Achillea millefolium, commonly known as yarrow or common yarrow, is a flowering plant in the family Asteraceae. It is native to temperate regions of the Northern Hemisphere in Asia and Europe and North America",
  ),






];

List<PlantModel> get plantData {
  return [..._plantData];
}

List<PlantModel> get recentData {
  return _plantData.where((element) => element.id == 1).toList();
}