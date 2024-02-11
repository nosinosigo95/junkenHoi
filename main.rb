require "./junken"
require "./hoi"

junken_count = 0

loop do
    junken = Junken.new(junken_count)
    player_hand = junken.player

    if player_hand == 3 #戦わない
        break
    end
    
    junken.computer

    junken.displayHand
    result_junken = junken.judge

    if result_junken == "draw"
        junken_count += 1
        next
    end

    hoi = Hoi.new
    hoi.player

    hoi.computer

    hoi.displayDirection
    result_hoi = hoi.judge(result_junken)

    if result_hoi == "computer"
        puts "相手が勝ちました"
        return
    elsif result_hoi == "player"
        puts "あなたが勝ちました"
        return
    end
    junken_count = 0
end