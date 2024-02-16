import 'package:flutter/material.dart';

import '../models/post_model.dart';
import '../models/story_model.dart';

class FacebookPage extends StatefulWidget {
  const FacebookPage({super.key});

  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  final List<Story> _stories = [
    Story('User One', 'assets/images/user_1.jpg', 'assets/images/story_1.jpg'),
    Story('User two', 'assets/images/user_2.jpg', 'assets/images/story_2.jpg'),
    Story(
        'User three', 'assets/images/user_3.jpg', 'assets/images/story_3.jpg'),
    Story('User four', 'assets/images/user_4.jpg', 'assets/images/story_4.jpg'),
    Story('User five', 'assets/images/user_5.jpg', 'assets/images/story_5.jpg'),
    Story('User six', 'assets/images/user_3.jpg', 'assets/images/story_4.jpg'),
  ];
  final List<Post> _posts = [
    Post('User One', 'assets/images/story_1.jpg', 'assets/images/user_1.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
    Post('User two', 'assets/images/story_2.jpg', 'assets/images/story_3.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
    Post('User One', 'assets/images/story_1.jpg', 'assets/images/user_1.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
    Post('User two', 'assets/images/story_2.jpg', 'assets/images/story_3.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
    Post('User One', 'assets/images/story_1.jpg', 'assets/images/user_1.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
    Post('User two', 'assets/images/story_2.jpg', 'assets/images/story_3.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
    Post('User One', 'assets/images/story_1.jpg', 'assets/images/user_1.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
    Post('User two', 'assets/images/story_2.jpg', 'assets/images/story_3.jpg',
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "facebook", //hot relot
          style: TextStyle(
              color: Colors.blue, fontSize: 35, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 40,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.camera_alt,
            size: 40,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 70,
              //color: Colors.blue,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        //color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage('assets/images/user_1.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.all(5),
                      // color: Colors.blue,
                      decoration: BoxDecoration(
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "What's on your mind?",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 70,
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.video_call,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Live"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: 1,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.photo,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Photo"),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: 1,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Check in"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //story

            Container(
              margin: EdgeInsets.only(top: 10),
              height: 250,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: _stories.map((story) {
                  return _itemOfStory(story);
                }).toList(),
              ),
            ),
            Container(
              child: Column(
                children: _posts.map((post) {
                  return _itemOfPost(post);
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemOfStory(Story story) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 150,
      // color: Colors.red,
      decoration: BoxDecoration(
          //color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(story.storyImage!),
            fit: BoxFit.cover,
          )),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.1),
            ])),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(story.userPhoto!),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Expanded(child: Container()),
              Text(
                story.userName!,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }

//#post
  Widget _itemOfPost(Post post) {
    return Container(
      // margin: EdgeInsets.only(bottom: 5),

      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            color: Colors.white,

            padding: EdgeInsets.all(5),
            height: 70,
            // color: Colors.red,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20, left: 10),
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(post.userImage!),
                        fit: BoxFit.cover,
                      )),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.userName!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1 hour ago",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(post.caption!),
            color: Colors.white,
          ),
          FadeInImage(
            placeholder: AssetImage('assets/images/placeholder.png'),
            image: AssetImage(post.postImage!),
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 10, right: 10),
            // height: 50,
            // color: Colors.red,
            child: Stack(
              children: [
                Row(


                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: Offset(-5, 0),
                      child: makeLove(),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.face_sharp,
                        color: Colors.white,
                      ),
                    ),
                    Container(

                      height: 30,
                      width: 30,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.face_2,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("2.4k"),
                    SizedBox(width: 150,),
                    Text("400 comments"),
                  ],
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget makeLike() {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)),
    child: Center(
      child: Icon(
        Icons.thumb_up,
        color: Colors.white,
        size: 12,
      ),
    ),
  );
}

Widget makeLove() {
  return Container(
    width: 25,
    height: 25,
    decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white)),
    child: Center(
      child: Icon(
        Icons.favorite,
        color: Colors.white,
        size: 12,
      ),
    ),
  );
}
//}
