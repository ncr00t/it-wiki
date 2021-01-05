require 'spec_helper'

describe ArticlesController do

  before :all do
    @article = Article.first
  end

  describe 'GET articles/show' do
    it 'success when article is exist' do
      get(:show, {:id => @article.id})
      assert_eq response.status, 200
    end
  end

  describe 'GET /articles/new' do
    it 'success when creating new article' do
      get(:new, {})
      assert_eq response.status, 200
    end
  end
end
