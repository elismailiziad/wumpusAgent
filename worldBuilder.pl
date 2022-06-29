%Removes all objects from world
clearWorld :-
    rectractall(wumpus_position(_,_)),
    retractall(pit_position(_,_)),
    retractall(gold_position(_,_)),
    retractall(gold(_)),
    retractall(agent_health(_)),
    retractall(agent_in_cave(_)),
    retractall(agent_arrows(_)),
    retractall(map(_)).

%Clears and builds 4x4 world
recreateWorld(N) :-
    buildWorld(N).

%The following are 2000 worlds generated using a simple MATLAB code.
% Wumpus and Gold are randomly placed in any space other than the
% initial hunter space. All rooms have a 20% chance of being a pit.

buildWorld(1) :-
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)).

buildWorld(2) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(3) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,2)).

buildWorld(4) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(5) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,4)).

buildWorld(6) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(7) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,4)).

buildWorld(8) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,4)).

buildWorld(9) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,1)).

buildWorld(10) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,3)).

buildWorld(11) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(12) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,1)).

buildWorld(13) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,4)).

buildWorld(14) :-
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,2)).

buildWorld(15) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(16) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,2)).

buildWorld(17) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,4)).

buildWorld(18) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(19) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,2)).

buildWorld(20) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(21) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,4)).

buildWorld(22) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,4)).

buildWorld(23) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,2)).

buildWorld(24) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,3)).

buildWorld(25) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,2)).

buildWorld(26) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,4)).

buildWorld(27) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(28) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,3)).

buildWorld(29) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(30) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,4)).

buildWorld(31) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(32) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,3)).

buildWorld(33) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,4)).

buildWorld(34) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,2)).

buildWorld(35) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,4)).

buildWorld(36) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,4)).

buildWorld(37) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,2)).

buildWorld(38) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,2)).

buildWorld(39) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,1)).

buildWorld(40) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,2)).

buildWorld(41) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,3)).

buildWorld(42) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,4)).

buildWorld(43) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,4)).

buildWorld(44) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,3)).

buildWorld(45) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,2)).

buildWorld(46) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(47) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,3)).

buildWorld(48) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,3)).

buildWorld(49) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,2)).

buildWorld(50) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,1)).

buildWorld(51) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(52) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,2)).

buildWorld(53) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,3)).

buildWorld(54) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(55) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,3)).

buildWorld(56) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(57) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,3)).

buildWorld(58) :-
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,3)).

buildWorld(59) :-
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,2)).

buildWorld(60) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,3)).

buildWorld(61) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,3)).

buildWorld(62) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,2)).

buildWorld(63) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,3)).

buildWorld(64) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,3)).

buildWorld(65) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,3)).

buildWorld(66) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,1)).

buildWorld(67) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,3)).

buildWorld(68) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,4)).

buildWorld(69) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(70) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,2)).

buildWorld(71) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,4)).

buildWorld(72) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,3)).

buildWorld(73) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,4)).

buildWorld(74) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,1)).

buildWorld(75) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,4)).

buildWorld(76) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,2)).

buildWorld(77) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,4)).

buildWorld(78) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,4)).

buildWorld(79) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,2)).

buildWorld(80) :-
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,2)).

buildWorld(81) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,4)).

buildWorld(82) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,2)).

buildWorld(83) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,1)).

buildWorld(84) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,3)).

buildWorld(85) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,4)).

buildWorld(86) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,4)).

buildWorld(87) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,2)).

buildWorld(88) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,2)).

buildWorld(89) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,1)).

buildWorld(90) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,1)).

buildWorld(91) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,2)).

buildWorld(92) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,4)).

buildWorld(93) :-
    asserta(pit_position(1,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,3)).

buildWorld(94) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,3)).

buildWorld(95) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,2)).

buildWorld(96) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,2)).

buildWorld(97) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(98) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,2)).

buildWorld(99) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(100) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,3)).

buildWorld(101) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,2)).

buildWorld(102) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,3)).

buildWorld(103) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,3)).

buildWorld(104) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(105) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,2)).

buildWorld(106) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,2)).

buildWorld(107) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(108) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(109) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,2)).

buildWorld(110) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,1)).

buildWorld(111) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,4)).

buildWorld(112) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,4)).

buildWorld(113) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,2)).

buildWorld(114) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,4)).

buildWorld(115) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,2)).

buildWorld(116) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,1)).

buildWorld(117) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,4)).

buildWorld(118) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(119) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,4)).

buildWorld(120) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,1)).

buildWorld(121) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,2)).

buildWorld(122) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(123) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,2)).

buildWorld(124) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,1)).

buildWorld(125) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,4)).

buildWorld(126) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,2)).

buildWorld(127) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,1)).

buildWorld(128) :-
    asserta(pit_position(3,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(129) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,4)).

buildWorld(130) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,3)).

buildWorld(131) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(132) :-
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(133) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,1)).

buildWorld(134) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(135) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,2)).

buildWorld(136) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(137) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,2)).

buildWorld(138) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,4)).

buildWorld(139) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,4)).

buildWorld(140) :-
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,1)).

buildWorld(141) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,4)).

buildWorld(142) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,4)).

buildWorld(143) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,2)).

buildWorld(144) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(145) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,2)).

buildWorld(146) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,3)).

buildWorld(147) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,2)).

buildWorld(148) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,4)).

buildWorld(149) :-
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,3)).

buildWorld(150) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,3)).

buildWorld(151) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,1)).

buildWorld(152) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,2)).

buildWorld(153) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,3)).

buildWorld(154) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,3)).

buildWorld(155) :-
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,3)).

buildWorld(156) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,3)).

buildWorld(157) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,2)).

buildWorld(158) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(159) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(160) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,4)).

buildWorld(161) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,3)).

buildWorld(162) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,4)).

buildWorld(163) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(164) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,4)).

buildWorld(165) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,3)).

buildWorld(166) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(167) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(168) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,3)).

buildWorld(169) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(170) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,4)).

buildWorld(171) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,4)).

buildWorld(172) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,2)).

buildWorld(173) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(174) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,1)).

buildWorld(175) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,1)).

buildWorld(176) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,1)).

buildWorld(177) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(178) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,4)).

buildWorld(179) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,4)).

buildWorld(180) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,3)).

buildWorld(181) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,4)).

buildWorld(182) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,4)).

buildWorld(183) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,3)).

