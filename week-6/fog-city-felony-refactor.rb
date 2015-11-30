# Notes:
# Game play will be a text based console RPG crime noir game.
# BIG THANKS TO: Ariella Yendler, for helping me write the script.
# Game play description, as from Learn Ruby the Hard Way: 
# http://learnrubythehardway.org/book/ex43.html
# "The game will be more like a Zork or Adventure type game with text outputs and funny ways to die. The game will involve an engine that runs a map full of rooms or scenes. Each room will print its own description when the player enters it and then tell the engine what room to run next out of the map."
# Note on refactored code: I first tried to write the code myself, not based on the textbook's code.

# Pseudocode
# Scenes:
# Palace Hotel
# Corner Store
# Dark Alley
# Top of Coit Tower
# Golden Gate Bridge

# Game set up:
# Map
# Engine

# Actions:
# Fight
# Dodge
# Interrogate
# Inspect

# Palace Hotel
# 	First scene, something terrible happens, and sets the detective on the path
# 	Inspect
# 	Interrogate
# 	Something else?
# Dark Alley
# 	Inspect
# 	Interrogate
# Corner Store
# 	Inspect
# 	Interrogate
# 	gets to choose from a weapon (gun, knife, pack of a cigarettes)
# Top of Coit Tower
# 	Riddle or puzzle or lock, with guesses
# 	If get it, then get inside
# 	inspect, find a person
# 	interrogate, person points them towards Golden Gate Bridge
# 	if don’t get it, sent back to either a different part of the game or another new scene to find the answer, and make sure it leads back to coit tower to try again
# Golden Gate Bridge
# 	Final Scene
# 	Fight
# 	If has cigarette, dies 0 probability
# 	otherwise fight
# 	probability depends on weapon chosen

# MAP
# purpose of map: to build a scene list, to export to the engine to 'play'
# 
# SCENE
# purpose of scene?
# 
# Can write this two different ways - a general map/game engine, or one specifically for this particular game.  Start with writing one for this particular game, and then see what I can do.

# how to play a scene:
# create a new engine (engine is a class that has a play method)
# engine or map needs to create new instances of each scene, that then can be passed around.
# for example, if a_map = Map.new
# pass engine.play(an instance of a scene class)
# 




class Scene
	def enter()
	end
end



class Detective 
	def initialize
		@weapon = ""
	end

	def add_weapon(weapon)
		@weapon = weapon
	end

	def which_weapon
		return @weapon
	end
end


$detective_bronson = Detective.new

class Death < Scene
	def enter()
	end
end

class DarkAlley < Scene
	def enter()
		puts "Detective Bronson wakes up, if that's a word for what it is. It's more like staggering out of the blessed murky unconsciousness into a hang-over that starts in his head and ends somewhere in his lower back. He's sprawled on the cold ground of an abandoned alley. The streetlights at the end prick his eyes as the world swims into view. He'd rather go back to unconsciousness. Bronson takes stock. His gun is gone, he has a blistering headache, and he is most definitely out of cigarettes. \"Damn,\" he says softly."
		# sleep 5
		puts "He gets up, and the look of something wet on the wall catches his eye. It's blood."
		# sleep 5
		puts "Action(s): investigate"

		action = $stdin.gets.chomp

		if action == "investigate"
			puts "Bronson takes a step closer to investigate the blood spatter. It is most definitely fresh.  Kneeling down, he finds casings on the ground - .45's and with the little groove on one side that only his gun makes. Did he shoot someone? He can't remember. He swallows down the panic like cheap whiskey and glances around. There's a man in a white waiter's jacket smoking at the end of the alley."
			# sleep 5
			puts "Action(s): interrogate"

			action = $stdin.gets.chomp
			
			if action == "interrogate"
				puts "\"Hey, you. Did you see anything that just happened?\" asks Bronson."
				# sleep 2
				puts "The waiter eyes him, and slowly puffs his cigarette."
				# sleep 2
				puts "\"Also, any possibility you got an extra one of those?\" Bronson adds."
				# sleep 2
				puts "\"Nope, fresh out,\" the waiter states lazily. Bronson can see the bulge of a pack in his pocket. Goddamn liar."
				# sleep 2
				puts "\"Well,\" he growls, \"You better start talking before I make trouble for your restaurant right over there and have this alley crawling with cops.\""
				# sleep 2
				puts "\"Fine. I 'eard some scuffing and a gunshot so came ou'side, and saw you passed ou' on the ground.  And I decided tha was a perfect time for a smoke\"."
				# sleep 2
				puts "\'Asshole,\' thinks Bronson. \"Thank you,\" he mutters, and trudges out of the alley."
				return "corner_store"
			end
		end
	end
