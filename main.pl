% ---------- Wumpus World ------------
% Reference:
% https://www.javatpoint.com/the-wumpus-world-in-artificial-intelligence
% https://github.com/krishnangovindraj/wumpusagent
% https://github.com/AlbertoCruzLuis/IA-ULL-WumpusWorld/blob/master/wumpus_game.pl
% 
% map: 4 * 4
% Types Cells: Wumpus, Pit, Gold, Agent
% Sensors: Stench, Breeze, Glitter, Scream
% Actions: Up, Down, Right, Left, Shoot, Grab

% Defining the predicates

:- dynamic
    agent_position/2,
    wumpus_position/2,
    pit_position/2,
    gold_position/2,
    gold/1,
    agent_health/1,
    agent_in_cave/1,
    agent_arrows/1,
    map/1.

%wumpus_world_states([wumpus_position(2,2),pit_position(3,3),gold_position(2,3)]).

% ------- Help --------
help :-
    format('Wumpus World Manual\n'),
    format('Write run(N) to start the world N.\n'),
    format('Available actions: Up, Down, Right, Left, Shoot, Grab, Climb\n').

% ------- Starting the Game ------

run(N) :-
    format('Welcome to Wumpus World~n'),
    create_matrix(4,4,M),
    replace_row_col(M,1,1,x,NewMatrix),
    assert(map(NewMatrix)),
    display_map(NewMatrix),
    init(N).

init(N) :-
    init_agent,
    init_states_wumpus(N),
    init_sensors.

init_sensors :-
    stench(Stench),
    breeze(Breeze),
    glitter(Glitter),
    format('Sensors: [Stench(~p),Breeze(~p),Glitter(~p),Scream(no)]\n', [Stench,Breeze,Glitter]).

init_states_wumpus(N) :-
    consult('worldBuilder.pl'), 
    buildWorld(N). 

init_agent :-
    assert(agent_position(1,1)),
    assert(agent_health(alive)),
    assert(agent_in_cave(yes)),
    assert(agent_arrows(1)),
    assert(gold(0)).
    

% ------- Moves of the agent --------
up :- 
    agent_position(X,Y),
    X1 is X - 1,
    map(M),
    replace_row_col(M,X,Y,+,M1),
    replace_row_col(M1,X1,Y,x,NewMatrix),
    display_map(NewMatrix),
    format('PosAgent: ~p\n',[agent_position(X1,Y)]),
    % Update Position of Agent and Map
    retractall(agent_position(,)),
    assert(agent_position(X1,Y)),
    retractall(map(_)),
    assert(map(NewMatrix)),
    update_agent_health,
    stench(Stench),
    breeze(Breeze),
    glitter(Glitter),
    format('Sensors: [Stench(~p),Breeze(~p),Glitter(~p),Scream(no)]\n', [Stench,Breeze,Glitter]).

down :- 
    agent_position(X,Y),
    X1 is X + 1,
    map(M),
    replace_row_col(M,X,Y,+,M1),
    replace_row_col(M1,X1,Y,x,NewMatrix),
    display_map(NewMatrix),
    format('Accion: ~p\n',[agent_position(X1,Y)]),
    % Update Position of Agent and Map
    retractall(agent_position(,)),
    assert(agent_position(X1,Y)),
    retractall(map(_)),
    assert(map(NewMatrix)),
    update_agent_health,
    stench(Stench),
    breeze(Breeze),
    glitter(Glitter),
    format('Sensors: [Stench(~p),Breeze(~p),Glitter(~p),Scream(no)]\n', [Stench,Breeze,Glitter]).

right :- 
    agent_position(X,Y),
    Y1 is Y + 1,
    map(M),
    replace_row_col(M,X,Y,+,M1),
    replace_row_col(M1,X,Y1,x,NewMatrix),
    display_map(NewMatrix),
    format('Accion: ~p\n',[agent_position(X,Y1)]),
    % Update Position of Agent and Map
    retractall(agent_position(,)),
    assert(agent_position(X,Y1)),
    retractall(map(_)),
    assert(map(NewMatrix)),
    update_agent_health,
    stench(Stench),
    breeze(Breeze),
    glitter(Glitter),
    format('Sensors: [Stench(~p),Breeze(~p),Glitter(~p),Scream(no)]\n', [Stench,Breeze,Glitter]).