buildWorld(184) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(185) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,1)).

buildWorld(186) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,1)).

buildWorld(187) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,1)).

buildWorld(188) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,4)).

buildWorld(189) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(190) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(191) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,3)).

buildWorld(192) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,4)).

buildWorld(193) :-
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,4)).

buildWorld(194) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,4)).

buildWorld(195) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(196) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,2)).

buildWorld(197) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,4)).

buildWorld(198) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,2)).

buildWorld(199) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,2)).

buildWorld(200) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,4)).

buildWorld(201) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,4)).

buildWorld(202) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,2)).

buildWorld(203) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)).

buildWorld(204) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,1)).

buildWorld(205) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(206) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,3)).

buildWorld(207) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(208) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,1)).

buildWorld(209) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(210) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,1)).

buildWorld(211) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,4)).

buildWorld(212) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,3)).

buildWorld(213) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,2)).

buildWorld(214) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,4)).

buildWorld(215) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(216) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,3)).

buildWorld(217) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)).

buildWorld(218) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,2)).

buildWorld(219) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,1)).

buildWorld(220) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(221) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,1)).

buildWorld(222) :-
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(223) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,1)).

buildWorld(224) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,3)).

buildWorld(225) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,3)).

buildWorld(226) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,2)).

buildWorld(227) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,4)).

buildWorld(228) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,3)).

buildWorld(229) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(230) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,1)).

buildWorld(231) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,2)).

buildWorld(232) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,4)).

buildWorld(233) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,2)).

buildWorld(234) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(235) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,4)).

buildWorld(236) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,2)).

buildWorld(237) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,3)).

buildWorld(238) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,4)).

buildWorld(239) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,4)).

buildWorld(240) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,4)).

buildWorld(241) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,4)).

buildWorld(242) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,4)).

buildWorld(243) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,4)).

buildWorld(244) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,2)).

buildWorld(245) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,2)).

buildWorld(246) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,4)).

buildWorld(247) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,1)).

buildWorld(248) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,3)).

buildWorld(249) :-
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(250) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,4)).

buildWorld(251) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,2)).

buildWorld(252) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(253) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,2)).

buildWorld(254) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)).

buildWorld(255) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,4)).

buildWorld(256) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(257) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,2)).

buildWorld(258) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,3)).

buildWorld(259) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,3)).

buildWorld(260) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(261) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,1)).

buildWorld(262) :-
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,4)).

buildWorld(263) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(264) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,4)).

buildWorld(265) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,3)).

buildWorld(266) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(267) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,3)).

buildWorld(268) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,4)).

buildWorld(269) :-
    asserta(pit_position(1,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,1)).

buildWorld(270) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,3)).

buildWorld(271) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(272) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,4)).

buildWorld(273) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,3)).

buildWorld(274) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,3)).

buildWorld(275) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,1)).

buildWorld(276) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,1)).

buildWorld(277) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(278) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,3)).

buildWorld(279) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,3)).

buildWorld(280) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(281) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,3)).

buildWorld(282) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,4)).

buildWorld(283) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,3)).

buildWorld(284) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,3)).

buildWorld(285) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,2)).

buildWorld(286) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,3)).

buildWorld(287) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,2)).

buildWorld(288) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,2)).

buildWorld(289) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,2)).

buildWorld(290) :-
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,2)).

buildWorld(291) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(292) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(293) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,1)).

buildWorld(294) :-
    asserta(pit_position(1,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(295) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,3)).

buildWorld(296) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,3)).

buildWorld(297) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,3)).

buildWorld(298) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,4)).

buildWorld(299) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,1)).

buildWorld(300) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(301) :-
    asserta(pit_position(1,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,2)).

buildWorld(302) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,2)).

buildWorld(303) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,2)).

buildWorld(304) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(305) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,2)).

buildWorld(306) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,4)).

buildWorld(307) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,1)).

buildWorld(308) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,1)).

buildWorld(309) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,1)).

buildWorld(310) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,4)).

buildWorld(311) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(312) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,3)).

buildWorld(313) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(314) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,3)).

buildWorld(315) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,2)).

buildWorld(316) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,1)).

buildWorld(317) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(318) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,4)).

buildWorld(319) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,2)).

buildWorld(320) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,2)).

buildWorld(321) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,4)).

buildWorld(322) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,4)).

buildWorld(323) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,1)).

buildWorld(324) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,3)).

buildWorld(325) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,4)).

buildWorld(326) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,1)).

buildWorld(327) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,1)).

buildWorld(328) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,3)).

buildWorld(329) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,1)).

buildWorld(330) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,2)).

buildWorld(331) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,3)).

buildWorld(332) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,4)).

buildWorld(333) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,1)).

buildWorld(334) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,4)).

buildWorld(335) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(336) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,1)).

buildWorld(337) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(338) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(339) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,2)).

buildWorld(340) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,1)).

buildWorld(341) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,1)).

buildWorld(342) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,3)).

buildWorld(343) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,4)).

buildWorld(344) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,3)).

buildWorld(345) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(346) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,1)).

buildWorld(347) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(348) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,4)).

buildWorld(349) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,4)).

buildWorld(350) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,3)).

buildWorld(351) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,1)).

buildWorld(352) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,3)).

buildWorld(353) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,4)).

buildWorld(354) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,4)).

buildWorld(355) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,1)).

buildWorld(356) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,4)).

buildWorld(357) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,3)).

buildWorld(358) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,4)).

buildWorld(359) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(360) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,1)).

buildWorld(361) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,2)).

buildWorld(362) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,1)).

buildWorld(363) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,2)).

buildWorld(364) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,2)).

buildWorld(365) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,3)).

buildWorld(366) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)).

buildWorld(367) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,3)).

buildWorld(368) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,3)).

buildWorld(369) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,4)).

buildWorld(370) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,4)).

buildWorld(371) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,4)).

buildWorld(372) :-
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,2)).

buildWorld(373) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,3)).

buildWorld(374) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(375) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,4)).

buildWorld(376) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,1)).

buildWorld(377) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(378) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,4)).

buildWorld(379) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,3)).

buildWorld(380) :-
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,3)).

buildWorld(381) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(382) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,2)).

buildWorld(383) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,1)).

buildWorld(384) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(385) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(386) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,2)).

buildWorld(387) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,2)).

buildWorld(388) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,4)).

buildWorld(389) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,1)).

buildWorld(390) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,3)).

