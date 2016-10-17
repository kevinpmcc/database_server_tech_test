require 'spec_helper'

describe Something do

  describe '#value' do
    it 'returns the value given at initialization' do
      first_something = Something.new(key: 'my_key', value: 'my_value')
      expect(first_something.value).to eq 'my_value'  
    end
  end

  describe '#key' do
    it 'returns the key given at initialization' do
      first_something = Something.new(key: 'my_key', value: 'my_value')
      expect(true).to eq true
      expect(first_something.key).to eq 'my_key'  
    end
  end
end
