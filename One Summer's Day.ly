\version "2.24.4"

\header {
  title = "One Summer's Day"
  composer = "Joe Hisaishi"
} 

\score  {
  \new PianoStaff <<
      \new Staff = "right" {
        \set Staff.midiInstrument = #"acoustic grand"
        \clef treble
        \time 4/4
        \relative c'' {
          \tempo 4 = 80
         r8 e8 (e8 e8 e8 d8 e8 a8)
         e8 (d16 d16~ d2.)
      }
    }
    \new Staff = "left" {
      \set Staff.midiInstrument = #"acoustic grand"
        \clef bass
        \time 4/4
        \relative c' {
          \tempo 4 = 80
         <c g d>1~
         <c g d>1
      }
    }
  >>
  \layout { }  % This generates the sheet music.
  \midi {
    \tempo 4 = 80  % This sets the quarter note to 80 beats per minute
  }    % This generates the MIDI output.
}