class ArticleLink < ActiveRecord::Base
  scope :recent, lambda { order('created_at DESC').limit(10)}
end
