% -module(records).
% -compile(export_all).

% -records(robot, {name, 
% 				 type=industrial, 
% 				 hobbies, 
% 				 details=[]}).

-module(records).
-compile(export_all).
-record(user, {id,
			   name,
			   group,
			   age}).
-record(dog, {name, 
				type = sheapper, 
				hobbies = fighter, 
				details = []}).

first_dog() ->
	#dog{name = 'kike', 
		 type = hunter, 
		 details =["Catches three rats daily"]}.

dog_factory(CordName) ->
	#dog{name = CordName,
		 hobbies = "chasing visitors"}.

attribute() ->
	Mad = #dog{ name = "Killer", hobbies = ["killing people", "chasing teachers"]},
	Mad#dog.hobbies.

% use pattern matching to filter
admin_panel(#user {name = Name, group = admin}) ->
	Name ++ "is allowed";
admin_panel(#user{name = Name}) ->
	Name ++ "is not allowed".

% you can extend user without problem
adult_section(u = #user{}) when #user.age >= 18 -> allowed;
adult_section(_) -> forbidden.

