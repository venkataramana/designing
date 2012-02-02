require 'test_helper'

class DesignTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  test "should not save post without title" do
    design = Design.new
    assert !design.save
  end
end

