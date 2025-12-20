local myQuotes = {
    {
        'Object-oriented programming is an exceptionally bad idea which could only have originated in California',
        '',
        '-- Edsger Dijkstra'
    },
    {
        'Object oriented programs are offered as alternatives to correct ones',
        '',
        '-- Edsger Dijkstra'
    },
    {
        'Lisp has jokingly been called “the most intelligent way to misuse a computer”.',
        'I think that description is a great compliment because it transmits the full flavor of liberation:',
        'it has assisted a number of our most gifted fellow humans in thinking previously impossible thoughts.',
        '',
        '-- Edsger Dijkstra'
    },
    {
        'Design patterns are spoonfeed material for brainless programmers incapable of independent thought,',
        'who will be resolved to producing code as mediocre as the design patterns they use to create it.',
        '',
        '-- Christer Ericson'
    },
    {
        'It is incredible how much more readable x86_64 machine code is than the C++ source code that generates it',
        '',
        '-- Andrew Kelley'
    }
}

function GetQuote()
    local quotes = require('startup.quotes')

    math.randomseed(os.clock())

    local index = math.floor(math.random() * (#quotes + #myQuotes))

    if (index < #quotes) then
        return quotes[index + 1]
    else
        return myQuotes[index + 1 - #quotes]
    end
end