end

class CornerStore < Scene
	def enter()
		puts "Detective Bronson rounds the corner of the alley, and finds himself in front of a neon-trimmed corner store. He enters."
		puts "The clerk looks up, and yelps at the sight of the bloodied and bruised detective. He jumps over the counter and starts to run for the door."
		puts "Action(s): pursue, do nothing"

		action = $stdin.gets.chomp

		if action == "pursue"

			puts "Bronson easily sidelines the clerk to the floor with a well-placed kick."
			puts "\"Wha-whatever you've come for, I d-don't have it-t-t.  I already p-paid the boss,\" the clerk stammers."
			puts "Bronson sighs heavily. \"I'm not here to hurt you. You know me, I don't remember you. Help me out here and I won't make trouble.\""
			puts "\"W-well I saw you yesterday with Lucky Luciano's gal.  She was hangin' off your arm like it was the only thing holding her up, and you bought some old number seven from me.  Then from what next I heard from some guys down the street, there was an altercation down that allley and now Lucky Lou is dead.  But there is definitely a new boss, and the old boss's second is out to get yah.\" Lucky Luciano is the crime lord of North Beach---pardon, was. Now someone else is in charge of the Italians."
			puts "Bronson spits out a curse and digs a few crumpled bills out of his pocket. He'll need protection. \"You sell anything useful here?\""
			puts "\"Yeah, I got something.  How much yah got?\""
			puts "Bronson flips through the bills. \"Not much\"."
			puts "\"You can get either a gun, knife, or a pack of cigarettes.\""
			puts "Action(s): buy gun, buy knife, buy cigarettes"

			action = $stdin.gets.chomp
				if action == "buy gun"
					$detective_bronson.add_weapon("gun")
					puts "Bronson buys a gun."
				elsif action == "buy knife"
					$detective_bronson.add_weapon("knife")
					puts "Bronson buys a knife"
				elsif action == "buy cigarettes"
					$detective_bronson.add_weapon("cigarettes")
					puts "Bronson buys a pack of cigarettes"
				else 
					puts "You haven't bought anything. Try again, Detective!"
					return "corner_store"
				end
			puts "\"Any idea where Lucky's dame has gone?\" Bronson asks."
			puts "\"She puts up at the Palace Hotel,\" the clerk says quickly, obviously eager to get him out of there."
			puts "\"Alright, stay out of trouble.\" Bronson leaves."
			return "palace_hotel"
		elsif action == "do nothing"
			puts "Bronson sighs, picks up a pack of cigarettes, puts one to his lips, and walks out of the store."
			return "dark_alley" #dark_alley_return?  A separate class?
		else
			puts "Well, you gotta do something about it, you're a detective!" #good place to put some random quips, maybe a local method?
			return "dark_alley" #dark alley_alley_return?  A separate class?
		end
	end
end

#class DarkAlleyReturn?

