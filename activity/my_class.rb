# frozen_string_literal: true

require 'json'

# The best class there ever was!
# Things that don't seem to work:
# - Network calls
# - Filesystem navigation
class MyClass

  def to_s
    <<-'ENDSTRING'
<pre style="font-family:monospace">
    _.-````'-,_
    _,.,_ ,-'`           `'-.,_
  /)     (\                   '``-.
 ((      ) )                      `\
  \)    (_/                        )\
   |       /)           '    ,'    / \
   `\    ^'            '     (    /  ))
     |      _/\ ,     /    ,,`\   (  &quot;`
      \Y,   |  \  \  | ````| / \_ \
        `)_/    \  \  )    ( &gt;  ( &gt;
                 \( \(     |/   |/
                /_(/_(    /_(  /_(
</div>
    ENDSTRING
  end

end
