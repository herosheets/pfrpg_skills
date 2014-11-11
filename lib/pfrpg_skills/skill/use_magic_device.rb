class PfrpgSkills::Skill::UseMagicDevice
  def description
    'use_magic_device'
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
    Skill.stringify_skill("Use Magic Device", attribute, ac_penalty?)
  end
end

