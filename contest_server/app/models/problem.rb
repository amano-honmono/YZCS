class Problem < ApplicationRecord
  VALID_URL_REGEX = /\Ahttp:\/\/judge.u-aizu.ac.jp\/onlinejudge\/description.jsp?.*\z/ #とりあえずAOJにのみ対応
  validates :problem_url, presence: true, uniqueness: true, format: {with: VALID_URL_REGEX}
  validate :check_url
  has_and_belongs_to_many :contests

  def check_url
    # 渡されたURLがvalidなものか判定する
    # そのうち実装する
    true
  end
end
