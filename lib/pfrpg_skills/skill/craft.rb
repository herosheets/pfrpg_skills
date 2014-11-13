class PfrpgSkills::Skill::Craft
  def initialize(subject='Armor')
    @subject = subject
  end

  def bonus_str
    "craft-#{@subject}"
  end

  def description
    "craft : #{@subject}"
  end

  def attribute
    'int'
  end

  def untrained?
    true
  end

  def ac_penalty?
    false
  end

  def to_s
    PfrpgSkills::Skill.stringify_skill("Craft #{@subject}", attribute, ac_penalty?)
  end

  def supported_types
    [
      'Alchemy',
      'Armor',
      'Baskets',
      'Books',
      'Bows',
      'Calligraphy',
      'Carpentry',
      'Cloth',
      'Clothing',
      'Glass',
      'Jewelry',
      'Leather',
      'Locks',
      'Paintings',
      'Pottery',
      'Sculptures',
      'Ships',
      'Shoes',
      'Stonemasonry',
      'Traps',
      'Weapons'
    ]
  end

  def subtype
    @subject
  end
end
