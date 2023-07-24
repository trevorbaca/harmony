#(set-default-paper-size "ledger")
#(set-global-staff-size 10)

\include "baca.ily"
\include "text-markups.ily"


\paper
{
  %bottom-margin = 10\mm
  evenFooterMarkup =
    \markup
    \if \should-print-page-number
    \fill-line {
      " "
      \bold
      \fontsize #3
      \override #'(font-name . "Adobe Garamond Pro")
      \concat {
        ( \hspace #1
        H \hspace #1
        A \hspace #1
        R \hspace #1
        M \hspace #1
        O \hspace #1
        N \hspace #1
        Y \hspace #1
        ) \hspace #1
        \hspace #3
        —
        \hspace #3
        \if \should-print-page-number
        \fromproperty #'page:page-number-string
        \hspace #3
        —
        \hspace #3
        Bača
      }
      " "
    }
  evenHeaderMarkup = \markup \fill-line { " " }
  left-margin = 25\mm
  oddFooterMarkup = \evenFooterMarkup
  oddHeaderMarkup = \markup \fill-line { " " }
  print-first-page-number = ##f
  print-page-number = ##t
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  right-margin = 20\mm
  markup-system-spacing = #'(
    (basic-distance . 0)
    (minimum-distance . 60)
    (padding . 0)
    (stretchability . 0)
  )
  system-system-spacing = #'(
    (basic-distance . 0)
    (minimum-distance . 24) % space after each system
    (padding . 0)
    (stretchability . 0)
  )
  top-markup-spacing = #'(
    (basic-distance . 0)
    (minimum-distance . 18)
    (padding . 0)
    (stretchability . 0)
  )
  top-system-spacing = #'(
    (basic-distance . 0)
    (minimum-distance . 26)
    (padding . 0)
    (stretchability . 0)
  )
  top-margin = 0\mm
}

\layout
{
  \accidentalStyle neo-modern
  indent = 0
  ragged-bottom = ##t
  ragged-last = ##t
  ragged-right = ##t
}

%%% CONTEXT

