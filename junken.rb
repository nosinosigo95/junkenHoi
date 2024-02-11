
# じゃんけん(あいこで) ...
# 0(グー)1(チョキ)2(パー)3(戦わない)
# 1 
# ホイ!
# -----------
# あなた：チョキを出しました
# 相手：パーを出しました
# -----------
# あっち向いて ~
# 0(上)1(下)2(左)3(右)
# 2
# ホイ!
# -----------
# あなた:左
# 相手：下
class Junken
    def initialize(junken_count)
        if junken_count == 0
            puts "じゃんけん..."
        else
            puts "あいこで..."
        end
    end
    # プレイヤーの手を決める
    def player
        puts "0(グー)1(チョキ)2(パー)3(戦わない)"
        @player_hand_str = gets.chomp
        until @player_hand_str == "0" || @player_hand_str == "1" || @player_hand_str == "2" || @player_hand_str == "3"
            puts "0〜3の数字を入力してください"
            @player_hand_str = gets.chomp
        end
        return @player_hand = @player_hand_str.to_i
    end

    # comの手を決める
    def computer
        return @com_hand = rand(3).to_i
    end
    def judge
        # プレイヤー勝利
        if (@player_hand + 1) % 3 == @com_hand
            return "player"
        elsif @player_hand == (@com_hand + 1) % 3
            return "computer"
        else
            return "draw"
        end
    end

    def displayHand
        hand = {0 => "グー", 1 => "チョキ", 2 => "パー"}
        puts "ホイ!"
        puts "----------"
        puts "あなた：#{hand[@player_hand]}を出しました"
        puts "相手：#{hand[@com_hand]}を出しました"
        puts "----------"
    end
end