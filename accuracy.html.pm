#lang pollen

◊(define-meta title "Quality Technical Information")

◊title{Accuracy}
◊;start from 139 "avoid long strings of nouns"
Inaccurate information make users upset, and make them not to read the document anymore. If a document directs users to do tasks inaccurately, the more the users have done things inaccurately, the more they'll be upset about the document and the product, because they'll have to do extra work after they find out they did it wrong.

◊section{Write information only when you understand, and verify after that.}

Sometimes you can easily understand the subject that you can write it quickly. But there's times you can't. Even when technical experts can't help you, you must do your job. In that case, start with what you do understand to write your first draft. It could be helpful to include questions to the experts so that you can ask them later more clearly with your draft.

If you get pressured by not understanding a subject well, keep in mind that you don't need to understand the subject as much as developers. Understanding too well could be a problem, because you might not understand why users have problems with the product. This can make your document hard to read and understand.

When you write procedures, you need to understand how users are likely to use the procedures to perform relevant tasks. Assume they have to solve problems using your document and their priority is solving the problems, not deeply understaning your document.

The best way to understand a technical subject that you are writing about is to use the product as a user would do.

◊section{Keep up with technical changes.}

Technical information should be up-to-date. It could be outdated easily. It's better not to use terms strongly related to change or release of products, because you'll need to modify them along the changes. So don't use the terms as much as you can, but if you have to, careful to modify them up to latest version.

Because it's easier to update Web-based document, users expect it to be updated in regular basis. Let users know about specifications of updates: when you'll update the document, what was changed from last updates, and/or making a way to get feedbacks from users.

◊section{Maintain consistency of all information about a subject.}

When there's multiple places where information is located, you may need to reuse some part of the information. If the part is short and unlikely to change in the future, just copy and paste would be sufficient. For longer one, or if you don't want to copy, use single source approach. That is, use the same source for different outputs.

In this book, the term reuse is used for the same meaning as single source approach.

By applying this approach, parts (that is, ◊uc{topic}) of source can be used in multiple documents. To update same parts in multiple documents, you only need to edit only one source. It helps to improve consistency and reduce time.

◊; ◊section{Reuse information when possible}
◊; 
◊; usecases. For detail, see p79.
◊; 
◊section{Avoid introducting inconsistencies and eliminate those that you find}

Not all related information can be reused. You must syncronize related information that can't be reused, or the information would be inconsistent in several places. To be effective (that is, to reduce time), minimize the number of repeated information through multiple documents.

If you use a table in your document and refer to the table somewhere in the document, accurately and consistently write the required content to use. Inaccurately refered content makes users confused.

Good practices mentioned by the author is well explained. If you need detail, see p82.

Headings or names of elements should be consistent with their content of the topic. Also, examples should be consistent with the content that related to the examples.

◊section{Use tools that automate checking for accuracy.}

Typographical and grammar errors break users' trust about the document. You can eaily find and correct these errors by using automated tools. Choose a proper tool and use carefully.

◊; ◊section{Check the accuracy of references to related information.}
