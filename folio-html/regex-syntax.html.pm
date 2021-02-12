#lang pollen

◊(define-meta title "understanding regex syntax")

◊section{}

When you use a regex expression, some ◊uc{expressions} are not interpreted literally. Instead, it'll be expanded to represent broader range. Regular expression is a key when using softwares like grep, sed, and awk. But be careful. Metacharacters available in each software vary in its meaning. You must check specifications for each software before applying.

◊section{That's an Expression}

A regular expression describes a pattern or ◊uc{sequence} of characters. A pattern basically matches input if there's exact match in the input. 

Each literal character is a regular expression, just like metacharacter. Literal character matches the exact set of the character.

Programs that accept regular expressions must first ◊uc{evaluate} the ◊uc{syntax} of the regular expression to produce a pattern, because, as mentioned above, regular expression syntax for each software may differ. After that, a program read the input by line and try to match the pattern. To match the pattern with an input line, the program try to match from the first character of the input line to the first character of the pattern. If it doesn't match, the program moves to the second character of the input line, and try to match again. This process iterates until there's matching character with the first character of the input line. When it matches, it tries to match the second character in the string to the second character of the pattern, and so on.

◊bold{Metacharacters}

There's several metacharacters which have special meaning when used as a regular expression. The dot (.) is used to match any single character. The asterisk (*) is used to match zero or more occurrences of the ◊strong{preceding} regular expression. When using the asterisk in shell, the meaning slightly differs; it can match zero or more any characters without preceding expression. Thus, if you want to express * in sed as the same meanig of * in the bash command like ◊code{ls *}, you need to use ".*".

◊section{A Line-up of Characters}

◊bold{The Ubiquitous Backslash}

Sed uses the backslash to cause a group of ordinary characters to be interpreted as metacharacters. But also, the backslash can be used to remove a special meaning of a meta character.

◊bold{A Wildcard}

a dot (.) as a regular expression represents any character except the newline. This makes sense, because if it includes newline, ".*" cannot represent each one line. ◊uc{But in awk, dot can even match an embedded newline character. why?}

◊bold{Writing Regular Expressions}

Be specific when writing regular expressions (or programs). The real problem is how to describe what you want in a detail of the quality of the output you want.

Writing process of regular expression:
1. Knowing what it is you want to match and how it might appear in the text.
2. Writing a pattern to describe what you want to match.
3. Testing the pattern to see what it matches.

By (possibly) repetitive testing, you'll find what you didn't consider, and it'll let you think how to improve and solve them. That things could be classified as four items below:

Hits: The lines that I wanted to match.
Misses: The lines that I didn’t want to match.
Omissions: The lines that I didn’t match but wanted to match.
False alarms: The lines that I matched but didn’t want to match.

◊bold{Character Classes}

For detail, see 58p.

◊bold{Repeated Occurences of a Character}

".*" matches arbitrary characters enclosed by double quotes. In egrep and awk, the "+" character provided as the meaning "one or more of the preceding regular expression." The "?" character means zero or one occurences of the preceding regular expression.

◊bold{What's The Word? Part 1}

This section describes examples.

◊bold{Positional Metacharacters}

"^$" matches blank lines.

In grep and sed, "^" and "$"` has its special meaning when they occur at the beggining or end of a regular expression, respectively. But in awk, "^" and "$" always have the same special meaning.

◊bold{Phrases}

For now, matching over multiple lines isn't available. but we'll see...

◊bold{A Span of Characters}
