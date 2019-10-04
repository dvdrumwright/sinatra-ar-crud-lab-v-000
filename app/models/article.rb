#Placeholder for a model

class Article < ActiveRecord::Base

  attr_accessor :title, :content

  ARTICLES = []

def initialize(arg)
  @title = arg[:title]
  @content = arg[content]
  ARTICLES << self
end


def self.all
  ARTICLES
end

end
