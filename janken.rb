puts "じゃんけん..."

def janken
    puts ["0(グー),1(チョキ),2(パー),3(戦わない)"]
    janken＿types = ["グー", "チョキ", "パー", "戦わない"]

    player_hand = gets.to_i
    cpu_hand = Random.rand(3)

    puts "ホイ!"
    puts "_______________________________________"

    puts "あなた:#{janken＿types[player_hand]}を出しました"
    puts "相手:#{janken＿types[cpu_hand]}を出しました"

    puts "_______________________________________"

    if player_hand == cpu_hand
        return "パターンA"
    
    elsif player_hand == 0 && cpu_hand == 1 || player_hand == 1 && cpu_hand == 2 || player_hand == 2 && cpu_hand == 0
        return "パターンB"

    elsif player_hand == 0 && cpu_hand == 2 || player_hand == 1 && cpu_hand == 0 || player_hand == 2 && cpu_hand == 1
        return "パターンC"

    else
        puts "ゲームを終了します"
        return "パターンD"
    end

end

def attimuite_hoi
    puts "あっち向いて〜"
    puts ["0(上),1(下),2(左),3(右)"]
    directions = ["上", "下", "左", "右"]

    player_direction = gets.to_i
    cpu_direction = Random.rand(4)

    puts "ホイ!"
    puts "_______________________________________"

    puts "あなた:#{directions[player_direction]}"
    puts "相手:#{directions[cpu_direction]}"

    puts "_______________________________________"

    if player_direction == cpu_direction
        return true
    else 
        return false
    end

end

attimuite_hoi_game = true

while attimuite_hoi_game

  case janken
     when "パターンA"
          again_janken = true

     when "パターンB"
       if attimuite_hoi == true
          puts "あなたの勝ち"
          break
       else
          puts "惜しい！"
          again_janken = false
       end

     when "パターンC" 
       if attimuite_hoi == true
          puts "相手の勝ち"
          break
       else
          puts "危ない！"
          again_janken = false
       end
        
     when "パターンD"
          break
   end

   attimuite_hoi_game = true

   if again_janken == true
      puts "あいこで..."
   else
      puts "じゃんけん..."
   end

end