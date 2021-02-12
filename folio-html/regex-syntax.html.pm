#lang pollen

◊(define-meta title "understanding regular expression syntax")

◊section{.}

An ◊uc{expression} is not interpreted literally.

grep, sed, and awk all use regular expressions. However, available set of the metacharacters varies for each programs.


◊section{that's an expression}

A regular expression describes a pattern or ◊uc{sequence} of characters. A pattern basically matches input if there's exact match in the input. 

Like metacharacter, each literal character is a regular expression that matches only that single character.

Programs that accept regular expressions must first ◊uc{evaluate} the ◊uc{syntax} of the regular expression to produce a pattern, because, as mentioned above, regular expression syntax for each program may differ. After that a program read the input by line and try to match the pattern. To match the pattern with an input line, a program try to match from the first character of the input line to the first character of the pattern. If it doesn't match, move to the second character of the input line, and try again. If it matches, it try to match the "second" character in the string to the second character of the pattern.

◊bold{metacharacters}

the dot (.) is used to match any single character.

the asterisk (*) is used to match zero or more occurrences of the ◊strong{preceding} regular expression. For shell, the asterisk's meaning slightly differ; it can match zero or more characters without preceding expression. Thus, if you want to express the same meanig of * in ◊code{ls *}, you need to use ◊code{.*}. Out of shell, only * cannot match anything.

◊section{a line-up of characters}

◊bold{the ubiquitous backslash}

sed uses the backslash to cause a group of ordinary characters to be interpreted as metacharacters:

◊code{ \( \) \{ \} \n }

◊bold{a wildcard}

a dot (.) as a regular expression represents any character except the newline. This makes sense, because if it includes newline, ◊code{.*} cannot represent each one line. ◊uc{But in awk, dot can even match an embedded newline character. why?}

◊bold{writing regular expressions}

Be specific when writing regular expressions (or programs). The real problem is how to describe what you want in a detail of the quality of the output you want.

Writing process of regular expression:
1. Knowing what it is you want to match and how it might appear in the text.
2. Writing a pattern to describe what you want to match.
3. Testing the pattern to see what it matches.

By (possibly) repetitive testing, you'll find what you didn't consider, and it'll let you think how to improve and solve them. That things could be classified as:

Hits
 The lines that I wanted to match.
Misses
 The lines that I didn’t want to match.
Omissions
 The lines that I didn’t match but wanted to match.
False alarms
 The lines that I matched but didn’t want to match.

◊bold{character classes}

already knows. but if you need detail, see from 58p.

◊bold{repeated occurences of a character}

".*" matches arbitrary characters enclosed by double quotes.

In egrep and awk, the "+" character provided as the meaning "one or more of the preceding regular expression." The "?" character means zero or one occurences of the preceding regular expression.

◊bold{what's the word? part 1}

examples.

◊bold{positional metacharacters}

^$ matches blank lines.

In grep and sed, ^ and $ has its special meaning when they occur at the beggining or end of a regular expression, respectively. But in awk, ^ and $ always have the same special meaning.

◊bold{phrases}

for now, matching over multiple lines isn't available. but we'll see...

◊bold{a span of characters}
