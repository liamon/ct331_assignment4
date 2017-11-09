%Definitions for isElementInList(El, List)
isElementInList(El, [El|_]).
isElementInList(El, [_|Tail]) :-
    isElementInList(El, Tail).

%Definitions for reverseList(List, ReversedList)
reverseList([], []).
reverseList([SingleElement|[]], [SingleElement|[]]).
reverseList([Head|Tail], [reverseList(Tail), Head]).
    %ReversedTail = reverseList(Tail),
    %ReversedList = [ReversedTail, Head].

%insertElementIntoListEnd(El, List, NewList)

%Definitions for mergeLists(List1, List2, Merged)