class PalaceHotel < Scene
	def enter()
		puts "Detective Bronson arrives at the hotel. It's pretty shabby for a place named 'Palace', but then those kinds usually are. The doorman eyes him snootily all the same, but a few minutes chatting gets him the dame's---named Gia---room number. Lucky for him with this body-wide headache that it's only four flights of stairs. He knocks on the door and a quavering voice says so low he can barely hear, \"Who is it?\" "
		puts "Detective Bronson thinks for a moment and goes with, \"Honey, it's me, Bronson. I'm here.\" He hears a gasp of relief and the door flings open to a redhead who looks none the worse with tears staining her face. Bronson digs his hands into his pockets because tears on a woman like that make him want to do something stupid, like hold her. Gia---this must be Gia--wraps a hand around his lapel and tugs him inside. Her other hand is busy clutching a knife."
		puts "Action(s): interrogate"

		action = $stdin.gets.chomp

		if action == "interrogate"
			puts "\"What's all this, honey?\" Bronson gently takes the knife from her and sets it down on a table."
			puts "\"Oh my goodness, I-I though you might be Armo.\" Armo is the name of Lucky Lou's second-in-command---now first.\"I didn't want to hurt anyone, I s-swear,\" she mumbles and then starts crying again. \"I didn't mean to kill him, Bronson. It was an accident!\""
			puts "Bronson tries not to gasp in relief. He didn't kill anyone, not this time. He takes Gia's arm and pulls her gently to the couch. \"I woke up in the alleyway with my gun gone and nothin' doing. I don't remember anything. Why'd you shoot him?\" "
			puts "\"He saw me with you and started yelling at us, he came at us like a wild animal! And you stepped up but he knocked you down flat, so I took your gun and told him to  back off. He just laughed and said he'd give me a beating to remember. I just couldn't take it anymore---\" she cries, and flings herself into his arms."
			puts "\"Now Armo might kill me and I'm terrified. Darling, will you protect me?\""
			puts "Action(s): refuse, agree"

			action = $stdin.gets.chomp

				if action == "refuse"
					puts "Gia pulls herself away, her face hardening and all signs of tears gone."
					puts "\"Well, I'll just have to protect myself,\" she says. Quicker than he can understand, she takes the knife, and slits his throat. He has almost no time to gasp, his hand pressed to his throat before the darkness drips over his vision."
					return death
				elsif action == "agree"
					puts "\"W-well, Armo is now the new head of the mob, and has asked me to deliver documents to him on the Golden Gate Bridge by sunrise, but I'm afraid it's a trap to get me, and if I don't go, he'll hunt me down.\""
					puts "Bronson holds her tightly, smelling her sweet hair and says \"I would be happy to go in your place.\""
					puts "\"Oh would you? You would be saving my life! There is only one more problem: Lou left the documents in a safe in the inner room of the hotel, but I don't know how to get them out. The only clue I was given that it's the same answer when the 3 digits are added or multiplied.\""
					puts "\"I'll take care of it for you,\" Bronson promises.  He gets up and goes into the inner room."
					return "safe_room"
				else 
					puts "Seriously, you're a detective.  Start sleuthing!"
					return "palace_hotel"
				end
		else 
			puts "Well, you gotta do something about it, you're a detective!"
			return "palace_hotel"
		end
	end
end

class Safe < Scene
	def enter()
		puts "You get 5 guesses to unlock the safe.  It is a 3 digit combination, with each digit between 0-9."
		counter = 0
		number = $stdin.gets.chomp
		while counter < 3
			if number == "123"
				puts "The safe is unlocked!  Bronson grabs the documents and goes out the living room, only to find Gia mysteriously gone from the hotel room. He pulls a cigarette from the pack on the table and leaves the hotel to go the Golden Gate Bridge. In any case, he still has to make the drop."
				break
			else
				counter += 1
				puts "You have #{3-counter} guesses left."
				#need to write something if the code does not get broken
			end
		end
		return "golden_gate_bridge"
	end
end

