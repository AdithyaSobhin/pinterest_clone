import 'package:flutter/material.dart';

class DummyDb {
  static String storedEmail = "";
  static String storedPass = "";

  static List imageCardList = [
    {
      "url":
          "https://images.pexels.com/photos/2379179/pexels-photo-2379179.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "love and love only",
    },
    {
      "url":
          "https://images.pexels.com/photos/1161372/pexels-photo-1161372.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "",
    },
    {
      "url":
          "https://images.pexels.com/photos/1721932/pexels-photo-1721932.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "Chocolate cake...",
    },
    {
      "url":
          "https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "",
    },
    {
      "url":
          "https://images.pexels.com/photos/913136/pexels-photo-913136.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "",
    },
    {
      "url":
          "https://images.pexels.com/photos/2189700/pexels-photo-2189700.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "",
    },
    {
      "url":
          "https://images.pexels.com/photos/12925820/pexels-photo-12925820.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "",
    },
    {
      "url":
          "https://images.pexels.com/photos/3910065/pexels-photo-3910065.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "",
    },
    {
      "url":
          "https://images.pexels.com/photos/6794043/pexels-photo-6794043.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "",
    },
    {
      "url":
          "https://images.pexels.com/photos/3640930/pexels-photo-3640930.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "",
    },
    {
      "url":
          "https://images.pexels.com/photos/673857/pexels-photo-673857.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "",
    },
    {
      "url":
          "https://images.pexels.com/photos/4065885/pexels-photo-4065885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "",
    },
    {
      "url":
          "https://images.pexels.com/photos/586687/pexels-photo-586687.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "",
    }
  ];

  static List updatesTabList = [
    {
      "url":
          "https://images.pexels.com/photos/2379179/pexels-photo-2379179.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "We think you might like these ideas",
      "time": "1d"
    },
    {
      "url":
          "https://images.pexels.com/photos/1161372/pexels-photo-1161372.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "We think you might like these ideas",
      "time": "1d"
    },
    {
      "url":
          "https://images.pexels.com/photos/1721932/pexels-photo-1721932.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "Chocolate cake...",
      "time": "2d"
    },
    {
      "url":
          "https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "We think you might like these ideas",
      "time": "5d"
    },
    {
      "url":
          "https://images.pexels.com/photos/913136/pexels-photo-913136.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "We think you might like these ideas",
      "time": "1w"
    },
    {
      "url":
          "https://images.pexels.com/photos/2189700/pexels-photo-2189700.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "We think you might like these ideas",
      "time": "1w"
    },
    {
      "url":
          "https://images.pexels.com/photos/12925820/pexels-photo-12925820.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "We think you might like these ideas",
      "time": "1w"
    },
    {
      "url":
          "https://images.pexels.com/photos/3910065/pexels-photo-3910065.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "We think you might like these ideas",
      "time": "2w"
    },
    {
      "url":
          "https://images.pexels.com/photos/6794043/pexels-photo-6794043.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "We think you might like these ideas",
      "time": "2w"
    },
    {
      "url":
          "https://images.pexels.com/photos/3640930/pexels-photo-3640930.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "We think you might like these ideas",
      "time": "2w"
    },
    {
      "url":
          "https://images.pexels.com/photos/673857/pexels-photo-673857.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "We think you might like these ideas",
      "time": "3w"
    },
    {
      "url":
          "https://images.pexels.com/photos/4065885/pexels-photo-4065885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "We think you might like these ideas",
      "time": "3w"
    },
    {
      "url":
          "https://images.pexels.com/photos/586687/pexels-photo-586687.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "des": "We think you might like these ideas",
      "time": "3w"
    }
  ];
  static List inboxTabMsgList = [
    {
      "url":
          "https://images.pexels.com/photos/2379179/pexels-photo-2379179.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Elisa",
      "des": "you sent a pin",
      "time": "06 Dec 2023"
    },
    {
      "url":
          "https://images.pexels.com/photos/1161372/pexels-photo-1161372.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "John",
      "des": "you sent a pin",
      "time": "01 Nov 2023"
    },
  ];
  static List inboxTabContactList = [
    {
      "url":
          "https://images.pexels.com/photos/1721932/pexels-photo-1721932.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Ann",
      "des": "@ann",
      "icon": Icons.chevron_right
    },
    {
      "url":
          "https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Liya",
      "des": "@liya",
      "icon": Icons.chevron_right
    },
    {
      "url":
          "https://images.pexels.com/photos/913136/pexels-photo-913136.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Sona",
      "des": "@sona",
      "icon": Icons.chevron_right
    },
    {
      "url":
          "https://images.pexels.com/photos/2189700/pexels-photo-2189700.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "James",
      "des": "@james",
      "icon": Icons.chevron_right
    },
  ];
  static List threeContainer = [
    {
      "container":
          "https://images.pexels.com/photos/12575709/pexels-photo-12575709.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "round":
          "https://images.pexels.com/photos/27255535/pexels-photo-27255535/free-photo-of-woman-in-white-dress-standing-in-flowers.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    },
    {
      "container":
          "https://images.pexels.com/photos/7147472/pexels-photo-7147472.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "round":
          "https://images.pexels.com/photos/27650418/pexels-photo-27650418/free-photo-of-a-woman-taking-a-picture-of-herself-with-a-camera.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    },
    {
      "container":
          "https://images.pexels.com/photos/6925162/pexels-photo-6925162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "round":
          "https://images.pexels.com/photos/27640372/pexels-photo-27640372/free-photo-of-woman-in-suit-standing-in-greenhouse.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    }
  ];

  static List urlImages = [
    {
      "url":
          "https://images.pexels.com/photos/2379179/pexels-photo-2379179.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "text": "Travel"
    },
    {
      "url":
          "https://images.pexels.com/photos/1161372/pexels-photo-1161372.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "text": "Love"
    },
    {
      "url":
          "https://images.pexels.com/photos/1721932/pexels-photo-1721932.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "text": "Sweet cakes"
    },
    {
      "url":
          "https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "text": "Forest"
    },
    {
      "url":
          "https://images.pexels.com/photos/913136/pexels-photo-913136.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "text": "Cakes"
    },
    {
      "url":
          "https://images.pexels.com/photos/2189700/pexels-photo-2189700.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "text": "Travel"
    },
  ];

  static List pinTabImages = [
    {
      "url":
          "https://images.pexels.com/photos/1055691/pexels-photo-1055691.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "text": "Be unique in your way",
    },
    {
      "url":
          "https://images.pexels.com/photos/1854652/pexels-photo-1854652.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "text": "cakes"
    },
    {
      "url":
          "https://images.pexels.com/photos/3838285/pexels-photo-3838285.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "text": ""
    }
  ];

  static List settingsList = [
    {
      "text": "Account management",
    },
    {
      "text": "Profile visibility",
    },
    {
      "text": "Home feed tuner",
    },
    {"text": "Claimed accounts"},
    {"text": "Social permission and activity"},
    {"text": "Notifications"},
    {"text": "Privacy and data"},
    {"text": "Reports and violations centre"}
  ];
  static List loginList = [
    {"text": "Add account"},
    {"text": "Security"},
    {"text": "Log out"}
  ];
  static List supportList = [
    {"text": "Help centre"},
    {"text": "Terms of Service"},
    {"text": "Privacy Policy"}
  ];
}
