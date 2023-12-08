require_relative "../../word_synth/effect"
require_relative "../../word_synth/word_synth"

describe "WordSynth" do
  it "should be defined" do
    expect(defined? WordSynth).to eq "constant"
  end

  it "play" do
    str = "Ruby is fun!"
    synth = WordSynth::WordSynth.new
    synth.add_effect(WordSynth::Effect.reverse)
    synth.add_effect(WordSynth::Effect.echo(2))
    synth.add_effect(WordSynth::Effect.loud(2))
    res = synth.play(str)
    expect(res).to eq "YYBBUURR!! SSII!! !!NNUUFF!!"
  end
end
