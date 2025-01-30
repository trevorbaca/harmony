\version "2.25.23"
#(define-markup-command
    (harmony-text layout props markup)
    (markup?)
    (interpret-markup layout props
    #{
    \markup
    \with-dimensions-from \null
    \override #'(baseline-skip . 6)
    \override #'(font-size . 2)
    \override #'(line-width . 45)
    \override #'(word-space . 2)
    %%%\with-color #red
    \justify { #markup }
    #}))

#(define-markup-command
    (center-line layout props markup-list)
    (markup-list?)
    (interpret-markup layout props
    #{
    \markup
    \hcenter-in #45
    \line #markup-list
    #}))


harmony-text-one =
    \markup
    \harmony-text
    \center-column {
        \justify { Here I am. On my own. And no-one — }
    }


harmony-text-two =
    \markup
    \harmony-text
    \center-column {
        \center-line { Back. }
        \center-line { \null }
        \center-line { Hear me. On my — }
    }


harmony-text-three =
    \markup
    \harmony-text
    \center-column {
        \center-line { Back. }
        \center-line { \null }
        \justify { Here I am. On my own. On the dunes. Where I can hear the
        sea. }
    }


harmony-text-four =
    \markup
    \harmony-text
    \center-column {
        \center-line { Back. }
        \center-line { \null }
        \center-line { Here I am. }
        \center-line { \null }
        \center-line { Not so far. }
        \center-line { \null }
        \justify { On the dunes. Where I can see... }
    }


harmony-text-five =
    \markup
    \harmony-text
    \center-column {
        \center-line { On. }
        \center-line { \null }
        \justify { ...the wind in the marram grass. A bird – a gull – shearing
        the sky. Soundless. The wind: soundless. The gull: soundless. It is
        early morning. First light. I must have got up in the dark. Dressed
        myself. Come here. }
    }


harmony-text-six =
    \markup
    \harmony-text
    \center-column {
    \center-line { On. }
    \center-line { \null }
    \center-line { No more. }
    }


harmony-text-seven =
    \markup
    \harmony-text
    \center-column {
        \center-line { Back. }
        \center-line { \null }
        \center-line { Where I can — }
        \center-line { \null }
        \center-line { Further. }
        \center-line { \null }
        \justify { Here I am. On my own. No. Not on my own. At that dance,
        where I can see the band on the narrow stage, see them and hear them. A
        saxophone player – a girl – shearing the air. A roar, but sweet and
        accurate. The band: silenced. The girl: on her own. It would be early
        morning by now. First light. We have been up all night. Dressed to the
        nines. Come here. }
    }


harmony-text-eight =
    \markup
    \harmony-text
    \center-column {
        \center-line { Come here. }
        \center-line { \null }
    }


harmony-text-nine =
    \markup
    \harmony-text
    \center-column {
        \center-line { On. }
        \center-line { \null }
        \justify { Come here. As you will. When you’re young. }
    }


harmony-text-ten =
    \markup
    \harmony-text
    \center-column {
        \center-line { On. }
        \center-line { \null }
        \center-line { No more. }
    }



harmony-text-eleven =
    \markup
    \harmony-text
    \center-column {
        \center-line { Back. }
        \center-line { \null }
        \center-line { The girl: on her own. }
    }


harmony-text-twelve =
    \markup
    \harmony-text
    \center-column {
        \center-line { Yes. }
        \center-line { \null }
        \justify { The girl on her own. I went up to the stage. As close as I
        could get. Of course, she saw me. Her eyes caught mine. First meeting.
        She stopped playing, mid-phrase. The band picked up. She crouched down,
        there at the front of the stage. How her dress sparkled. We have been
        up all night, she said. In these costumes. Then: Come up here, she
        said. Perhaps I shook my head, or made some other sign. No, come up
        here. If you will. And that smile. What could I do? One hand on the
        stage, I jumped up. I looked back down, to the world I had left behind.
        }
    }


harmony-text-thirteen =
    \markup
    \harmony-text
    \center-column {
        \center-line { I come to a stop. }
        \center-line { \null }
        \center-line { On. }
        \center-line { \null }
        \center-line { I come to a stop. }
    }


harmony-text-fourteen =
    \markup
    \harmony-text
    \center-column {
        \center-line { On. }
    }


harmony-text-fifteen =
    \markup
    \harmony-text
    \center-column {
        \center-line { On. }
        \center-line { \null }
        \justify { The world I had left behind. }
    }


harmony-text-sixteen =
    \markup
    \harmony-text
    \center-column {
        \center-line { On. }
        \justify { I turned my eyes to her. That smile again. I took her in my
        arms. The band went wild. Or: I jumped back down. Or: Do you want to
        dance? she said. Or: — }
        \center-line { \null }
        \center-line { Back. }
        \center-line { How her dress sparkled. }
        \center-line { Further. }
        \center-line { The girl on her own. }
        \center-line { Further. }
        \center-line { Here I am. }
        \center-line { Yes. }
        \justify { Here I am. On my own. In that dense... }
        \center-line { On. }
        \center-line { In that dense... }
        \center-line { On. }
        \justify { ...forest where we had never been before. Where was this?
        And I had got separated from you, and though each of us was shouting
        the other’s name, at the top of our lungs, the two of us, we couldn’t
        hear one another, because, it must have been, it must have been because
        the trees were absorbing our voices. It got to that stage — On. It got
        to that stage where you start to panic. You feel you’ve left the normal
        world behind. You — }
        \center-line { \null }
        \center-line { On. }
        \center-line { Where was I? }
        \center-line { Forest. }
        \center-line { No more. }
        \center-line { Left the normal world behind. }
        \center-line { No more. }
        \center-line { Back. }
        \center-line { Harmony. }
    }



harmony-text-seventeen =
    \markup
    \harmony-text
    \center-column {
        \center-line { Not yet. }
        \center-line { \null }
        \center-line { On. }
        \center-line { \null }
        \center-line { Hear me. }
        \center-line { \null }
        \center-line { Back. }
        \center-line { \null }
        \center-line { Hear me. }
        \center-line { \null }
        \center-line { Back. }
        \center-line { \null }
        \justify { Here I am. On my own. On the dunes. }
    }


harmony-text-eighteen =
    \markup
    \harmony-text
    \center-column {
        \center-line { On. }
        \center-line { \null }
        \justify { Where I can see the sea. How it sparkled. At that time in the
        afternoon. There was dance music. }
        \center-line { \transparent TEXT \null }
        \center-line { No. }
        \center-line { \null }
        \center-line { On someone’s radio. }
        \center-line { \null }
        \center-line { No. }
        \center-line { \null }
        \center-line { And I didn’t mind. }
        \center-line { \null }
        \center-line { No. }
        \center-line { \null }
        \justify { I felt such joy, to be there, and the sea. It was so loud
        you couldn’t hear me when I shouted to you to join me. Come here! Come
        here! So I held up an arm, and waved, and you did see me. That smile. }
        \center-line { \transparent TEXT \null }
        \center-line { No. }
        \center-line { \null }
        \center-line { That smile. }
        \center-line { \null }
        \center-line { No. Back. }
    }


harmony-text-nineteen =
    \markup
    \harmony-text
    \center-column {
        \center-line { Here I am. }
        \center-line { \null }
        \center-line { Yes. }
        \center-line { \null }
        \center-line { On my own. }
        \center-line { \null }
        \center-line { Yes. }
        \center-line { \null }
        \center-line { No. Not on my own. }
        \center-line { \null }
        \center-line { Back. }
        \center-line { \null }
        \center-line { On my own. }
        \center-line { \null }
        \center-line { Yes. }
        \center-line { \null }
        \justify { On the dunes. Or: In that dense forest. }
        \center-line { \null }
        \center-line { Choose. }
    }


harmony-text-twenty =
    \markup
    \harmony-text
    \center-column {
        \justify { On the dunes. Where I can see the wind in the marram grass.
        It is early morning. }
    }


harmony-text-twenty-one =
    \markup
    \harmony-text
    \center-column {
        \center-line { Back. }
        \center-line { \null }
        \justify  { A bird – a gull – shearing the sky. Soundless. The wind:
        soundless. The band: silenced. }
    }

harmony-text-twenty-two =
    \markup
    \harmony-text
    \center-column {
        \center-line { Back. }
        \center-line { \null }
        \center-line { Here I am. }
        \center-line { \null }
        \center-line { Not so far. }
        \center-line { \null }
        \center-line { Here I am. }
        \center-line { \null }
        \center-line { Not so far. }
        \center-line { \null }
        \center-line { Here I am. }
    }

harmony-text-twenty-three =
    \markup
    \harmony-text
    \center-column {
        \center-line { On. }
    }

harmony-text-twenty-four =
    \markup
    \harmony-text
    \center-column {
        \center-line { Here I am. }
    }


harmony-text-twenty-five =
    \markup
    \harmony-text
    \center-column {
        \center-line { On. }
        \center-line { \null }
        \center-line { Harmony. }
    }

harmony-text-twenty-six =
    \markup
    \harmony-text
    \center-column {
        \center-line { Not yet. }
    }

harmony-text-twenty-seven =
    \markup
    \harmony-text
    \center-column {
        \center-line { Harmony. }
    }

harmony-text-twenty-eight =
    \markup
    \harmony-text
    \center-column {
        \center-line { Not yet. }
    }
