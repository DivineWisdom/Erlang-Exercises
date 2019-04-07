-module(record).
-compile(export_all).
-record(robot, {name, type = industrial, hobbies, details = []}).
-record(user, {name, id, group, age}).

first_rebot() ->
	#robot{name = "Mechatron", type = handmade, details = ["moved by a small man inside"]}.

car_factory(CordName) ->
	#robot{name = CordName, hobbies = "building cars"}.

% pattern matching
admin_panel(#user {name = Name, group = admin}) ->
	Name ++ " is allowed";
admin_panel(#user {name = Name}) ->
	Name ++ " is not allowed".

% can extend user without problem
adult_section(U = #user{}) when U#user.age >= 18 -> 
	allowed;
adult_section(_) ->
	forbidden.

