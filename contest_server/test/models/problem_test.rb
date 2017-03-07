require 'test_helper'

class ProblemTest < ActiveSupport::TestCase
  def setup
    @problem = Problem.new(problem_url: "aaaa")
  end

  test "problem_url should not be empty" do
    @problem.problem_url = ""
    assert_not @problem.valid?
  end

  test "problem_url shoule be unique" do
    duplicate_problem = @problem.dup
    @problem.save
    assert_not duplicate_problem.valid?
  end

  test "AOJ url should be valid" do
    @problem.problem_url = "http://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=1147&lang=jp"
    assert @problem.valid?
  end

  test "problem_url should be AOJ" do
    @problem.problem_url = "http://google.com"
    assert_not @problem.valid?
  end
end
