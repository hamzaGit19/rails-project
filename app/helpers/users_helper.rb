module UsersHelper
    def get_blogs(user)

        blogs = Blog.where("user_id=?", user.id)
    
      end
end
