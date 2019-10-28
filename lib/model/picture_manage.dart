import 'package:flutter/material.dart';

import 'picture.dart';

class PictureManager {
	List<Picture> allPictures = [
		Picture("CODE",
			['A', 'B', 'C', 'D', 'O', 'E', 'V', 'E', 'C', 'T', 'O' ,'R'],
			["https://i.ibb.co/g73cdMv/adventure-blue-calm-waters-300857.jpg",
				"https://i.ibb.co/qmV8hjT/lemons-ice-water-summer-90763.jpg",
				"https://i.ibb.co/tLnfkD8/allergies-allergy-cold-41284.jpg",
				"https://i.ibb.co/GCVkptN/bags-black-friday-christmas-749353.jpg"]),
		Picture("GOOGLE",
			['A', 'B', 'G', 'O', 'G', 'L', 'V', 'E', 'C', 'T', 'O' ,'R'],
			["https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTh-QxnMWqyDUXg1bcMQ7kKlDaUQKRupAnS2WgYG5e27IwJHc5z",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTICbRFVqBZt5oqUoRfDkqao5RbxN2nMLAmHtMsC-pUMP8jMXfV",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ3Va9E6oMRGYLqf1rVn8gAVJSdYwsAXf8XAnQohYohlTFc8SfL"]),
		Picture("ELONMUSK",
			['E', 'L', 'O', 'O', 'N', 'M', 'U', 'S', 'K', 'T', 'O' ,'R'],
			["https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSLN8TQidbOFERV_d2c3iLPptI71dJPHx4kPMx_mO742xBEpEtf",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQer5EezpWv4WxVzwtfncjJ79YI15wcp-wfE2F7btWiL2Bp6OH6",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQOpxEgDgirw62jPvH1_RwSbTVErUOknPWlCbGPCQXDx0UfVCem",
				"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR50JwTjB49gMcAEWChnFZ7G6G9G4askwyERb3xeUG39k-u_KFM"])
	];

	Picture getPicture(int num) {
		allPictures[num].letters.shuffle();
		return allPictures[num];
	}
}