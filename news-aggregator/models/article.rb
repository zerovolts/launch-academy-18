class Article
  attr_reader :title, :url, :description

  @@articles = []

  def initialize(title, url, description)
    @title = title
    @url = url
    @description = description

    @@articles << self
  end

  def self.all
    @@articles
  end

  def self.find(url)
    @@articles.select { |article| article.url == url }.first
  end

  def self.read(data)
    Article.new(data[0], data[1], data[2])
  end

  def write
    [@title, @url, @description]
  end
end