left :- 
    agent_position(X,Y),
    Y1 is Y - 1,
    map(M),
    replace_row_col(M,X,Y,+,M1),
    replace_row_col(M1,X,Y1,x,NewMatrix),
    display_map(NewMatrix),
    format('Accion: ~p\n',[agent_position(X,Y1)]),
    % Update Position of Agent and Map
    retractall(agent_position(,)),
    assert(agent_position(X,Y1)),
    retractall(map(_)),
    assert(map(NewMatrix)),
    update_agent_health,
    stench(Stench),
    breeze(Breeze),
    glitter(Glitter),
    format('Sensors: [Stench(~p),Breeze(~p),Glitter(~p),Scream(no)]\n', [Stench,Breeze,Glitter]).

% Actions of Agent
grab :-
    pickup_gold,
    stench(Stench),
    breeze(Breeze),
    glitter(Glitter),
    format('Sensors: [Stench(~p),Breeze(~p),Glitter(~p),Scream(no)]\n', [Stench,Breeze,Glitter]).

shoot :-
    stench(Stench),
    breeze(Breeze),
    glitter(Glitter),
    shoot_arrow(Scream),
    format('Sensors: [Stench(~p),Breeze(~p),Glitter(~p),Scream(~p)]\n', [Stench,Breeze,Glitter,Scream]).

climb :-
    can_leave_cave(Answer),
    Answer \== yes, !.

can_leave_cave(yes) :-
    agent_position(1,1), !,
    retract(agent_in_cave(yes)),
    assert(agent_in_cave(no)),
    format('You are out of cave\n').

can_leave_cave(no) :-
    format("You cannot leave the cave from here.~n").

kill_wumpus(X,Y) :-
    retract(wumpus_position(X,Y)).

update_arrows :-
    agent_arrows(Arrows),
    Arrows > 0, !,
    NewArrows is Arrows - 1,
    retract(agent_arrows(Arrows)),
    assert(agent_arrows(NewArrows)),
    format("You have ~d arrow(s).~n",NewArrows).

