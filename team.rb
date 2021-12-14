# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name,win,lose,draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  # インスタンスが持つメソッド（勝率）
  def calc_win_rate
    self.win.to_f / (self.win + self.lose)
  end
  
  # インスタンスが持つメソッド（）
  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate}です。"
  end
end

# インスタンスの生成と、変数への代入
Team_1 = Team.new('Giants',67,45,8)
Team_2 = Team.new('Tigers',60,53,7)
Team_3 = Team.new('Dragons',60,55,5)
Team_4 = Team.new('BayStars',56,58,6)
Team_5 = Team.new('Carp',52,56,12)
Team_6 = Team.new('Swallows',41,69,10)

# インスタンスの使用
Team_1.show_team_result
Team_2.show_team_result
Team_3.show_team_result
Team_4.show_team_result
Team_5.show_team_result
Team_6.show_team_result