buildWorld(391) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(392) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,2)).

buildWorld(393) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,1)).

buildWorld(394) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(395) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,1)).

buildWorld(396) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(397) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,3)).

buildWorld(398) :-
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,4)).

buildWorld(399) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,1)).

buildWorld(400) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(401) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,4)).

buildWorld(402) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,4)).

buildWorld(403) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,3)).

buildWorld(404) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(405) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,2)).

buildWorld(406) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,4)).

buildWorld(407) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,4)).

buildWorld(408) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,2)).

buildWorld(409) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,4)).

buildWorld(410) :-
    asserta(pit_position(3,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,3)).

buildWorld(411) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(412) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,3)).

buildWorld(413) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,4)).

buildWorld(414) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,1)).

buildWorld(415) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,3)).

buildWorld(416) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,3)).

buildWorld(417) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,4)).

buildWorld(418) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,1)).

buildWorld(419) :-
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,3)).

buildWorld(420) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,3)).

buildWorld(421) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,3)).

buildWorld(422) :-
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,1)).

buildWorld(423) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,4)).

buildWorld(424) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,3)).

buildWorld(425) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(426) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,4)).

buildWorld(427) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,1)).

buildWorld(428) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,2)).

buildWorld(429) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,2)).

buildWorld(430) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,2)).

buildWorld(431) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,4)).

buildWorld(432) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,3)).

buildWorld(433) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,3)).

buildWorld(434) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,3)).

buildWorld(435) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,1)).

buildWorld(436) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(437) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,2)).

buildWorld(438) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,2)).

buildWorld(439) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,2)).

buildWorld(440) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,2)).

buildWorld(441) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(442) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,4)).

buildWorld(443) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,3)).

buildWorld(444) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,3)).

buildWorld(445) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(446) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,1)).

buildWorld(447) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,4)).

buildWorld(448) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,3)).

buildWorld(449) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,4)).

buildWorld(450) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(451) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(452) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,3)).

buildWorld(453) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,3)).

buildWorld(454) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(455) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,2)).

buildWorld(456) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,3)).

buildWorld(457) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,2)).

buildWorld(458) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,2)).

buildWorld(459) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,2)).

buildWorld(460) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,2)).

buildWorld(461) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,2)).

buildWorld(462) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(463) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,1)).

buildWorld(464) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(465) :-
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,1)).

buildWorld(466) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,2)).

buildWorld(467) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,4)).

buildWorld(468) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(469) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,4)).

buildWorld(470) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,4)).

buildWorld(471) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(472) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,3)).

buildWorld(473) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,1)).

buildWorld(474) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,3)).

buildWorld(475) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,4)).

buildWorld(476) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,4)).

buildWorld(477) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,1)).

buildWorld(478) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(479) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,3)).

buildWorld(480) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,1)).

buildWorld(481) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,3)).

buildWorld(482) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,3)).

buildWorld(483) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,1)).

buildWorld(484) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,3)).

buildWorld(485) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,2)).

buildWorld(486) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(487) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,3)).

buildWorld(488) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,1)).

buildWorld(489) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,3)).

buildWorld(490) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,3)).

buildWorld(491) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,3)).

buildWorld(492) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(493) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,3)).

buildWorld(494) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(495) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,3)).

buildWorld(496) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,1)).

buildWorld(497) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,2)).

buildWorld(498) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,1)).

buildWorld(499) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,2)).

buildWorld(500) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,2)).

buildWorld(501) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,2)).

buildWorld(502) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,1)).

buildWorld(503) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,2)).

buildWorld(504) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,2)).

buildWorld(505) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,3)).

buildWorld(506) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,3)).

buildWorld(507) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,2)).

buildWorld(508) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,2)).

buildWorld(509) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,4)).

buildWorld(510) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,4)).

buildWorld(511) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,2)).

buildWorld(512) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,3)).

buildWorld(513) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,2)).

buildWorld(514) :-
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(515) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,2)).

buildWorld(516) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,2)).

buildWorld(517) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,3)).

buildWorld(518) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(519) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,2)).

buildWorld(520) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,3)).

buildWorld(521) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,4)).

buildWorld(522) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,4)).

buildWorld(523) :-
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,4)).

buildWorld(524) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,3)).

buildWorld(525) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,2)).

buildWorld(526) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,4)).

buildWorld(527) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,3)).

buildWorld(528) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,4)).

buildWorld(529) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,1)).

buildWorld(530) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,2)).

buildWorld(531) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,2)).

buildWorld(532) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,4)).

buildWorld(533) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(534) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,4)).

buildWorld(535) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,4)).

buildWorld(536) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,1)).

buildWorld(537) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,2)).

buildWorld(538) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,2)).

buildWorld(539) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(540) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,4)).

buildWorld(541) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,4)).

buildWorld(542) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(543) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,3)).

buildWorld(544) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,3)).

buildWorld(545) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,1)).

buildWorld(546) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,2)).

buildWorld(547) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,2)).

buildWorld(548) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,3)).

buildWorld(549) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(550) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,3)).

buildWorld(551) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,3)).

buildWorld(552) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,2)).

buildWorld(553) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,3)).

buildWorld(554) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(555) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,3)).

buildWorld(556) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,4)).

buildWorld(557) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,4)).

buildWorld(558) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(559) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,1)).

buildWorld(560) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,3)).

buildWorld(561) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,4)).

buildWorld(562) :-
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(563) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,2)).

buildWorld(564) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,4)).

buildWorld(565) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(566) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,2)).

buildWorld(567) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,1)).

buildWorld(568) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(569) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,3)).

buildWorld(570) :-
    asserta(pit_position(3,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,1)).

buildWorld(571) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,2)).

buildWorld(572) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,4)).

buildWorld(573) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,4)).

buildWorld(574) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,3)).

buildWorld(575) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,2)).

buildWorld(576) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(577) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,1)).

buildWorld(578) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(579) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,1)).

buildWorld(580) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,3)).

buildWorld(581) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,4)).

buildWorld(582) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(583) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,2)).

buildWorld(584) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(585) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,2)).

buildWorld(586) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,1)).

buildWorld(587) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(588) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,3)).

buildWorld(589) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,3)).

buildWorld(590) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,2)).

buildWorld(591) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,1)).

buildWorld(592) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,4)).

buildWorld(593) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,3)).

buildWorld(594) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(595) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,3)).

buildWorld(596) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,3)).

