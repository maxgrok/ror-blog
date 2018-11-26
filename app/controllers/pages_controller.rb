class PagesController < ApplicationController
  def home
  	@posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end

  def companies
  end

  def talks 
  end

  def code
  end

  def press
  end
  
end
