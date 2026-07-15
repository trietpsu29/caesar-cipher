require_relative '../lib/caesar_cipher'

RSpec.describe '#caesar_cipher' do
  it 'encrypts lowercase letters' do
    text = 'caesar'
    key = 3
    expect(caesar_cipher(text, key)).to eq('fdhvdu')
  end
  it 'encrypts uppercase letters' do
    text = 'CAESAR'
    key = 3
    expect(caesar_cipher(text, key)).to eq('FDHVDU')
  end
  it 'preserves non-letters characters' do
    text = 'cAe_  S$Ar!!'
    key = 3
    expect(caesar_cipher(text, key)).to eq('fDh_  V$Du!!')
  end
  it 'handles keys larger than the alphabet size' do
    text = 'cAe_  S$Ar!!'
    key = 39
    expect(caesar_cipher(text, key)).to eq('pNr_  F$Ne!!')
  end
  it 'returns the original text when the key is zero' do
    text = 'cAe_  S$Ar!!'
    key = 0
    expect(caesar_cipher(text, key)).to eq('cAe_  S$Ar!!')
  end
end
