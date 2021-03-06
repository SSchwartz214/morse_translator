require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require 'pry'

class TranslatorTest < Minitest::Test

  def test_it_exists
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  def test_it_can_translate_a_phrase_from_eng_to_morse
    translator = Translator.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_it_can_translate_from_a_file
    translator = Translator.new

    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end

  def test_it_can_translate_a_phrase_from_morse_to_eng
    translator = Translator.new

    assert_equal "hello world", translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end

end