class GoldenGateBridge < Scene
	def enter()
		puts "The light is turning paler and watery as Bronson pulls up to the Golden Gate Bridge, the high-flying monolith that guards San Francisco. The wind is flipping back and forth, and he tucks his collar up high. Bronson approaches the meeting point in the bridge, an alcove on the sidewalk between two red sheet-metal walls of the first suspension tower.  He sees two figures struggling and then one of them hoists the other over the edge of the bridge. As long legs and the silhouette of high heels are revealed, Bronson realizes it's Armo and Gia."
		puts "Bronson runs to them. \"Stop, stop right there!  I have your documents!\" yells Bronson."
		puts "Armo sneers. \"What documents? Who gives a damn? I'm going to kill this two-faced trash!\""
		puts "\"Put her down!\" Bronson says, and reaches into his coat pocket."
		puts "Action(s): fight, dodge"

		action = $stdin.gets.chomp

		win = 0

		if action == "fight"
			weapon = $detective_bronson.which_weapon
			if weapon == "gun"
				win = 1
				puts "Bronson takes out the gun and shoots Armo dead."
				puts "\"Well, that was an easy shot,\" he mutters."
			elsif weapon == "knife"
				puts "Bronson knows he doesn't have as much of a chance with a knife, but he takes it out anyways."
				random_gen = Random.new
				random1 = random_gen.ran(0..1.0)
				random2 = random_gen.ran(0..0.5)
				if random1 < 0.5
					puts "Bronson takes a slash, but Armo is too quick.  Armo manages a good slug at his face and Bronson feels his nose break and a bit woozy."
					puts "Action(s): fight, dodge"

					action = $stdin.gets.chomp

					if action == "fight"
						if random1 + random2 < 0.5
							puts "Bronson attempts again, but Armo manages get underneath him into a headlock.  Bronson closes his eyes, knowing it's over. Armo pulls with a quick snap, and it's all over."
							win = 0
						else 
							puts "Bronson, bleeding heavily from the face, manages to avoid a swing from Armo, gets underneath his guard, and put the knife straight into his kidney."
							win = 1
						end
					elsif action == "dodge"
						puts "Bronson takes a step back, but Armo manages get underneath him into a headlock.  Bronson closes his eyes, knowing it's over. Armo pulls with a quick snap, and it's all over."
						win = 0
					else
						puts "Bronson does nothing, like the great idiot lummox he is. Armo drops Gia and throws Bronson over to join her."
						win = 0
					end
				else
					puts "Bronson manages to avoid a swing from Armo, gets underneath his guard, and put the knife straight into his kidney."
					win = 1
				end
			elsif weapon == "cigarettes"
				puts "Bronson reaches for his coat pocket and realizes he only has his pack of cigarettes.  He stares into Armo's murderous eyes as he realizes that this is the end.  Armo takes a swing, makes contact with Bronson's head, and last thing Bronson hears is the sound of his own skull crushing into itself."
				win = 0
			else 
				"Bronson does nothing. Everyone dies."
				return "death"
			end
		elsif action == "dodge"
			puts "Bronson takes a step back, but Armo manages get underneath him into a headlock.  Bronson closes his eyes, knowing it's over. Armo pulls with a quick snap, and it's all over."
			win = 0
		else 
			puts ""
		end

		if win == 1
			puts "Bronson shakes himself, leaving Armo's body on the ground. He moves to comfort Gia, only to notice that she is smiling slightly, and is clutching the document packet."
			puts "\"Thank you for dispatching him. I try to never do my own dirty work,\" she drawls."
			puts "\"Dirty work?\" Bronson asks quizzically."
			puts "\"Why yes, see?  I dispatched Luciano in order to take over his business, and the only thing left in my way was getting a hold of these documents and getting rid of Armo, and you did both.  And only because of your help, I'm not going to kill you.\"  She takes out a gun---his gun, Bronson's own damn gun--and shoots him in the shoulder. As he falls to his knees, swearing, she steps around him. He hears the revving of a car engine a moment later. The cherry red Chrysler slows as it passes him. \"I'll give you a good recommendation to my friends!\" Gia tells him, and speeds away to Marin County."
			puts "\"Damn,\" whispers Bronson. \"I could really use a pack of cigarettes.\""
			return "end"
		elsif win == 0
			"You died, you sorry sucker."
			return "death"
		else
			puts "Hm, error, something got messed up in the storyline"
		end
	end
end



class Engine

	def initialize(scene_map)
		@scene_map = scene_map
	end

	def play
		
		#access the specific scene object and gets it to play
		#but then a thing will be returned, so how to capture that?  Where does the return go?
		# when one has two classes, and one class initializes another class and then a method from that and then something is returned, how do you capture a returned thing?
		# nvm, got it.  when scene.enter is called, that in and of itself will return the next scene.  the only problem then is to have it recursively called onto itself. aka scene.enter.enter.enter etc. 
		# note: doesn't work. because enter is not a local variable method for corner_store for DarkAlley object.  Should have known.
		# for each scene in the map, have scene enter.  when it returns the next scene, put that inside of map and have it recursively do it again?
		current_scene = @scene_map.opening_scene #DarkAlley.new
		last_scene = @scene_map.next_scene("finished")

		while current_scene != last_scene
			next_scene_name = current_scene.enter 
			current_scene = @scene_map.next_scene(next_scene_name)
		end

		current_scene.enter
	end
