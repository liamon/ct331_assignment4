%Definitions for isElementInList(El, List)
isElementInList(El, [El|_]).
isElementInList(El, [_|Tail]) :-
    isElementInList(El, Tail).

%Definitions for mergeLists(List1, List2, Merged)
% http://www.cse.unsw.edu.au/~billw/cs9414/notes/prolog/intro.html#lists
%
% The base case is when the first list is empty.
% The reduce case is removing the first element from the list.
%
% Since Merged stars off as an unbound value, we can say it has the
% same Head without a problem. After the rule reaches the base case,
% each exit will add an element from List1 to the front of List2.
mergeLists([], List, List).
mergeLists([Head|Tail1], List2, [Head|TailOfMerged]) :-
    mergeLists(Tail1, List2, TailOfMerged).

%Definitions for reverseList(List, ReversedList)
reverseList([], []). % Base case.
reverseList([Head|Tail], ReversedList) :- % Reduce case.
    reverseList(Tail, ReversedTail),
    mergeLists(ReversedTail, [Head], ReversedList).

%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El, List, NewList) :-
    mergeLists(List, [El], NewList).
