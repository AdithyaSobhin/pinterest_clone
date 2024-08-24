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
          "https://images.pexels.com/photos/2253821/pexels-photo-2253821.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "round":
          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    },
    {
      "container":
          "https://images.pexels.com/photos/2253821/pexels-photo-2253821.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "round":
          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    },
    {
      "container":
          "https://images.pexels.com/photos/2253821/pexels-photo-2253821.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "round":
          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    }
  ];
  static List texts = [
    {"greytext": "make it pretty", "text": "Do up your tray like this"},
    {"greytext": "All your vibe", "text": "Pick your on vibe"},
    {"greytext": "sweet cakes", "text": "pick your favourite flavour"},
    {"greytext": "get creative", "text": "The coolest photo doodles"},
    {"greytext": "Drawings", "text": "visualize the drawings"},
    {"greytext": "Motivating words", "text": "back to quotes and wallpapers"},
  ];
}
