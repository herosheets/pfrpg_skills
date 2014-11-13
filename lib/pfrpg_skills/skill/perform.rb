class PfrpgSkills::Skill::Perform

  def initialize(subject='Sing')
    @subject = subject
  end

  def bonus_str
    "perform-#{@subject}"
  end

  def description
    "perform : #{@subject}"
  end

  def attribute
    'cha'
  end

  def untrained?
    true
  end

  def ac_penalty?
    false
  end

  def to_s
    PfrpgSkills::Skill.stringify_skill("Perform - #{@subject}", attribute, ac_penalty?)
  end

  def supported_types
    [
      'Act',
      'Comedy',
      'Dance',
      'Keyboard',
      'Oratory',
      'Percussion',
      'Sing',
      'String',
      'Wind'
    ]
  end

  def subtype
    @subject
  end
end

