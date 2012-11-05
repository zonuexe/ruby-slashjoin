# -*- coding: utf-8 -*-

$: << File.expand_path(File.dirname(__FILE__))
require 'spec_helper'
require 'slashjoin'

describe Slashjoin do
  context String do
    it "join to URI path name" do
      base = "https://github.com/"
      user = "zonuexe/"
      project = "ruby-slashjoin"
      user_uri = base / user
      user_uri.should == URI.parse("https://github.com/zonuexe/")
      proj_uri = user_uri / project
      proj_uri.should == URI.parse("https://github.com/zonuexe/ruby-slashjoin")
    end
    it "join to UNIX like path name" do
      home = "/home"
      megurine_home = (home / "megurine")
      megurine_home.should == "/home/megurine"
      megurine_home.class.should == String
    end
  end
  context Pathname do
    it "join to" do
      home = Pathname.new("/home")
      megurine_home = (home / "megurine")
      megurine_home.should == Pathname.new("/home/megurine")
      megurine_home.class.should == Pathname
    end
  end
end
