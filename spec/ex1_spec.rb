# -*- coding: utf-8 -*-
require 'spec_helper'

describe Rubynovice do
  before do
    @rubynovice = Rubynovice.new
  end

  it 'has a version number' do
    print Rubynovice::VERSION+"\n"
    expect(Rubynovice::VERSION).not_to be nil
  end

  it 'ex1_1 prints hello world',ex: 'ex1_1' do
    expected = "hello world.\n"
    print @rubynovice.ex1_1+"\n"
    expect(@rubynovice.ex1_1).to eq(expected)
  end

  it 'ex1_2 return 1+1',ex: 'ex1_2' do
    expected = 2
    print "#{@rubynovice.ex1_2}\n"
    expect(@rubynovice.ex1_2).to eq(expected)
  end

  it 'ex1_3 printf ans=2\n',ex: 'ex1_3' do
    expected = "ans=2\n"
    print @rubynovice.ex1_3+"\n"
    expect(@rubynovice.ex1_3).to eq(expected)
  end
end
