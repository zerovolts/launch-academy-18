require 'sinatra'
require 'csv'

require_relative 'models/article'

if File.file?("articles.csv")
  CSV.foreach("articles.csv", "r") do |row|
    Article.read(row)
  end
end

get '/' do
end

get '/articles' do
  @articles = Article.all
  erb :articles
end

get '/articles/new' do
  @errors = []
  erb :articles_new
end

post '/articles/new' do
  @errors = []
  @title = params['title']
  @url = params['url']
  @description = params['description']

  field_hash = {title: @title, url: @url, description: @description}
  blank_fields = field_hash.reduce([]) do |acc, (name, value)|
    value == '' ? acc << name : acc
  end

  if blank_fields.empty?
    article = Article.new(@title, @url, @description)
    CSV.open("articles.csv", "a") do |csv|
      csv << article.write
    end

    redirect "/articles/#{@url}"
  else
    blank_fields.each do |field, _|
      @errors << field
    end

    erb :articles_new
  end
end

get '/articles/:article' do
  @article = Article.find(params[:article].to_s)
  erb :article
end
