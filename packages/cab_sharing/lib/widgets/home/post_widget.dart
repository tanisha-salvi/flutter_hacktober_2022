import 'package:cab_sharing/decorations/post_widget_style.dart';
import 'package:cab_sharing/models/post_model.dart';
import 'package:cab_sharing/screens/post_detail_page.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  final String color_category;
  final Post post;
  final BuildContext context;
  const PostWidget({Key? key, required this.post, required this.context, required this.color_category}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          widget.context,
          MaterialPageRoute(builder: (context) {
            return PostDetailPage(
                post: widget.post);
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 4.0,
        ),
        child: Container(
          height: 96.0,
          width: double.infinity,
          decoration:
          (widget.color_category == "mypost")
              ? kRowContainerDecorationMyPost
              : kRowContainerDecoration,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          widget.post.name,
                          style:
                          (widget.color_category == "mypost")
                              ? kPostNameTextStyleMyPost
                              : kPostNameTextStyle,
                        ),
                      ),
                      Text(
                        widget.post.email,
                        style:
                        (widget.color_category == "mypost")
                            ? kPostEmailTextStyleMyPost
                            : kPostEmailTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          widget.post.getNote(),
                          style:
                          (widget.color_category == "mypost")
                              ? kPostGetNoteTextStyleMyPost
                              : kPostGetNoteTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 105.0,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      (widget.color_category == "mypost")
                          ? Icon(
                          Icons.delete_outline,
                          color: Colors.black
                      )
                          : SizedBox(height: 1,),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 4.0,
                          bottom: 4.0,
                        ),
                        child: Text(
                          widget.post.time,
                          style:
                          (widget.color_category == "mypost")
                              ? kPostTimeTextStyleMyPost
                              : kPostTimeTextStyle,
                        ),
                      ),
                      Icon(
                        widget.post.mode == Post.airway
                            ? Icons.airplanemode_active_outlined
                            : Icons.directions_railway,
                        size: 20,
                        color:
                        (widget.color_category == "mypost")
                            ? Colors.black
                            : Colors.white,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