end

class Map
	@@scenes = {
		'dark_alley' => DarkAlley.new,
		'corner_store' => CornerStore.new,
		'palace_hotel' => PalaceHotel.new,
		"safe_room" => Safe.new,
		"golden_gate_bridge" => GoldenGateBridge.new,
	}

	def initialize(start_scene)
	 	@start_scene = start_scene
	end

	def next_scene(scene_name)
		return @@scenes[scene_name]
	end

	def opening_scene
		next_scene(@start_scene)
	end


end


a_map = Map.new("dark_alley")
game_engine = Engine.new(a_map)
game_engine.play



# only need to pass map the start scene, because after that it should be self population.
# when engine.play is started, load opening scene.  Then that opening scene will return something, 
# 



# Additional game features that I want to implement:
# being able to hit enter to load the next puts line
# blinking in console as a loader/waiting indication?  Is that even possible?
# allow someone to choose their own name, and give them options to do so otherwise.

# REFLECTION
# ARGV, $stdin, STDIN
# Learn Ruby the Hard Way used $stdin.gets.chomp, which I didn't recognize, so I went down the rabbit hole of learning about.  But then it started talking about ARGV, which I also didn't know.  As such, ARGV is an array (but also a constant) that stores all the arguments passed into a program (but not the name of the program itself.)  It is useful because you specifiy the arguments upfront when running a file.  ex: ruby ex1.rb argument1 argument2 argument 3.  ARGV would be ["argument1", "argument 2", "argument3"]
# So if you passed in arguments into ARGV, gets.chomp will read ARGV first.  As such, if you want to ensure that gets.chomp will read the user input, you need to put $stdin, as the gets method will fall back to $stdin and not STDIN.
# But wait.  What's the difference between STDIN and $stdin?  STDIN is a constant, and $stdin is a global variable, but what is the functional difference between the two? Well, because $stdin is a variable, it can get reassigned.  STDIN can get reassigned as well, but will have no effect unless a 3rd party method uses STDIN.  
# As such, use $stdin.gets.chomp in order to make sure that the user input is being read.
# And as a general note, standard input is the steam where input for a computer is held.  The input is stored in a variable.

# Class vs. module
# Module is a block of code that has functions or variables in it, and you can save it as an individual file and you can import that file using require, and call functions or variables using the dot operator.  (could also probably not need to use require and just have a module within the file and use dot notation after to access functions/variables inside.)
# Difference between module and a class:  Only one module exists for the entire program, whereas classes can be instantiated and called into objects, which are just many copies of the original class.  Not to confuse instantiation with initialization.  Instantiation is calling a new object from the class ie object = MyClass.new(), whereas initialize is a function that actually creates the object itself, with whatever variables you set.
# Quesiton: but does a class need an initialize method?  What if there are no instance variables that need initializing?  According to https://www.codecademy.com/forum_questions/52191792f10c601d4f003a2a, you can still instantiate an object from a class without the initialize method, but no special code will be run at the creation of the object.

# Class inheirtance
# can be indicated by class child < parent notation
# Implicit inheirtance.  Actions on the child imply an action on the parent.  If you put a function in the base class, then all subclasses will automatically get those features.
# Override Explicitily. Actions on the child override the action on the parent.  When you have the same function in both the parent and the child class, the child class function will prevail due to explicit override.
# Alter before or after.  Actionson the child alter the action on the parent.  Even in an explicit override, you can call the parent version of the same function if you write super() in the method.
# Most common usage of super is in the child's initialize.  Set the child's variables in initialize, and then having the parent initialize after.  
# Question. Here is the code from the chapter:
# class Child < Parent
# 	  def initialize(stuff)
#         @stuff = stuff
#         super()
#     end
# end
# Wouldn't it be better to put super() before initializing the child's variables?  What's the difference?

# Composition
# Rather than rely on implicit inheritance, can just use other classes or modules inside of 
# 
# 
# 
# 
# 