buildWorld(597) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,4)).

buildWorld(598) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,1)).

buildWorld(599) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,2)).

buildWorld(600) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,2)).

buildWorld(601) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,4)).

buildWorld(602) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,4)).

buildWorld(603) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,1)).

buildWorld(604) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,2)).

buildWorld(605) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,2)).

buildWorld(606) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,2)).

buildWorld(607) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(608) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,1)).

buildWorld(609) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(610) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,4)).

buildWorld(611) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,2)).

buildWorld(612) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,1)).

buildWorld(613) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,4)).

buildWorld(614) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,3)).

buildWorld(615) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,3)).

buildWorld(616) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,3)).

buildWorld(617) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,2)).

buildWorld(618) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,2)).

buildWorld(619) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,3)).

buildWorld(620) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,2)).

buildWorld(621) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(622) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,3)).

buildWorld(623) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(624) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,4)).

buildWorld(625) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,2)).

buildWorld(626) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,2)).

buildWorld(627) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(628) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,3)).

buildWorld(629) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,3)).

buildWorld(630) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,3)).

buildWorld(631) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,1)).

buildWorld(632) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(633) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(634) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,1)).

buildWorld(635) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(636) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,2)).

buildWorld(637) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,4)).

buildWorld(638) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,3)).

buildWorld(639) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,1)).

buildWorld(640) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,3)).

buildWorld(641) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,3)).

buildWorld(642) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,1)).

buildWorld(643) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,1)).

buildWorld(644) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(645) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(646) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,3)).

buildWorld(647) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,4)).

buildWorld(648) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,2)).

buildWorld(649) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(650) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,4)).

buildWorld(651) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,1)).

buildWorld(652) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,4)).

buildWorld(653) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(654) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(655) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,4)).

buildWorld(656) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,2)).

buildWorld(657) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,2)).

buildWorld(658) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,4)).

buildWorld(659) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,2)).

buildWorld(660) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,4)).

buildWorld(661) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(662) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,2)).

buildWorld(663) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(664) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,1)).

buildWorld(665) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,3)).

buildWorld(666) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,1)).

buildWorld(667) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,4)).

buildWorld(668) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,4)).

buildWorld(669) :-
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,2)).

buildWorld(670) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,1)).

buildWorld(671) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,1)).

buildWorld(672) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,1)).

buildWorld(673) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(674) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(675) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,4)).

buildWorld(676) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,1)).

buildWorld(677) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,1)).

buildWorld(678) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(679) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,1)).

buildWorld(680) :-
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(681) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,2)).

buildWorld(682) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(683) :-
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(684) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(685) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,2)).

buildWorld(686) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,1)).

buildWorld(687) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,2)).

buildWorld(688) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,1)).

buildWorld(689) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,1)).

buildWorld(690) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,2)).

buildWorld(691) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,4)).

buildWorld(692) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(693) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,3)).

buildWorld(694) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,4)).

buildWorld(695) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,1)).

buildWorld(696) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(697) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,3)).

buildWorld(698) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,4)).

buildWorld(699) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,1)).

buildWorld(700) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,2)).

buildWorld(701) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,1)).

buildWorld(702) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,1)).

buildWorld(703) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(704) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,2)).

buildWorld(705) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,2)).

buildWorld(706) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,2)).

buildWorld(707) :-
    asserta(pit_position(1,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,2)).

buildWorld(708) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,4)).

buildWorld(709) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,4)).

buildWorld(710) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(711) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,2)).

buildWorld(712) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,2)).

buildWorld(713) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,4)).

buildWorld(714) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,3)).

buildWorld(715) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(716) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(717) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)).

buildWorld(718) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,4)).

buildWorld(719) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,1)).

buildWorld(720) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,4)).

buildWorld(721) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,2)).

buildWorld(722) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(723) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,3)).

buildWorld(724) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(725) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(726) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,4)).

buildWorld(727) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,2)).

buildWorld(728) :-
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,4)).

buildWorld(729) :-
    asserta(pit_position(1,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,1)).

buildWorld(730) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,3)).

buildWorld(731) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,1)).

buildWorld(732) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,1)).

buildWorld(733) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,3)).

buildWorld(734) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,4)).

buildWorld(735) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,3)).

buildWorld(736) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,1)).

buildWorld(737) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,3)).

buildWorld(738) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,3)).

buildWorld(739) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,4)).

buildWorld(740) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,3)).

buildWorld(741) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(742) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(743) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,4)).

buildWorld(744) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,3)).

buildWorld(745) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,4)).

buildWorld(746) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,4)).

buildWorld(747) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,4)).

buildWorld(748) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(749) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,3)).

buildWorld(750) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,3)).

buildWorld(751) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,2)).

buildWorld(752) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,3)).

buildWorld(753) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,3)).

buildWorld(754) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,1)).

buildWorld(755) :-
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,2)).

buildWorld(756) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,2)).

buildWorld(757) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,2)).

buildWorld(758) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,2)).

buildWorld(759) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,2)).

buildWorld(760) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,2)).

buildWorld(761) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(762) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(763) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,4)).

buildWorld(764) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,3)).

buildWorld(765) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,3)).

buildWorld(766) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,3)).

buildWorld(767) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,1)).

buildWorld(768) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,1)).

buildWorld(769) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,1)).

buildWorld(770) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,2)).

buildWorld(771) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,1)).

buildWorld(772) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,3)).

buildWorld(773) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,3)).

buildWorld(774) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(775) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(776) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,4)).

buildWorld(777) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,2)).

buildWorld(778) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,3)).

buildWorld(779) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,1)).

buildWorld(780) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,2)).

buildWorld(781) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,3)).

buildWorld(782) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,2)).

buildWorld(783) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(784) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,2)).

buildWorld(785) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,3)).

buildWorld(786) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(787) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,3)).

buildWorld(788) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,3)).

buildWorld(789) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(790) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(791) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,2)).

buildWorld(792) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,4)).

buildWorld(793) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,2)).

buildWorld(794) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,2)).

buildWorld(795) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,3)).

buildWorld(796) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(797) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,4)).

buildWorld(798) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,1)).

buildWorld(799) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(800) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,2)).

buildWorld(801) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,2)).

buildWorld(802) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,1)).

buildWorld(803) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,1)).

buildWorld(804) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,4)).

buildWorld(805) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,1)).

buildWorld(806) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,2)).

buildWorld(807) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,4)).

