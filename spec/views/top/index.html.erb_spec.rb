# -*- coding: utf-8 -*-
require 'spec_helper'
describe 'top/index.html.erb' do
  describe  do 
    before do
      render
    end

    it 'has link' do
      expect(response).to have_selector('a','/newplan')
    end

  end
end
