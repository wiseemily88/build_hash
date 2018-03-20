gem 'minitest', '~> 5.2'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
  def test_it_exists
    node = Node.new("fish", "salmon")

    assert_instance_of Node, node
  end

  def test_it_has_a_key_and_a_value
    node = Node.new("fish", "salmon")

    assert_equal "fish", node.key
    assert_equal "salmon", node.value
  end

  def test_it_is_instaniated_with_a_nill_next_value
    node = Node.new("fish", "salmon")

    assert_equal nil, node.next

  end

end
