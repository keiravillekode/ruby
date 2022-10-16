require 'minitest/autorun'
require_relative 'scale_generator'

class ScaleGeneratorTest < Minitest::Test
  def test_chromatic_scale
    skip
    chromatic = Scale.new('C')
    expected = %w[C C# D D# E F F# G G# A A# B]
    actual = chromatic.pitches
    assert_equal expected, actual
  end

  def test_another_chromatic_scale
    skip
    chromatic = Scale.new('F')
    expected = %w[F Gb G Ab A Bb B C Db D Eb E]
    actual = chromatic.pitches
    assert_equal expected, actual
  end

  def test_major_scale
    skip
    major = Scale.new('C', 'MMmMMMm')
    expected = %w[C D E F G A B]
    actual = major.pitches
    assert_equal expected, actual
  end

  def test_another_major_scale
    skip
    major = Scale.new('G', 'MMmMMMm')
    expected = %w[G A B C D E F#]
    actual = major.pitches
    assert_equal expected, actual
  end

  def test_minor_scale
    skip
    minor = Scale.new('f#', 'MmMMmMM')
    expected = %w[F# G# A B C# D E]
    actual = minor.pitches
    assert_equal expected, actual
  end

  def test_another_minor_scale
    skip
    minor = Scale.new('bb', 'MmMMmMM')
    expected = %w[Bb C Db Eb F Gb Ab]
    actual = minor.pitches
    assert_equal expected, actual
  end

  def test_dorian_mode
    skip
    dorian = Scale.new('d', 'MmMMMmM')
    expected = %w[D E F G A B C]
    actual = dorian.pitches
    assert_equal expected, actual
  end

  def test_mixolydian_mode
    skip
    mixolydian = Scale.new('Eb', 'MMmMMmM')
    expected = %w[Eb F G Ab Bb C Db]
    actual = mixolydian.pitches
    assert_equal expected, actual
  end

  def test_lydian_mode
    skip
    lydian = Scale.new('a', 'MMMmMMm')
    expected = %w[A B C# D# E F# G#]
    actual = lydian.pitches
    assert_equal expected, actual
  end

  def test_phrygian_mode
    skip
    phrygian = Scale.new('e', 'mMMMmMM')
    expected = %w[E F G A B C D]
    actual = phrygian.pitches
    assert_equal expected, actual
  end

  def test_locrian_mode
    skip
    locrian = Scale.new('g', 'mMMmMMM')
    expected = %w[G Ab Bb C Db Eb F]
    actual = locrian.pitches
    assert_equal expected, actual
  end

  def test_harmonic_minor
    skip
    harmonic_minor = Scale.new('d', 'MmMMmAm')
    expected = %w[D E F G A Bb Db]
    actual = harmonic_minor.pitches
    assert_equal expected, actual
  end

  def test_octatonic
    skip
    octatonic = Scale.new('C', 'MmMmMmMm')
    expected = %w[C D D# F F# G# A B]
    actual = octatonic.pitches
    assert_equal expected, actual
  end

  def test_hexatonic
    skip
    hexatonic = Scale.new('Db', 'MMMMMM')
    expected = %w[Db Eb F G A B]
    actual = hexatonic.pitches
    assert_equal expected, actual
  end

  def test_pentatonic
    skip
    pentatonic = Scale.new('A', 'MMAMA')
    expected = %w[A B C# E F#]
    actual = pentatonic.pitches
    assert_equal expected, actual
  end

  def test_enigmatic
    skip
    enigmatic = Scale.new('G', 'mAMMMmM')
    expected = %w[G G# B C# D# F F#]
    actual = enigmatic.pitches
    assert_equal expected, actual
  end
end
