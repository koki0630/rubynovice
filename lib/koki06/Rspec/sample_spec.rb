# sample_spec.rb
class Sample
  def self.greeting
    'Hello, world!'
  end
end

describe Sample do
  example 'greeting' do
    expect(Sample.greeting).to eq 'Hello, world!'
  end
end
