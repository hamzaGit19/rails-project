module TagsHelper
    def comments(blog)
         
        u = User.where("id=?",blog.user_id).limit(1).pluck(:name)
        u[0]
      end
end