\layout
{

  % GLOBAL SKIPS
  \context
  {
    \name GlobalSkips
    \type Engraver_group
    \consists Script_engraver
    \consists Text_engraver
    \consists \alternateTextSpannerEngraver

    \override TextScript.font-size = 6

    \override TextSpanner.font-size = 6
  }

  % GLOBAL RESTS
  \context
  {
    \name GlobalRests
    \type Engraver_group
    \consists Multi_measure_rest_engraver

    \override MultiMeasureRest.transparent = ##t

    \override MultiMeasureRestText.staff-padding = 2
    \override MultiMeasureRestText.font-size = 3
    \override MultiMeasureRestText.outside-staff-priority = 0
    \override MultiMeasureRestText.padding = 0
  }

  % PAGE LAYOUT
  \context
  {
    \name PageLayout
    \type Engraver_group
    \consists Text_engraver
    \consists \alternateTextSpannerEngraver

    \override TextSpanner.font-size = 6
  }

  % GLOBAL CONTEXT
  \context
  {
    \name GlobalContext
    \type Engraver_group
    \consists Axis_group_engraver
    \consists Bar_engraver
    % causes programming error: cyclic dependency: calculation-in-progress
    % encountered for VerticalAxisGroup.adjacent-pure-heights:
    % \consists Bar_number_engraver
    % prevents LilyPond cyclic chain in pure-Y-offset callbacks warning:
    \consists Staff_collecting_engraver
    \consists Time_signature_engraver
    \accepts GlobalSkips
    \accepts GlobalRests
    \accepts PageLayout

    \override BarNumber.Y-extent = ##f
    % TODO: hide in score:
    %\override BarNumber.break-visibility = #end-of-line-invisible
    \override BarNumber.extra-offset = #'(-4 . -4)
    \override BarNumber.font-size = 1
    %\override BarNumber.stencil = ##f

    \override TextSpanner.to-barline = ##t

    % prevents StaffSymbol from starting too early after cut-away measures:
    \override TimeSignature.X-extent = ##f
    \override TimeSignature.break-align-symbol = #'left-edge
    \override TimeSignature.break-visibility = #end-of-line-invisible
    \override TimeSignature.font-size = 3
    \override TimeSignature.space-alist.clef = #'(extra-space . 0.5)
    \override TimeSignature.style = #'numbered
  }

  % VOICE
  \context
  {
    \Voice
    \remove Forbid_line_break_engraver
  }

  % STAFF
  \context
  {
    \Staff
    \accepts GlobalRests
    \remove Time_signature_engraver
    explicitClefVisibility = #end-of-line-invisible
  }

  % WIND SECTION
  \context
  {
    \StaffGroup
    \name WindSectionStaffGroup
    \type Engraver_group
    \alias StaffGroup
  }

  % PERCUSSION SECTION
  \context
  {
    \StaffGroup
    \name PercussionSectionStaffGroup
    \type Engraver_group
    \alias StaffGroup
  }

  % STRING SECTION
  \context
  {
    \StaffGroup
    \name StringSectionStaffGroup
    \type Engraver_group
    \alias StaffGroup
  }

  % MUSIC CONTEXT
  \context
  {
    \ChoirStaff
    \name MusicContext
    \type Engraver_group
    \alias ChoirStaff
    \accepts WindSectionStaffGroup
    \accepts PercussionSectionStaffGroup
    \accepts StringSectionStaffGroup
    systemStartDelimiter = #'SystemStartBar
  }

  % SCORE
  \context
  {
    \Score
    \accepts GlobalContext
    \accepts MusicContext
    \remove Bar_number_engraver
    \remove Metronome_mark_engraver
    \remove System_start_delimiter_engraver

    % necessary for uniform overlapping polyrhythms with accidentals
    % should be managed region-by-region in score:
    %%%\override Accidental.X-extent = ##f

    \override BarLine.hair-thickness = 0.5
    \override BarLine.X-extent = #'(0 . 0)

    \override Beam.breakable = ##t
    \override Beam.damping = 99

    \override BreathingSign.X-extent = ##f
    \override BreathingSign.extra-offset = #'(-1.5 . 0)

    \override Clef.layer = -1
    \override Clef.whiteout-style = #'outline

    \override Glissando.breakable = ##t
    \override Glissando.thickness = 3

    \override Hairpin.to-barline = ##f

    \override LaissezVibrerTie.layer = -2
    \shape #'((0 . 0) (0.5 . 0) (1 . 0) (2 . 0)) LaissezVibrerTie         

    \override NoteCollision.merge-differently-dotted = ##t

    \override NoteColumn.ignore-collision = ##t

    \shape #'((-2 . 0) (-1 . 0) (-0.5 . 0) (0 . 0)) RepeatTie         
    \override RepeatTie.X-extent = ##f

    \override SpacingSpanner.strict-grace-spacing = ##t
    \override SpacingSpanner.strict-note-spacing = ##t
    \override SpacingSpanner.uniform-stretching = ##t

    \override StemTremolo.beam-width = 1.5
    \override StemTremolo.flag-count = 4
    \override StemTremolo.slope = 0.5

    \override TextScript.font-name = #"Palatino"
    % DISCOVERY: overriding TextScript.X-extent = ##f
    %      makes LilyPond ignore self-alignment-X tweaks;
    %      probably should never be done at stylesheet level.
    % NOTE:    may be best to override NO text script properties.

    \override TextSpanner.to-barline = ##t

    \override TupletBracket.breakable = ##t
    \override TupletBracket.full-length-to-extent = ##f
    \override TupletBracket.padding = 2

    \override TupletNumber.font-size = 1

    autoBeaming = ##f
    tupletFullLength = ##t
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

harmony-colophon-markup = \markup {
  \override #'(font-name . "Palatino")
  \with-color #black
  \override #'(baseline-skip . 4)
  \right-column {
  \line { Madison, Wisc. \hspace #0.75 – \hspace #0.75 New Haven, Conn. }
  \line { Mar. \hspace #0.75 – \hspace #0.75 Nov. 2019. }
  }
  }

harmony-d-d-sharp-markup = \markup
  \concat { D/D \raise #0.8 \scale #'(0.55 . 0.55) \sharp }

harmony-half-harm-pressure-markup = \markup "(half harm. pressure)"

harmony-match-harp-decay-markup = \markup
  "match harp decay"

harmony-repeat-three-markup = \markup
  \with-dimensions-from \null
  \override #'(box-padding . 0.5)
  \box
  \bold
  \sans
  x3

harmony-rh-bow-markup = \markup "RH bow ..."

harmony-rh-bow-only-markup = \markup "(RH bow only)"

harmony-rh-bow-plus-lh-bow-markup = \markup "RH bow + LH bow ..."

%%% ANNOTATION %%%

harmony-a-sounds-ottava-higher-markup = \markup
  \line { A sounds 8 \hspace #-0.75 \raise #0.75 \scale #'(0.75 . 0.75) va higher }

harmony-a-flat-sounds-ottava-higher-markup = \markup
  \line {
  A \hspace #-0.4 \raise #0.5 \scale #'(0.65 . 0.65) \flat
  sounds 8 \hspace #-0.75 \raise #0.75 \scale #'(0.75 . 0.75) va higher
  }

harmony-b-flat-sounds-ottava-higher-markup = \markup
  \line {
  B \hspace #-0.4 \raise #0.5 \scale #'(0.65 . 0.65) \flat
  sounds 8 \hspace #-0.75 \raise #0.75 \scale #'(0.75 . 0.75) va higher
  }

harmony-d-flat-sounds-ottava-higher-markup = \markup
  \line {
  D \hspace #-0.4 \raise #0.5 \scale #'(0.65 . 0.65) \flat
  sounds 8 \hspace #-0.75 \raise #0.75 \scale #'(0.75 . 0.75) va higher
  }

harmony-g-sounds-ottava-higher-markup = \markup
  \line { G sounds 8 \hspace #-0.75 \raise #0.75 \scale #'(0.75 . 0.75) va higher }