buildWorld(808) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,1)).

buildWorld(809) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(810) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,1)).

buildWorld(811) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,1)).

buildWorld(812) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,2)).

buildWorld(813) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(814) :-
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,1)).

buildWorld(815) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(816) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(817) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,1)).

buildWorld(818) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,2)).

buildWorld(819) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(820) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,1)).

buildWorld(821) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(822) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,3)).

buildWorld(823) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,1)).

buildWorld(824) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,3)).

buildWorld(825) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(826) :-
    asserta(pit_position(3,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,4)).

buildWorld(827) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,1)).

buildWorld(828) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,4)).

buildWorld(829) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,2)).

buildWorld(830) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,3)).

buildWorld(831) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,4)).

buildWorld(832) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,4)).

buildWorld(833) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,2)).

buildWorld(834) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,2)).

buildWorld(835) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,3)).

buildWorld(836) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,2)).

buildWorld(837) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(838) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,1)).

buildWorld(839) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,2)).

buildWorld(840) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,3)).

buildWorld(841) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,1)).

buildWorld(842) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,1)).

buildWorld(843) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,4)).

buildWorld(844) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,1)).

buildWorld(845) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,3)).

buildWorld(846) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(847) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,4)).

buildWorld(848) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(849) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,4)).

buildWorld(850) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,4)).

buildWorld(851) :-
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,4)).

buildWorld(852) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,4)).

buildWorld(853) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,1)).

buildWorld(854) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,2)).

buildWorld(855) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,4)).

buildWorld(856) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,1)).

buildWorld(857) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,3)).

buildWorld(858) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,4)).

buildWorld(859) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,2)).

buildWorld(860) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,4)).

buildWorld(861) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,2)).

buildWorld(862) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,2)).

buildWorld(863) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,2)).

buildWorld(864) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,4)).

buildWorld(865) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,3)).

buildWorld(866) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,3)).

buildWorld(867) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(868) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,4)).

buildWorld(869) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,3)).

buildWorld(870) :-
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,2)).

buildWorld(871) :-
    asserta(pit_position(3,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,1)).

buildWorld(872) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,3)).

buildWorld(873) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,4)).

buildWorld(874) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,2)).

buildWorld(875) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,1)).

buildWorld(876) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,1)).

buildWorld(877) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(878) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,2)).

buildWorld(879) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,1)).

buildWorld(880) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,1)).

buildWorld(881) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,4)).

buildWorld(882) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,2)).

buildWorld(883) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(884) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,1)).

buildWorld(885) :-
    asserta(pit_position(1,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(886) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,2)).

buildWorld(887) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,3)).

buildWorld(888) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,2)).

buildWorld(889) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,2)).

buildWorld(890) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,3)).

buildWorld(891) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,4)).

buildWorld(892) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,3)).

buildWorld(893) :-
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,3)).

buildWorld(894) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(895) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,2)).

buildWorld(896) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,3)).

buildWorld(897) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,1)).

buildWorld(898) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,3)).

buildWorld(899) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,1)).

buildWorld(900) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(901) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,2)).

buildWorld(902) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,2)).

buildWorld(903) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,1)).

buildWorld(904) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,4)).

buildWorld(905) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(906) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(907) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,2)).

buildWorld(908) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,2)).

buildWorld(909) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,2)).

buildWorld(910) :-
    asserta(pit_position(1,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(911) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,2)).

buildWorld(912) :-
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,1)).

buildWorld(913) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,4)).

buildWorld(914) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(915) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,4)).

buildWorld(916) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,3)).

buildWorld(917) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(918) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,2)).

buildWorld(919) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,3)).

buildWorld(920) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(921) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,3)).

buildWorld(922) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(923) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,3)).

buildWorld(924) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(925) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,1)).

buildWorld(926) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,4)).

buildWorld(927) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,4)).

buildWorld(928) :-
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,4)).

buildWorld(929) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,2)).

buildWorld(930) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,4)).

buildWorld(931) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(932) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,4)).

buildWorld(933) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(934) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(935) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,2)).

buildWorld(936) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,4)).

buildWorld(937) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,2)).

buildWorld(938) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,2)).

buildWorld(939) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,4)).

buildWorld(940) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,1)).

buildWorld(941) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,4)).

buildWorld(942) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,3)).

buildWorld(943) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,4)).

buildWorld(944) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,4)).

buildWorld(945) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,4)).

buildWorld(946) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,3)).

buildWorld(947) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,3)).

buildWorld(948) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(949) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,3)).

buildWorld(950) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,3)).

buildWorld(951) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,4)).

buildWorld(952) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,1)).

buildWorld(953) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,4)).

buildWorld(954) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,2)).

buildWorld(955) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,2)).

buildWorld(956) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,4)).

buildWorld(957) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,3)).

buildWorld(958) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,2)).

buildWorld(959) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,1)).

buildWorld(960) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(961) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,4)).

buildWorld(962) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,4)).

buildWorld(963) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(964) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,4)).

buildWorld(965) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,2)).

buildWorld(966) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(967) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,1)).

buildWorld(968) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,1)).

buildWorld(969) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,1)).

buildWorld(970) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,2)).

buildWorld(971) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,4)).

buildWorld(972) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,1)).

buildWorld(973) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(974) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(975) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,1)).

buildWorld(976) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,1)).

buildWorld(977) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,4)).

buildWorld(978) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,1)).

buildWorld(979) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,2)).

buildWorld(980) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,1)).

buildWorld(981) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,4)).

buildWorld(982) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,1)).

buildWorld(983) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,4)).

buildWorld(984) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,4)).

buildWorld(985) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,1)).

buildWorld(986) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,2)).

buildWorld(987) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,2)).

buildWorld(988) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,1)).

buildWorld(989) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(990) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(991) :-
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,3)).

buildWorld(992) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,2)).

buildWorld(993) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,2)).

buildWorld(994) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,2)).

buildWorld(995) :-
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(996) :-
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,3)).

buildWorld(997) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,3)).

buildWorld(998) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(999) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1000) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1001) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1002) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1003) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,2)).

buildWorld(1004) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1005) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1006) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1007) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1008) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1009) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1010) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1011) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1012) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1013) :-
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1014) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1015) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(1016) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1017) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1018) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1019) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1020) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1021) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1022) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1023) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1024) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1025) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1026) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1027) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,1)).

buildWorld(1028) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1029) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1030) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,3)).

