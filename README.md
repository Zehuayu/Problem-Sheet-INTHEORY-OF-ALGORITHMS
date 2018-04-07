# Problem-Sheet-INTHEORY-OF-ALGORITHMS
Student: Patrick Moran Stident Id: g00179039 Lecturer: Ian McLoughlin

## what is Racket 
Racket (formerly PLT Scheme) is a general purpose, multi-paradigm programming language in the Lisp-Scheme family. One of its design goals is to serve as a platform for language creation, design, and implementation. The language is used in a variety of contexts such as scripting, general-purpose programming, computer science education, and research.

## The requirement of project

The following exercises should be completed in the Racket programming language.
Remember to plan your work and make regular commits to your repository. The instructions
for submitting your work are given on the Moodle page. Note that “from scratch”
means using only cons, car, cdr, define, lambda, if, null, null?, cond, map, = and
the basic numerical operators (+, -, *, /, modulo). Other basic functions may be allowed,
but please confirm their use with the lecturer.

## How to run it 

CD anywhere

git clone https://github.com/Zehuayu/Problem-Sheet-INTHEORY-OF-ALGORITHMS

## The introduction of function

Cons Car Cdr: Cons, also called pair, contains two values, car gets the first value, and cdr gets the second value. Racket inherits this feature of Lisp:

    example:> (cons 'x 'y)
    '(x. y)

    > '(10 . 20)
    '(10 . 20)

    > (define pair (cons 10 20))
    > (car pair)
    10

    > (cdr pair)
    20

If the content after the second element is treated as a list, the list can also be considered as cons . We do a few experiments:
     
     (cons 1 (cons 2 3))
     '(1 2 . 3)

    > (cons 1 (cons 2 (cons 3 '())))
    '(1 2 3)

    > (cons 1 (cons 2 empty))
    '(1 2)
    
In the cond expression, the last test-expr can be defined as else . In this way, if the previous test condition fails, the corresponding body s of test-expr will be executed as the default behavior.
The nested if statement above can be expressed more elegantly with cond :

    > (cond [(> score 90) "A"]
        [(> score 70) "B"]
        [(> score 60) "Pass"]
        [else "Not Pass"])
        "Not Pass"


## The resource from 

http://racket.tchen.me/basics.html

https://docs.racket-lang.org/guide/index.html


## Install and run Racket


REPL: Read Evaluate Print Loop, see wikipedia:REPL for details

As an interpreted language, Racket comes standard with a REPL interpreter; in addition, it also provides a very powerful IDE: DrRacket. Download and install Racket is very simple, the official download page select the version under the appropriate operating system, follow the prompts to install. For OSX users, the program after installation is located in / Applications / Racket v6.1.1 / down, if you want to run directly under the shell Racket or DrRacket , set the / Applications / Racket v6.1.1 / bin added to $ PATH next.

After that, DrRacket can be run :

$ drracket

    