class Link < ActiveRecord::Base
  validates_presence_of :url, :title
  validates_uniqueness_of :url
end
