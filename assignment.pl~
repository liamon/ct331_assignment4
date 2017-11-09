%Definitions for isElementInList(El, List)
isElementInList(El, [El|_]).
isElementInList(El, [_|Tail]) :-
    isElementInList(El, Tail).

%Definitions for reverseList(List, ReversedList)
reverseList([], []).
reverseList([SingleElement|[]], [SingleElement|[]]).
reverseList([Head|Tail], ReversedList) :-
    reverseList(Tail, ReversedTail),
    ReversedList = [ReversedTail, Head].

%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd([], List, List).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], List, List).
mergeLists(List, [], List).
mergeLists(List1, List2, [List1, List2]).