buildWorld(1031) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1032) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1033) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1034) :-
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1035) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1036) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1037) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1038) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1039) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1040) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1041) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1042) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1043) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1044) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1045) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1046) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1047) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1048) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1049) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1050) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1051) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1052) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1053) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1054) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1055) :-
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1056) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1057) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1058) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1059) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1060) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1061) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1062) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1063) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1064) :-
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1065) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1066) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1067) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,3)).

buildWorld(1068) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1069) :-
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1070) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1071) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1072) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1073) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1074) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,2)).

buildWorld(1075) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1076) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1077) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1078) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1079) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1080) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,3)).

buildWorld(1081) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1082) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1083) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1084) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1085) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1086) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1087) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1088) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1089) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1090) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1091) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1092) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1093) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1094) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1095) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1096) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1097) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1098) :-
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1099) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1100) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1101) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1102) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1103) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1104) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1105) :-
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1106) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1107) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1108) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1109) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1110) :-
    asserta(pit_position(3,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1111) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,4)).

buildWorld(1112) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1113) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1114) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1115) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1116) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1117) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1118) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1119) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1120) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1121) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1122) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,1)).

buildWorld(1123) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1124) :-
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1125) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1126) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1127) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1128) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1129) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1130) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1131) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1132) :-
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1133) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1134) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1135) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1136) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1137) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1138) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1139) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1140) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1141) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1142) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1143) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1144) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1145) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1146) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1147) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,4)).

buildWorld(1148) :-
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1149) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1150) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1151) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1152) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1153) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1154) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1155) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1156) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1157) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1158) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1159) :-
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1160) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1161) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1162) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1163) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1164) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1165) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1166) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1167) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1168) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1169) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1170) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1171) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1172) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1173) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1174) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1175) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1176) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1177) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1178) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1179) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1180) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1181) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1182) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1183) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1184) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1185) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(1186) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1187) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1188) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,2)).

buildWorld(1189) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1190) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1191) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1192) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1193) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(1194) :-
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1195) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1196) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1197) :-
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1198) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1199) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1200) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1201) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,3)).

buildWorld(1202) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1203) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1204) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1205) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,3)).

buildWorld(1206) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1207) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1208) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1209) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1210) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1211) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1212) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1213) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1214) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1215) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1216) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1217) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1218) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1219) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1220) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,2)).

buildWorld(1221) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1222) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1223) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1224) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1225) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1226) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1227) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1228) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1229) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1230) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,2)).

buildWorld(1231) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1232) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1233) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(1234) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1235) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1236) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1237) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1238) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1239) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1240) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1241) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1242) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1243) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1244) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1245) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1246) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1247) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1248) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1249) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1250) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1251) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1252) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1253) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1254) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1255) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1256) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1257) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1258) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1259) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1260) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1261) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1262) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1263) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1264) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,2)).

buildWorld(1265) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1266) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1267) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1268) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1269) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1270) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1271) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,3)).

buildWorld(1272) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1273) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1274) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1275) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1276) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1277) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1278) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1279) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1280) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1281) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1282) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1283) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1284) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1285) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1286) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1287) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1288) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,1)).

buildWorld(1289) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1290) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1291) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1292) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1293) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1294) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1295) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1296) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1297) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,4)).

buildWorld(1298) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1299) :-
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1300) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1301) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1302) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1303) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1304) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1305) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1306) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1307) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1308) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,2)).

buildWorld(1309) :-
    asserta(pit_position(1,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1310) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1311) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1312) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,3)).

buildWorld(1313) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,3)).

buildWorld(1314) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1315) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1316) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1317) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,2)).

buildWorld(1318) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1319) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1320) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,4)).

buildWorld(1321) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1322) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1323) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1324) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1325) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1326) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1327) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1328) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1329) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1330) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1331) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1332) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1333) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1334) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,2)).

buildWorld(1335) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1336) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1337) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1338) :-
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1339) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1340) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1341) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1342) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1343) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,1)).

buildWorld(1344) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1345) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1346) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1347) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1348) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1349) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1350) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1351) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1352) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1353) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1354) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1355) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1356) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1357) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1358) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1359) :-
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1360) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1361) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1362) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1363) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1364) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1365) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1366) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1367) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1368) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,2)).

buildWorld(1369) :-
    asserta(pit_position(1,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1370) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1371) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1372) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1373) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,3)).

buildWorld(1374) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1375) :-
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1376) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1377) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1378) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1379) :-
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1380) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1381) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1382) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1383) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1384) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1385) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1386) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1387) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1388) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1389) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1390) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1391) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1392) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,3)).

buildWorld(1393) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1394) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1395) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1396) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1397) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1398) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,3)).

buildWorld(1399) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1400) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1401) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1402) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1403) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1404) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1405) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1406) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1407) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1408) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1409) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1410) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1411) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1412) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1413) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1414) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1415) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1416) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1417) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1418) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1419) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1420) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1421) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1422) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1423) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1424) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1425) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1426) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1427) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1428) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1429) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1430) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1431) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1432) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1433) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,1)).

buildWorld(1434) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1435) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1436) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1437) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1438) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,3)).

buildWorld(1439) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1440) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1441) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1442) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1443) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1444) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1445) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1446) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1447) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1448) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1449) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1450) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1451) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1452) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1453) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1454) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1455) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1456) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1457) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1458) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1459) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1460) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1461) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1462) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1463) :-
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1464) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1465) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1466) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1467) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1468) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,1)).

buildWorld(1469) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1470) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1471) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1472) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1473) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1474) :-
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1475) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,2)).

buildWorld(1476) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1477) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1478) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1479) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1480) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1481) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1482) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1483) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1484) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1485) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1486) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1487) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1488) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1489) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1490) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1491) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1492) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1493) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1494) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1495) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1496) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1497) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1498) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,2)).

buildWorld(1499) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1500) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1501) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1502) :-
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1503) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,2)).

buildWorld(1504) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,4)).

buildWorld(1505) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1506) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1507) :-
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1508) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1509) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1510) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,2)).

buildWorld(1511) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1512) :-
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1513) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1514) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1515) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1516) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1517) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1518) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1519) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1520) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1521) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1522) :-
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(1523) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1524) :-
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1525) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1526) :-
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1527) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,1)).

buildWorld(1528) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,2)).

buildWorld(1529) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1530) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1531) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,1)).

