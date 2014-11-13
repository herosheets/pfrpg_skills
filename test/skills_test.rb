require 'minitest/autorun'
require 'pfrpg_skills'

class SkillsTest < Minitest::Test

  def test_all_skills
    skills = PfrpgSkills::Skill.skill_list
    assert skills
  end

end