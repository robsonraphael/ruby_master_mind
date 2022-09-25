class MasterMind
  def initialize
    @@COLOR = %w[AZUL AMARELO BRANCO LARANJA PRETO ROSA ROXO VERMELHO AMBAR BEGE
                 BORDÔ CARAMELO CAQUI CARDO CARMESIM CASTANHO CHOCOLATE CINZA COBRE CONCHA COURO CREME EBANO GRENÁ INDIGO JADE KIWI KOBI LILÁS MADEIRA MALVA].shuffle!.freeze

    def modo_de_jogo
      while true
        puts 'Escolha o modo de jogo [Code Braker] ou [Code Constructor]: '
        @@modo_de_jogo = gets.chomp.upcase
        break if @@modo_de_jogo == 'CODE BREAKER'
        break if @@modo_de_jogo == 'CODE CONSTRUCTOR'
      end
    end
    modo_de_jogo
  end

  def escolha_do_computador
    puts choice = @@COLOR[rand 0..@@COLOR.length - 1]
  end

  def escolha_do_player
    p @@COLOR
    return @@escolha = gets.chomp.upcase
  end

  def verificar(string)
    string = string.upcase.split('')
    @@COLOR.each do |element|
        puts 'ACERTOU !!' if element.split('') === string
    end
  end

  def iniciar_jogo
    if @@modo_de_jogo === 'CODE BREAKER'
      escolha_do_computador
    else
      verificar(escolha_do_player)
    end
  end

end

novoJogo = MasterMind.new.iniciar_jogo