buildWorld(1532) :-
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1533) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1534) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1535) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1536) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1537) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1538) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1539) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1540) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1541) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1542) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1543) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1544) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,4)).

buildWorld(1545) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1546) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1547) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1548) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1549) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1550) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1551) :-
    asserta(pit_position(4,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1552) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1553) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1554) :-
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1555) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1556) :-
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1557) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1558) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1559) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,2)).

buildWorld(1560) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1561) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1562) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1563) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1564) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1565) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1566) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1567) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1568) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1569) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1570) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1571) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1572) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1573) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1574) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1575) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1576) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,3)).

buildWorld(1577) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1578) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1579) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1580) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1581) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1582) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1583) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1584) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1585) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1586) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1587) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1588) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1589) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1590) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1591) :-
    asserta(pit_position(1,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1592) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1593) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1594) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1595) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1596) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1597) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1598) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1599) :-
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1600) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1601) :-
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1602) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1603) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1604) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1605) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1606) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1607) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1608) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1609) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1610) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1611) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1612) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1613) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1614) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1615) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1616) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1617) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1618) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1619) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1620) :-
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1621) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1622) :-
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1623) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1624) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1625) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1626) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1627) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1628) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1629) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1630) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1631) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1632) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1633) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1634) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1635) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1636) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1637) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1638) :-
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1639) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1640) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1641) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,1)).

buildWorld(1642) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1643) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1644) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1645) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1646) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1647) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1648) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1649) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1650) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1651) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1652) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1653) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1654) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1655) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1656) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1657) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1658) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1659) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,3)).

buildWorld(1660) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1661) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,2)).

buildWorld(1662) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1663) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1664) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1665) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,4)).

buildWorld(1666) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1667) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1668) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1669) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1670) :-
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1671) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1672) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1673) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1674) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1675) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1676) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1677) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1678) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1679) :-
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1680) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1681) :-
    asserta(pit_position(2,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1682) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1683) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1684) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1685) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1686) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1687) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1688) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,1)).

buildWorld(1689) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1690) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1691) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1692) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1693) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1694) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,4)).

buildWorld(1695) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1696) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1697) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1698) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1699) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1700) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1701) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1702) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1703) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1704) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(1705) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1706) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1707) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1708) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1709) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1710) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1711) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1712) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1713) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1714) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1715) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1716) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1717) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1718) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1719) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1720) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1721) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,3)).

buildWorld(1722) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1723) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1724) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1725) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1726) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1727) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1728) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1729) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1730) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1731) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1732) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(3,1)).

buildWorld(1733) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,4)).

buildWorld(1734) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1735) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1736) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1737) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1738) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1739) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1740) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1741) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1742) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,2)).

buildWorld(1743) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1744) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1745) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1746) :-
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1747) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1748) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1749) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1750) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1751) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1752) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,1)).

buildWorld(1753) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1754) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1755) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1756) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1757) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1758) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1759) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1760) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1761) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1762) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,4)).

buildWorld(1763) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1764) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(1765) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1766) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1767) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1768) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1769) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1770) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1771) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1772) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,2)).

buildWorld(1773) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(1774) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,4)).

buildWorld(1775) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1776) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1777) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1778) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1779) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1780) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,2)).

buildWorld(1781) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1782) :-
    asserta(pit_position(1,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1783) :-
    asserta(pit_position(3,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1784) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1785) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1786) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1787) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(2,3)).

buildWorld(1788) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1789) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1790) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1791) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1792) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1793) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1794) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1795) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1796) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1797) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1798) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1799) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1800) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1801) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1802) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1803) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1804) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1805) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,4)).

buildWorld(1806) :-
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1807) :-
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1808) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1809) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1810) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1811) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1812) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1813) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1814) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1815) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1816) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1817) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(3,1)).

buildWorld(1818) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1819) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1820) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1821) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1822) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1823) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1824) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1825) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1826) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,2)).

buildWorld(1827) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1828) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1829) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1830) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1831) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1832) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1833) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,2)).

buildWorld(1834) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1835) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1836) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1837) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1838) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1839) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1840) :-
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1841) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1842) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1843) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1844) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1845) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1846) :-
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1847) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1848) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1849) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1850) :-
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,4)).

buildWorld(1851) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(2,1)).

buildWorld(1852) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1853) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1854) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1855) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1856) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1857) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1858) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1859) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1860) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1861) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,3)).

buildWorld(1862) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1863) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1864) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1865) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1866) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1867) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1868) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1869) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1870) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1871) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1872) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,3)).

buildWorld(1873) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1874) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1875) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1876) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,2)).

buildWorld(1877) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,2)).

buildWorld(1878) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1879) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1880) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1881) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1882) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1883) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1884) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1885) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(1,2)).

buildWorld(1886) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1887) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,2)).

buildWorld(1888) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1889) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1890) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1891) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1892) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1893) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,1)).

buildWorld(1894) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1895) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1896) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1897) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,3)).

buildWorld(1898) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,3)).

buildWorld(1899) :-
    asserta(pit_position(4,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,3)).

buildWorld(1900) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1901) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1902) :-
    asserta(pit_position(1,3)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1903) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,4)).

buildWorld(1904) :-
    asserta(pit_position(2,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1905) :-
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1906) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1907) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1908) :-
    asserta(pit_position(3,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1909) :-
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,1)).

buildWorld(1910) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1911) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,4)).

buildWorld(1912) :-
    asserta(gold_position(4,2)),
    asserta(wumpus_position(1,3)).

buildWorld(1913) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1914) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,2)).

buildWorld(1915) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,2)).

buildWorld(1916) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,3)).

buildWorld(1917) :-
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1918) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1919) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,2)).

buildWorld(1920) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1921) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,4)).

buildWorld(1922) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1923) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1924) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1925) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1926) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1927) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1928) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1929) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(1,4)).

buildWorld(1930) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1931) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(2,1)).

buildWorld(1932) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1933) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(4,1)).

buildWorld(1934) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1935) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,4)).

buildWorld(1936) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(4,2)).

buildWorld(1937) :-
    asserta(pit_position(3,1)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1938) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1939) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(gold_position(1,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1940) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1941) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1942) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(2,1)).

buildWorld(1943) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,3)).

buildWorld(1944) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(4,2)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1945) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,1)),
    asserta(wumpus_position(3,2)).

buildWorld(1946) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1947) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(2,2)).

