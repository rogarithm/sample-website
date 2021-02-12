#lang pollen


◊;{
* matches every element. in the styles of mb, he initiallizes margin, border, and padding to 0.
}
* {
	padding: 0;
	margin: 0;
	border: 0;
	font-weight: inherit;
	font-size: inherit;
	font-style: inherit;
	◊;{
	inherit a CSS property from the parent element. But as * means every element of html, then what's the parent element of *?
	}
	}

◊; didn't use in html.pm, but template will have body, so need this styling.
body {
    margin: 0;
    margin-left:auto; ◊; this will give the content in the center.
    margin-right:auto;
    width:100%;
    max-width:1000px;
}

◊(define default-margin-left 8)
◊(define default-margin-right 4)
◊(define default-width 30)


◊;{
#doc ◊; styles if an id is doc
{
    margin-top: 6rem;
		◊; rem is short for root em. Unlike em, it always related to the font size of html tag.  But what's the font size of html tag?
		
    margin-bottom: 6rem;
    ◊(make-css-kerning)
    ◊font-family: concourse-t3;
    ◊color: #222;
    line-height: 1.4;
}
}

◊(define default-horiz-block-metrics (format "
			margin-left: ~arem;
			width: ~arem;
			margin-right: ~arem;" default-margin-left default-width default-margin-right))

◊|title-tag| {
    ◊|default-horiz-block-metrics|
    font-family: charter;
    font-size: 2rem;
    line-height: 1.1;
    width: 24rem;
    margin-top: 0.25rem;
    margin-bottom: 1.5rem;
}

◊|section-tag| {
  ◊|default-horiz-block-metrics|
  font-family: fira-sans;
  font-size: 1.2rem;
  line-height: 1.2;
  padding-top: 0.7rem;
  padding-bottom: 0.3rem;
}

◊|subsection-tag| {
  ◊|default-horiz-block-metrics|
	font-size: 1.1rem;
	font-style: bold;
	margin-bottom: 0.8rem;
}

strong {
  font-size: 1rem;
	font-style: bold;
	margin-bottom: 0.8rem;
}

p {
  ◊|default-horiz-block-metrics|
	font-size: 1rem;
	margin-bottom: 0.8rem;
}

◊|code-tag|{
  ◊|default-horiz-block-metrics|
  font-family: fira-mono, sans-serif;
	font-size: 1rem;
	margin-bottom: 0.8rem;
◊; line-height: 1.2;
◊;	padding-top: 0.7rem;
◊;	padding-bottom: 0.3rem;
}

◊|uncertain-tag| {
  font-style: italic;
}
