class TitlesChangeJob < ApplicationJob
  queue_as :default

  def perform(blog_id)
    Blog.find(blog_id).title_change
    # Do something later
  end
end
