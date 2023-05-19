# shoe.rb

class Shoe
    attr_reader :brand, :color, :size, :material, :condition
  
    def initialize(brand)
      @brand = brand
      @color = nil
      @size = nil
      @material = nil
      @condition = nil
    end
  
    def cobble
      @condition = "new"
      puts "The shoe has been repaired."
    end
  end
  

  # 02_shoe_spec.rb

require_relative 'path_to_shoe_file/shoe'

RSpec.describe Shoe do
  describe "#new" do
    it "gets initialized with a brand" do
      expect { Shoe.new("Adidas") }.not_to raise_error
    end
  end

  describe "properties" do
    let(:shoe) { Shoe.new("Nike") }

    it "has a brand" do
      expect(shoe.brand).to eq("Nike")
    end

    it "has a color" do
      expect(shoe.color).to be_nil
    end

    it "has a size" do
      expect(shoe.size).to be_nil
    end

    it "has a material" do
      expect(shoe.material).to be_nil
    end

    it "has a condition" do
      expect(shoe.condition).to be_nil
    end
  end

  describe "#cobble" do
    let(:shoe) { Shoe.new("Nike") }

    it "says that the shoe has been repaired" do
      expect { shoe.cobble }.to output("The shoe has been repaired.\n").to_stdout
    end

    it "makes the shoe's condition new" do
      shoe.cobble
      expect(shoe.condition).to eq("new")
    end
  end
end
