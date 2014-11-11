class PfrpgSkills::Skill::HandleAnimal
  def description
    'handle_animal'
  end

  def attribute
    'cha'
  end

  def untrained?
    false
  end

  def ac_penalty?
    false
  end

  def to_s
    Skill.stringify_skill("Handle Animal", attribute, ac_penalty?)
  end
end

