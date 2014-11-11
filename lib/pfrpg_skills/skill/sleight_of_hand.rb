class PfrpgSkills::Skill::SleightOfHand
  def description
    'sleight_of_hand'
  end

  def attribute
    'dex'
  end

  def untrained?
    false
  end

  def ac_penalty?
    true
  end

  def to_s
    Skill.stringify_skill("Sleight of Hand", attribute, ac_penalty?)
  end
end

