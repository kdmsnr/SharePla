# -*- coding: utf-8 -*-
require 'spec_helper'
describe 'newplan/index.html.erb' do
  before do
    render
  end
  it 'tag test'do
    # have_tag
    response.should have_selector('h1')
  end
end