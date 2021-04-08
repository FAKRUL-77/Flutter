void main(){
//   User().postComment();
//   Modarator().postComment();
//   Modarator().deleteComment();
  
//   Publisher().postComment();
//   Publisher().publishArticle();
  
  Admin().deleteComment();
  Admin().publishArticle();
  Admin().postComment();
}

class User{
  void postComment(){
    print('post comment');
  }
}

class Modarator extends User{
  void deleteComment(){
    print('Comment deleted');
  }
}

class Publisher extends User with CanPublishArticle{
  
}

class Admin extends Modarator with CanPublishArticle{
  
}

mixin CanPublishArticle{
  void publishArticle(){
    print('Published article');
  }
}