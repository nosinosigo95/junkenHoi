
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
class Hoi
    def initialize
        puts "あっち向いて 〜"
        puts "0(上)1(下)2(左)3(右)"
    end
    def player
        @player_direction_str =  gets.chomp
        until @player_direction_str == "0" || @player_direction_str == "1" || @player_direction_str == "2" || @player_direction_str == "3"
            puts "0〜3の数字を入力してください"
            @player_direction_str =  gets.chomp
        end
        return @player_direction = @player_direction_str.to_i
    end
    def computer
        return @com_direction =  rand(4).to_i
    end

    def judge(junken_winner)
        if @player_direction == @com_direction
            return junken_winner
        else
            return "draw"
        end
    end
    def displayDirection
        direction = {0 => "上", 1 => "下", 2 => "左", 3 => "右"}
        puts "ホイ!"
        puts "----------"
        puts "あなた：#{direction[@player_direction]}"
        puts "相手：#{direction[@com_direction]}"
    end
end