buildWorld(1948) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,4)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1949) :-
    asserta(pit_position(2,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1950) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,2)).

buildWorld(1951) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,1)),
    asserta(wumpus_position(2,3)).

buildWorld(1952) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(gold_position(2,3)),
    asserta(wumpus_position(3,3)).

buildWorld(1953) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(2,3)).

buildWorld(1954) :-
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,3)).

buildWorld(1955) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1956) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1957) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(2,4)).

buildWorld(1958) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1959) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,4)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,4)).

buildWorld(1960) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,3)).

buildWorld(1961) :-
    asserta(gold_position(4,4)),
    asserta(wumpus_position(3,1)).

buildWorld(1962) :-
    asserta(pit_position(3,1)),
    asserta(pit_position(3,3)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,4)).

buildWorld(1963) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(3,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(pit_position(4,4)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(2,1)).

buildWorld(1964) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1965) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,4)).

buildWorld(1966) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1967) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(pit_position(3,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,2)).

buildWorld(1968) :-
    asserta(pit_position(3,4)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1969) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1970) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,2)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(3,1)).

buildWorld(1971) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1972) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(3,3)).

buildWorld(1973) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,4)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,1)).

buildWorld(1974) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,2)),
    asserta(wumpus_position(3,3)).

buildWorld(1975) :-
    asserta(pit_position(2,2)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(3,3)).

buildWorld(1976) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(3,1)),
    asserta(gold_position(2,2)),
    asserta(wumpus_position(1,2)).

buildWorld(1977) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,2)),
    asserta(pit_position(4,2)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,2)).

buildWorld(1978) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(2,4)).

buildWorld(1979) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,1)),
    asserta(pit_position(3,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(4,3)),
    asserta(wumpus_position(3,1)).

buildWorld(1980) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(3,3)),
    asserta(gold_position(1,2)),
    asserta(wumpus_position(4,1)).

buildWorld(1981) :-
    asserta(pit_position(2,4)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(2,2)).

buildWorld(1982) :-
    asserta(pit_position(1,4)),
    asserta(pit_position(2,1)),
    asserta(pit_position(4,2)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(4,3)).

buildWorld(1983) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(1,3)),
    asserta(pit_position(4,3)),
    asserta(gold_position(4,1)),
    asserta(wumpus_position(1,3)).

buildWorld(1984) :-
    asserta(pit_position(2,2)),
    asserta(pit_position(3,3)),
    asserta(gold_position(3,2)),
    asserta(wumpus_position(4,4)).

buildWorld(1985) :-
    asserta(pit_position(2,4)),
    asserta(pit_position(3,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(1,3)),
    asserta(wumpus_position(4,4)).

buildWorld(1986) :-
    asserta(pit_position(1,3)),
    asserta(pit_position(2,3)),
    asserta(pit_position(2,4)),
    asserta(pit_position(4,1)),
    asserta(pit_position(4,3)),
    asserta(gold_position(3,4)),
    asserta(wumpus_position(1,4)).

buildWorld(1987) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,4)),
    asserta(gold_position(3,3)),
    asserta(wumpus_position(2,2)).

buildWorld(1988) :-
    asserta(pit_position(1,2)),
    asserta(pit_position(2,2)),
    asserta(gold_position(2,4)),
    asserta(wumpus_position(4,2)).

buildWorld(1989) :-
    asserta(pit_position(2,1)),
    asserta(pit_position(2,2)),
    asserta(pit_position(r(3,3))),
    asserta(pit_position(r(4,1))),
    asserta(pit_position(r(4,4))),
    asserta(gold_position(r(4,3))),
    asserta(wumpus_position(r(4,4))).

buildWorld(1990) :-
    asserta(pit_position(r(1,3))),
    asserta(pit_position(r(2,4))),
    asserta(gold_position(r(1,3))),
    asserta(wumpus_position(r(3,3))).

buildWorld(1991) :-
    asserta(pit_position(r(2,1))),
    asserta(pit_position(r(4,1))),
    asserta(pit_position(r(4,3))),
    asserta(gold_position(r(3,3))),
    asserta(wumpus_position(r(1,2))).

buildWorld(1992) :-
    asserta(pit_position(r(1,2))),
    asserta(pit_position(r(1,3))),
    asserta(pit_position(r(2,4))),
    asserta(pit_position(r(3,3))),
    asserta(pit_position(r(3,4))),
    asserta(pit_position(r(4,1))),
    asserta(gold_position(r(4,2))),
    asserta(wumpus_position(r(2,2))).

buildWorld(1993) :-
    asserta(pit_position(r(3,1))),
    asserta(pit_position(r(3,2))),
    asserta(pit_position(r(4,4))),
    asserta(gold_position(r(1,4))),
    asserta(wumpus_position(r(3,4))).

buildWorld(1994) :-
    asserta(pit_position(r(1,4))),
    asserta(pit_position(r(3,2))),
    asserta(pit_position(r(3,3))),
    asserta(pit_position(r(4,2))),
    asserta(pit_position(r(4,3))),
    asserta(gold_position(r(4,2))),
    asserta(wumpus_position(r(2,1))).

buildWorld(1995) :-
    asserta(pit_position(r(2,2))),
    asserta(pit_position(r(2,3))),
    asserta(gold_position(r(3,2))),
    asserta(wumpus_position(r(4,3))).

buildWorld(1996) :-
    asserta(pit_position(r(4,3))),
    asserta(gold_position(r(2,3))),
    asserta(wumpus_position(r(2,3))).

buildWorld(1997) :-
    asserta(pit_position(r(2,4))),
    asserta(gold_position(r(2,1))),
    asserta(wumpus_position(r(1,4))).

buildWorld(1998) :-
    asserta(pit_position(r(2,1))),
    asserta(pit_position(r(3,1))),
    asserta(pit_position(r(4,3))),
    asserta(gold_position(r(2,2))),
    asserta(wumpus_position(r(2,4))).

buildWorld(1999) :-
    asserta(pit_position(r(1,4))),
    asserta(pit_position(r(2,1))),
    asserta(pit_position(r(2,4))),
    asserta(gold_position(r(4,3))),
    asserta(wumpus_position(r(2,2))).

buildWorld(2000) :-
    asserta(pit_position(r(2,4))),
    asserta(pit_position(r(3,4))),
    asserta(pit_position(r(4,2))),
    asserta(gold_position(r(2,1))),
    asserta(wumpus_position(r(1,4))).


