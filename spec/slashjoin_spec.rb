# -*- coding: utf-8 -*-

$:.unshift(File.expand_path(File.dirname(__FILE__)))

require 'spec_helper'
require 'slashjoin'

describe Slashjoin do
  context String do
    context "join to URI path name" do
      let(:base){ "https://github.com/" }
      let(:user){ "zonuexe/" }
      let(:project){ "ruby-slashjoin" }
      let(:user_uri){ base / user }
      it{ expect(user_uri).to eq URI.parse("https://github.com/zonuexe/") }
      let(:proj_uri){ user_uri / project }
      it{ expect(proj_uri).to eq URI.parse("https://github.com/zonuexe/ruby-slashjoin") }
    end
    context "join to UNIX like path name" do
      let(:home){ "/home" }
      let(:megurine_home){ home / "megurine" }
      it{ expect(megurine_home).to eq "/home/megurine" }
      it{ expect(megurine_home).to be_a String }
    end
  end
  context Pathname do
    context "join to" do
      let(:home){ Pathname.new("/home") }
      let(:megurine_home){ home / "megurine" }
      it{ expect(megurine_home).to eq Pathname.new("/home/megurine") }
      it{ expect(megurine_home).to be_a Pathname }
    end
  end
end
