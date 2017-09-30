require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "should saved when have all params " do
     image = Idea.new(name: "fgrfyhft", description:"dlugi tekst" )
     assert image.save
  end

  test "should not be saved when have no name " do
     image = Idea.new(description:" dlugi tekst" )
     assert_not image.save
  end
  test "should not be saved when we have too short description " do
     image = Idea.new(name:"random name", description:"a,.!" )
     assert_not image.save
  end
  test "should not be saved when we have too long description " do
     image = Idea.new(name:"random name", description:"a*60" )
     assert_not image.save
  end

end
