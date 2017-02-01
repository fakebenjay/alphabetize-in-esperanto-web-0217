def alphabetize(array)
  esperanto = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  english =   "abcdefghijklmnopqrstuvwxyz"

  ##.tr sorts with English letters by using them to replace Esperanto letters
  ## ĉ in ĉu vi parolas esperanton becomes d for sorting purposes
  ## all letters are replaced/moved over this way, not just Esperanto ones.
  ## Tried gsub earlier, but that didn't pass tests

  array.sort_by do |word|
    word.tr(esperanto, english)
  end
end
