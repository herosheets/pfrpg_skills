class PfrpgSkills::Skill::Appraise
  def description
    'appraise'
  end

  def attribute
    'int'
  end

  def ac_penalty?
    false
  end

  def to_s
    "Appraise (#{attribute})"
  end
end
