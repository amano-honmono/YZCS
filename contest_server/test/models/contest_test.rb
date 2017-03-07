require 'test_helper'

class ContestTest < ActiveSupport::TestCase
  def setup
    @contest = Contest.new(contest_name: "aaaa", start_time: DateTime.now, ending_time: DateTime.now + 1)
  end

  test "contest_name should not be empty" do
    @contest.contest_name = ""
    assert_not @contest.valid?
  end

  test "contest_name shoule be unique" do
    duplicate_contest = @contest.dup
    @contest.save
    assert_not duplicate_contest.valid?
  end

  test "ending_time should be later than start_time" do
    @contest.ending_time = DateTime.now - 1
    assert_not @contest.valid?
  end
end
