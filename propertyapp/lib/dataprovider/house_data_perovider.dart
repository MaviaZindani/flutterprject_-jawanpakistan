import 'package:flutter/material.dart';
import 'package:propertyapp/modles/gallery_model.dart';
import 'package:propertyapp/modles/house_card_model.dart';
import 'package:propertyapp/modles/profile_model.dart';

class HouseDataPerovider with ChangeNotifier{
  List<HouseCard> housedatalist =[
   HouseCard(
    "assets/screens/home_screen/card1/house_image.png", 
    "Browen home", 
    "Clennest Home Ever", 
    "4 Badrooms", 
    "4 Bathroom", 
    "1 garag", 
    "khada market", 

    ProfileModel(
      "", 
      "Rebecco Tetha", 
      "Ownwe of brown house", 
      "20/Novmber/2024",
      ), 

    '''The brown bungalow stands serenely amidst a backdrop of vibrant greenery,
     its warm, earthy tones blending harmoniously with the surrounding landscape.
     The rich, chocolate-hued exterior exudes a sense of timeless elegance and 
     coziness. Large, welcoming windows allow sunlight to stream into the house,
     illuminating the rustic charm of its interiors. The bungalow's wooden 
     porch, adorned with potted plants and a comfortable swing, invites you to
     sit and soak in the peaceful ambiance. With its sturdy structure and inviting 
     appearance, the brown bungalow embodies a perfect blend of comfort and sophistication,
     offering a tranquil haven away from the hustle and bustle of everyday life.''', 
    560000, 

    GalleryModel(
      "assets/screens/home_screen/card1/house_image.png", 
      "assets/screens/home_screen/card1/gallery_image_1.png", 
      "assets/screens/home_screen/card1/gallery_image_2.png", 
      "assets/screens/home_screen/card1/gallery_image_3.png", 
      "assets/screens/home_screen/card1/gallery_image_4.png"
      ),
   ),
   HouseCard(
    "assets/screens/home_screen/home_screen_image.png", 
    "Browen home", 
    "Clennest Home Ever", 
    "4 Badrooms", 
    "4 Bathroom", 
    "1 garag", 
    "khada market", 

    ProfileModel(
      "", 
      "Rebecco Tetha", 
      "Ownwe of brown house", 
      "20/Novmber/2024",
      ), 

    '''The brown bungalow stands serenely amidst a backdrop of vibrant greenery,
     its warm, earthy tones blending harmoniously with the surrounding landscape.
     The rich, chocolate-hued exterior exudes a sense of timeless elegance and 
     coziness. Large, welcoming windows allow sunlight to stream into the house,
     illuminating the rustic charm of its interiors. The bungalow's wooden 
     porch, adorned with potted plants and a comfortable swing, invites you to
     sit and soak in the peaceful ambiance. With its sturdy structure and inviting 
     appearance, the brown bungalow embodies a perfect blend of comfort and sophistication,
     offering a tranquil haven away from the hustle and bustle of everyday life.''', 
    560000, 
    
    GalleryModel(
      "assets/screens/home_screen/card1/house_image.png", 
      "assets/screens/home_screen/card1/gallery_image_1.png", 
      "assets/screens/home_screen/card1/gallery_image_2.png", 
      "assets/screens/home_screen/card1/gallery_image_3.png", 
      "assets/screens/home_screen/card1/gallery_image_4.png"
      ),
   ),
  ];

  List wishList =[];
}