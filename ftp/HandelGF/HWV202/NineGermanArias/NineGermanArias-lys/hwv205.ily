global={\key f \major}
\bookpart {
\header { 
	title = "Süße Stille, sanfte Quelle"
	subtitle = "HWV 205" 
	composer = "G.F.Händel"
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
	system-count = #10
	indent = .75\cm
}
	
\score {
%\transpose f es
<<
	\new Staff 
	<< 
		%\set Staff.instrumentName = #"Violino" 
		\addIncipitClef "treble" ""
		\new Voice {\include "./hwv_205/layout.ily"}
		\new Voice {\global \clef treble \include "./hwv_205/n_v1.ily"}
	>>
	\new Staff 
	<<
		%\set Staff.instrumentName = "Soprano"
		\addIncipitClef "soprano" ""
		\new Voice = "Soprano" {\global \clef treble \include "./hwv_205/n_s.ily"}
		\new Lyrics \lyricsto "Soprano" { \include "./hwv_205/l_s.ily" }
	>>
	\new Staff 
	<< 
		%\set Staff.instrumentName = \markup {\column { "Basso" "Continuo" }}
		\addIncipitClef "bass" ""
		\new Voice {\include "./hwv_205/n_fig.ily" }
		\new Voice {\global \clef bass \include "./hwv_205/n_bc.ily"}
	>>
>>
\layout {
	\context { \Score
%	\override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 8)
	}
}
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 100 4) } }
}
}
