class postModel
{
  String? title,body;
  int? id,userId;

  postModel({this.body,this.title,this.id,this.userId});

  postModel fromPost(Map m1)
  {
    id = m1['id'];
    userId = m1['userId'];
    title = m1['title'];
    body = m1['body'];

    postModel p1 = postModel(title: title,id: id,body: body,userId: userId);
    return p1;
  }
}