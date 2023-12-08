require_relative "../../word_synth/effect"

describe "Effect" do
  it "should be defined" do
    expect(defined? WordSynth::Effect).to eq "constant"
  end

  it "reverse" do
    effect = WordSynth::Effect.reverse
    str = "Ruby is fun!"
    res = effect.call(str)
    expect(res).to eq "ybuR si !nuf"
  end

  it "echo" do
    effect = WordSynth::Effect.echo(2)
    str = "Ruby is fun!"
    res = effect.call(str)
    expect(res).to eq "RRuubbyy iiss ffuunn!!"
  end

  it "loud" do
    effect = WordSynth::Effect.loud(2)
    str = "Ruby is fun!"
    res = effect.call(str)
    expect(res).to eq "RUBY!! IS!! FUN!!!"
  end
end
