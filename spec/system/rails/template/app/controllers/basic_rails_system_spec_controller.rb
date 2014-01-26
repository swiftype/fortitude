class BasicRailsSystemSpecController < ApplicationController
  def rails_is_working
    render :text => "Rails version: #{Rails.version}"
  end

  def trivial_widget
  end

  def passing_data_widget
    @foo = 'the_foo'
    @bar = 'and_bar'
  end

  def the_class_should_not_load
    render :text => BasicRailsSystemSpec::ClassShouldNotLoad.new
  end
end