\include "/Users/trevorbaca/baca/lilypond/baca.ily"

%%% COLOPHON %%%

harmony-colophon-markup = \markup {
    \override #'(font-name . "Palatino")
    \with-color #black
    \override #'(baseline-skip . 4)
    \right-column {
        \line {
            Madison, Wisc. \hspace #0.75 – \hspace #0.75 New Haven, Conn.
        }
        \line { Mar. \hspace #0.75 – \hspace #0.75 Oct. 2019. }
        }
    }

%%% MARGIN MARKUP %%%

harmony-bass-flute-markup = \markup \hcenter-in #22 "Bass flute"
harmony-bfl-markup = \markup \hcenter-in #12 "Bfl."

harmony-percussion-i-markup = \markup \hcenter-in #22 "Percussion I"
harmony-perc-i-markup = \markup \hcenter-in #12 "Perc. I"

harmony-percussion-ii-markup = \markup \hcenter-in #22 "Percussion II"
harmony-perc-ii-markup = \markup \hcenter-in #12 "Perc. II"

harmony-harp-markup = \markup \hcenter-in #22 "Harp"
harmony-hp-markup = \markup \hcenter-in #12 "Hp."

harmony-viola-markup = \markup \hcenter-in #22 "Viola"
harmony-va-markup = \markup \hcenter-in #12 "Va."

harmony-cello-i-markup = \markup \hcenter-in #22 "Cello I"
harmony-vc-i-markup = \markup \hcenter-in #12 "Vc. I"

harmony-cello-ii-markup = \markup \hcenter-in #22 "Cello II"
harmony-vc-ii-markup = \markup \hcenter-in #12 "Vc. II"

harmony-contrabass-i-markup = \markup \hcenter-in #22 "Contrabass I"
harmony-cb-i-markup = \markup \hcenter-in #12 "Cb. I"

harmony-contrabass-ii-markup = \markup \hcenter-in #22 "Contrabass II"
harmony-cb-ii-markup = \markup \hcenter-in #12 "Cb. II"

%%% METRONOME MARKS %%%

harmony-fifty-seven-point-six = \markup
    \concat {
        \line
            {
                \abjad-metronome-mark-markup #2 #0 #1 #"57.6"
            }
        \hspace #0.5
    }

%%% PIECE-SPECIFIC MARKUP %%%

harmony-d-d-sharp = \markup
    \concat {
        D/D
        \raise #0.8
        \scale #'(0.55 . 0.55)
        \sharp
    }