shoot_arrow(Scream) :-
    format('Select a direction to shoot:
           up 
           down  
           right 
           left \n'),
    read(ArrowDirection),
    agent_position(X,Y),
    propagate_arrow(X,Y,ArrowDirection,Scream),
    update_arrows.

shoot_arrow(no) :-
    write('No arrows\n').

propagate_arrow(X,Y,up,Scream) :-
    X1 is X - 1,
    propagate_arrow(X1,Y,Scream).

propagate_arrow(X,Y,down,Scream) :-
    X1 is X + 1,
    propagate_arrow(X1,Y,Scream).

propagate_arrow(X,Y,right,Scream) :-
    Y1 is Y + 1,
    propagate_arrow(X,Y1,Scream).

propagate_arrow(X,Y,left,Scream) :-
    Y1 is Y - 1,
    propagate_arrow(X,Y1,Scream).

propagate_arrow(X,Y,yes) :-
    wumpus_position(X,Y), !,
    kill_wumpus(X,Y),
    format('Wumpus killed!\n').

propagate_arrow(,,no).

    
% Sensors of Agent
stench(yes) :-
    agent_position(X,Y),
    X1 is X + 1,
    X0 is X - 1,
    Y1 is Y + 1,
    Y0 is Y - 1,
  ( wumpus_position(X1,Y) ;
    wumpus_position(X0,Y) ;
    wumpus_position(X,Y1) ;
    wumpus_position(X,Y0) ;
    wumpus_position(X,Y) ),
  !.

stench(no).

breeze(yes) :-
  agent_position(X,Y),
  X1 is X + 1,
  X0 is X - 1,
  Y1 is Y + 1,
  Y0 is Y - 1,
  ( pit_position(X1,Y) ;
    pit_position(X0,Y) ;
    pit_position(X,Y1) ;
    pit_position(X,Y0) ;
    pit_position(X,Y)  ),
  !.

breeze(no).

glitter(yes) :-
  agent_position(X,Y),
  gold_position(X,Y),
  !.

glitter(no).

% Check Health of Agent
check_can_execute_action(no) :-
    agent_health(dead), !,
    write('You are dead!\n').

check_can_execute_action(no) :-
    agent_in_cave(no), !,
    write('You have left the cave\n').

check_can_execute_action(yes).

update_agent_health :-
  agent_health(alive),
  agent_position(X,Y),
  wumpus_position(X,Y),
  !,
  retract(agent_health(alive)),
  assert(agent_health(dead)),
  format("You are dead, kiled by wumpus.~n").

update_agent_health :-
  agent_health(alive),
  agent_position(X,Y),
  pit_position(X,Y),
  !,
  retract(agent_health(alive)),
  assert(agent_health(dead)),
  format("You are dead, stuck in a pit.~n").

update_agent_health.

% Actions
pickup_gold :-
    agent_position(X,Y),
    gold_position(X,Y), !,
    gold(NumberGold),              
    NumberGold1 is NumberGold + 1,
    retract(gold(NumberGold)),
    assert(gold(NumberGold1)),
    format("You have ~d piece(s) of gold!~n",NumberGold1),
    retract(gold_position(X,Y)).

display_map(Map) :- 
    write_matrix(Map).

% Predicates to draw the map. (By AlbertoCruzLuis)

do_list(N,L) :- do_list1(N, [], L).
do_list1(0, L, L) :- !.
do_list1(N, R, L) :- 
    N > 0,
    N1 is N-1,
    do_list1(N1, [-|R], L).

create_matrix(Rows,Cols,Matrix) :-
    do_list(Cols,List),
    create_matrix1(Rows,[],List,Matrix).
      

create_matrix1(0,M,_,M).
create_matrix1(N,R,L,M) :-
    N > 0,
    N1 is N - 1,
    append(R,[L],L1),
    create_matrix1(N1, L1,L, M).

replace_nth(Index,List,Value,NewList) :-
    nth1(Index,List,_,Transfer),
    nth1(Index,NewList,Value,Transfer).

replace_row_col(M,Row,Col,Cell,N) :-
    nth1(Row,M,Old),
    replace_nth(Col,Old,Cell,Upd),
    replace_nth(Row,M,Upd,N).
    
write_matrix([]).
write_matrix([H|T]) :-
    write_row(H),
    write_matrix(T).

write_row([]) :-
    format('|\n').
write_row([H|T]) :-
    format('| ~p ',H),
    write_row(T).


%Returns true if gold is in current position
grabGold() :-
  agent_position(X,Y),
  gold_position(X,Y),
  format('Gold found in: (~d,~d), PICK IT!\n', [X,Y]), 
  !.

%Returns true if  the bottom room (X,Y) is safe, meaning contains no pit or wumpus.
check_down_room() :-
    agent_position(X,Y),
    X1 is X + 1,
    X1 < 5,
   \+ pit_position(X1,Y), \+ wumpus_position(X1,Y) -> format('Room (~d,~d) is safe.\n', [X1,Y]).

%Returns true if the top room (X,Y) is safe, meaning contains no pit or wumpus.
check_up_room() :-
    agent_position(X,Y),
    X1 is X - 1,
    X1 > 0,
   \+ pit_position(X1,Y), \+ wumpus_position(X1,Y) -> format('Room (~d,~d) is safe.\n', [X1,Y]).

%Returns true if the right room (X,Y) is safe, meaning contains no pit or wumpus.
check_right_room() :-
    agent_position(X,Y),
    Y1 is Y + 1,
    Y1 < 5,
    \+ pit_position(X,Y1), \+ wumpus_position(X,Y1) -> format('Room (~d,~d) is safe.\n', [X,Y1]).

%Returns true if the left room (X,Y) is safe, meaning contains no pit or wumpus.
check_left_room() :-
    agent_position(X,Y),
    Y1 is Y - 1,
    Y1 > 0,
   \+ pit_position(X,Y1), \+ wumpus_position(X,Y1) -> format('Room (~d,~d) is safe.\n', [X,Y1]).

%Returns all the adjacent rooms that are safe.
safe() :-
    check_left_room();
    check_right_room();
    check_up_room();
    check_down_room(),!.
    
%Returns true if the wumpus is on an adjacent rooms.
shootWumpus() :-
    agent_position(X,Y),
    X1 is X + 1,
    X0 is X - 1,
    Y1 is Y + 1,
    Y0 is Y - 1,
    ( wumpus_position(X1,Y) ;
        wumpus_position(X0,Y) ;
        wumpus_position(X,Y1) ;
        wumpus_position(X,Y0) ;
        wumpus_position(X,Y)  ),
    !.