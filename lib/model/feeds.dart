import 'package:flutter/material.dart';


class Feeds {
  String userName, location, comment, postTime, image, avatar;
  int likeCount, commentCount;

  Feeds(
      {this.avatar,
        this.userName,
        this.location,
        this.comment,
        this.postTime,
        this.image,
        this.likeCount,
        this.commentCount});
}