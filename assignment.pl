%Definitions for isElementInList(El, List)
isElementInList(El, [El|_]).
isElementInList(El, [_|Tail]) :-
    isElementInList(El, Tail).

%Definitions for mergeLists(List1, List2, Merged)
%mergeLists([], List, List).
mergeLists(List, [], List).
%mergeLists(List1, [SingleElement|[]], [List1, SingleElement]).
%mergeLists(List1, List2, [List1, List2]).
mergeLists(List1, [Head|Tail], Merged) :-
    mergeLists([List1, Head], Tail, Merged).

%Definitions for reverseList(List, ReversedList)
reverseList([], []).
reverseList([SingleElement|[]], [SingleElement|[]]).
reverseList([Head|Tail], ReversedList) :-
    reverseList(Tail, ReversedTail),
    mergeLists(ReversedTail, Head, ReversedList).

%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El, List, NewList) :-
    mergeLists(List, [El], NewList).
