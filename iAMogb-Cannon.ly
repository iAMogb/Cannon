\version "2.18.2"

\header {
  title = "Cannon"
  composer = "iAMogb"
  tagline = ##f
}

global = {
  \key c \major
  \numericTimeSignature
  \time 5/4
}

violin = \relative c'' {
  \global
  f,16 d'8. r4 f,16 d'8. r4 f,16 bes d8 |%m1
  f,16 d'8. r4 f,16 d'8. r4 |%m2
  f,16 d'8. r4f,16 bes d8 cis16 aes eis8~ |%m3
  eis1 |%m4 check note value carry over
      \override NoteHead.style = #'cross
  r2 \tuplet 3/1 {d'4 d d} f16 e d8 |%m4
  r2 \tuplet 3/1 {d4 d d} a'16 f d8 |%m5
  r2 d16 d d8 d16 d8. |%m6
  d1 \glissando |%m7
      \revert NoteHead.style
  f,16 d'8. r4 f,16 d'8. r4 f,16 bes d8 |%m8
  f,16 d'8. r4 f,16 d'8. r4 |%m9
  f,16 d'8. r4 f,16 d'8. c16 a f8|%m10
  f16 d8. f16 c gis8 f16 d'8. f16 cis g8 f16 bes c8 |%m11


}

contrabass = \relative c {
  \global
  <d fis bes>16<d fis bes>8. c'16 aes e8 <d fis bes>16<d fis bes>8. c'16 aes e8 d16 fis ais8 |%m1
      \time 4/4
  <d, fis bes>16<d fis bes>8. c'16 aes e8 <d fis bes>16<d fis bes>8. c'16 aes e8 |%m2
  <d fis bes>16<d fis bes>8. c'16 aes e8 d16 fis ais8 a16 f des8~ |%m3
  des1 |%m4
  <e g>1 |%m5
  <ees g>1 |%m6
  <e g>1 |%m7
  <ees g>1 |%m8
      \time 5/4
  <d fis bes>16<d fis bes>8. c'16 aes e8 <d fis bes>16<d fis bes>8. c'16 aes e8 d16 fis ais8 |%m9
      \time 4/4
  <d, fis bes>16<d fis bes>8. c'16 aes e8 <d fis bes>16<d fis bes>8. c'16 aes e8 |%m10
  <d fis bes>16<d fis bes>8. c'16 aes e8 d16 fis ais8 a16 f des8 |%m11
      \time 5/4
  <d fis bes>16<d fis bes>8. c'16 aes e8 <d fis bes>16<d fis bes>8. c'16 aes e8 d16 fis ais8 |%m12
      \time 4/4
  <d, fis bes>16<d fis bes>8. c'16 aes e8 <d fis bes>16<d fis bes>8. c'16 aes e8 |%m13
  <d fis bes>16<d fis bes>8. c'16 aes e8 d16 fis ais8 a16 f des8 \clef treble |%m14
  \tuplet 3/2 {<dis' g>8<dis g>8<dis g>} <dis g>4 r2 |%m15
       \time 7/4
  \tuplet 3/2 {<f a>8<f a>8<f a>} <f a>4 r4 r1 |%m16
      \time 4/4
  \tuplet 3/2 {<g b>8<g b>8<g b>8} <g b>4 \tuplet 3/2 {<g b>8<g b>8<g b>8} <g b>4 |%m17
  \tuplet 3/2 {<g b>8<g b>8<g b>8} <g b>4 \tuplet 3/2 {<g b>8<g b>8<g b>8} <g b>4 |%m18
  \tuplet 3/2 {<dis g>8<dis g>8<dis g>} <dis g>4 r2 |%m19
      \time 7/4
  \tuplet 3/2 {<f a>8<f a>8<f a>} <f a>4 r4 r1 |%m20
      \time 6/4
  \tuplet 3/2 {<g b>8<g b>8<g b>8} <g b>4 \tuplet 3/2 {<g b>8<g b>8<g b>8} <g b>4 \tuplet 3/2 {<g b>8<g b>8<g b>8} <g b>4 |%m21
      \time 4/4
   \tuplet 3/2 {<dis g>8<dis g>8<dis g>} <dis g>4 r2 |%m22
       \time 7/4
  \tuplet 3/2 {<f a>8<f a>8<f a>} <f a>4 r4 r1 |%m23
      \time 4/4
  \tuplet 3/2 {<g b>8<g b>8<g b>8} <g b>4 \tuplet 3/2 {<g b>8<g b>8<g b>8} <g b>4 |%m24
  \tuplet 3/2 {<g b>8<g b>8<g b>8} <g b>4 \tuplet 3/2 {<g b>8<g b>8<g b>8} <g b>4\bar "|." |%m25
}

violinPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "violin"
} \violin

contrabassPart = \new Staff \with {
  instrumentName = ""
  midiInstrument = "contrabass"
} { \clef bass \contrabass }

\score {
  <<
    \violinPart
    \contrabassPart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
