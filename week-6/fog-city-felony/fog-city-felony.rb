# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 

class Scene
	def enter()
	end
end

class Engine

	def initialize (scene_map)
	end

	def play()
	end
end

class Map

	def initialize(start_scene)
	end

	def next_scene(scene_name)
	end

	def opening_scene()
	end
end

class Detective 
	def initialize(weapon)
		@weapon = weapon
	end

	def which_weapon
		return weapon
	end
end

class Death < Scene
	def enter()
		return dark_alley
	end
end

class DarkAlley < Scene
	def enter()
		puts "Detective Bronson wakes up, cold, alone, and in a dark alley.  The lone lamplight at the end pricks his eyes as the world swims into view. He takes stock.  Gun is gone, he has a blistering headache, and is most definitely out of cigarettes. \"Damn,\" he says softly."
		puts "He gets up, and suddenly the lamplight throws into relief the shining blood on the walls."

		action = $stdin.gets.chomp

		if action == "investigate"
			puts "Bronson takes a step closer to investigate the blood oozing down the walls. It is most definitely fresh.  Kneeling down, he finds bullet casings on the ground - strangely marking to be the same as from his gun.  Bronson notices a waiter, smoking at the end of the alley"

			action = $stdin.gets.chomp
			
			if action == "interrogate"
				puts "\"Hello there, any possibility that you can tell me what happened here?\" asks Bronson."
				puts "The waiter eyes him, and slowly puffs his cigarette."
				puts "\"Also, any possibility you got an extra one of those?\" Bronson quietly asks."
				puts "\"Nope, fresh out,\" states the waiter lazily."
				puts "\"Well,\" Bronson growls, \"You better start talking before I make trouble for your restaurant right over there and have this alley crawling with cops.\""
				puts "\"Fine. I 'eard some scuffing and a gunsho' so came ou'side, and saw you passed ou' on the ground.  And I decided tha was a perfect time for a smoke\"".
				puts "\'Asshole,\' thinks Bronson. \"Thank you,\" he mutters, and trudges out of the alley."
				return "corner_store"
			end
		end
	end
end

class CornerStore < Scene
	def enter()
		puts "Detective Bronson rounds the corner of the alley, and finds himself in front of a neoned corner store. He enters."
		puts "The clerk looks up, and yelps at the sight of the bloodied and bruised detective. He jumps over the counter and starts to run for the door."

		action = $stdin.gets.chomp

		if action == "pursue"

			puts "Bronson easily sidelines the clerk to the floor with a well-placed kick."
			puts "\"Wha-whatever you've come for, I d-don't have it-t-t.  I already p-paid the boss,\" the clerk stammers."
			puts "Bronson sighs heavily. \"I'm not here to hurt you, just find out what happened this past night.\""
			puts "\"W-well I saw you yesterday with the mafia boss.  You came in here with his gal and bought some alc.  Then from what next I heard from some guys down the street, there was an altercation down that allley and now the boss is dead.  But there is definitely a new boss, and the old boss's second had guy is out to get yah."
			puts "Bronson looked at him quizzically, pondering for a moment. \"You got anything I can purchase to protect myself?\""
			puts "\"Yeah, I got something.  How much yah got?\""
			puts "Bronson rifles through his wallet. \"Not much\"."
			puts "\"You can get either a gun, knife, or a pack of cigarettes.\""

			action = $stdin.gets.chomp
				if action == "buy gun"
					#pass to detective class gun
					puts "Bronson buys a gun."
				elsif action == "buy knife"
					#pass to detective class knife
					puts "Bronson buys a knife"
				else 
					#pass to detective class cigarettes
					puts "Bronson buys a pack of cigarettes"
				end
			puts "\"Any idea where the gal might have gone, or her name?\" Bronson asks."
			puts "\"I heard her mention the Palace Hotel, and you had called her Pearl at one point,\" the clerk says quickly, relieved."
			puts "\"Alright, stay out of trouble.\" Bronson leaves."
			return palace_hotel
		elsif action == "do nothing"
			puts "Bronson sighs, picks up a pack of cigarettes, puts one to his lips, and walks out of the store."
			return dark_alley #dark_alley_return?  A separate class?
		else
			puts "Well, you gotta do something about it, you're a detective!" #good place to put some random quips, maybe a local method?
			return dark_alley #dark alley_alley_return?  A separate class?
		end
	end
end

#class DarkAlleyReturn?

class PalaceHotel < Scene
	def enter()
		puts "Detective Bronson arrives at the hotel, and after some sleuthing, finds Pearl's hotel room.  He knocks, and a luscious femme fatale, tears staining her face, opens the door and is clutching a knife."

		action = $stdin.gets.chomp

		if action == "interrogate"
			puts "\"Now now darling, I'm not here to hurt you.  My name is Detective Bronson and I'm here to ask a few questions about this night's murder.\""
			puts "\"Oh my goodness, I-I though you might be someone else.  I didn't want to hurt anyone, I s-swear,\" she mumbles and then starts crying. \"I didn't mean to kill him, but he was hurting me so bad!\""
			puts "\"Hurting you?\" Bronson asks sharply."
			puts "\"Y-yes, terrible things, so I had to kill him but now I'm afraid for my life, as his second hand man, Pewall, might be after me...Will you protect me??\" she cries, and flings herself into his arms."

			action = $stdin.gets.chomp

				if action == "refuse"
					puts "\"Pearl straightens up, her face hardening and all signs of tears gone."
					puts "\"Well then I have no choice but to kill you,\" she states clearly, takes the knife, and stabs it straight into Detective Bronson's heart. He gasps, blood spattering, and dies."
					return death
				elsif action == "agree"
					puts "\"W-well, Pewall is now the new head of the mob, and has asked me to deliver documents to him on the Golden Gate Bridge by sunrise, but I'm afraid it's a trap to get me, and if I don't go, he'll hunt me down.\""
					puts "Bronson holds her tightly, smelling her sweet hair and says \"I would be happy to go in your place.\""
					puts "\"Oh would you? You would be saving my life! There is only one more problem: Stan left the documents in a safe in the inner room of the hotel, but I don't know how to get them out. The only clue I was given that it's the same answer when the 3 digits are added or multiplied.\""
					puts "\"I'll take care of it for you,\" Bronson states.  He gets up and goes into the inner room."
					return safe_room
				else 
					puts "Seriously, you're a detective.  Start sleuthing!"
					return palace_hotel
				end
		else 
			puts "Well, you gotta do something about it, you're a detective!"
			return palace_hotel
		end
	end
end

class Safe < Scene
	def enter()
		puts "You get 5 guesses to unlock the safe.  It is a 3 digit combination, with each digit between 0-9."
		counter = 0
		while counter < 3
			if number == "123"
				puts "The case is unlocked!  Bronson grabs the documents and leaves only to find Pearl mysteriously gone from the hotel room. He puts a cigarette to his lips and leaves the hotel to go the Golden Gate Bridge."
				break
			else
				counter += 1
				puts "You have #{3-counter} guesses left."
			end
		end
		return golden_gate_bridge
	end
end

class GoldenGateBridge < Scene
	def enter()
		puts "Bronson approaches the meeting point in the bridge, an alcove on the sidewalk.  He sees a man dangling a woman over the edge, and realizes it's Pearl."
		puts "\"Stop, stop right there!  I have your documents!\" yells Bronson."
		puts "Pewall sneers. \"I don't care about the damn documents, but about killing this two faced girl!\""
		puts "\"Fine, I'll fight you for her.\" Bronson says calmly."

		action = $stdin.gets.chomp

		win = 0

		if action == "fight"
			weapon = detective_bronson.which_weapon
			if weapon == "gun"
				win = 1
				puts "Bronson takes out the gun and shoots Pewall dead."
				puts "\"Well, that was an easy shot,\" he mutters."
			elsif weapon == "knife"
				puts "Bronson knows he doesn't have as much of a chance with a knife, but he approaches menacingly anyways."
				random_gen = Random.new
				random1 = random_gen.ran(0..1.0)
				random2 = random_gen.ran(0..0.5)
				if random1 < 0.5
					puts "Bronson takes a slash, but Pewall is too quick.  Pewall manages a good slug at his face and Bronson feels his nose break and a bit woozy."

					action = $stdin.gets.chomp

					if action == "fight"
						if random1 + random2 < 0.5
							puts "Bronson attempts again, but Pewall manages get underneath him into a headlock.  Bronson closes his eyes, knowing it's over. Pewall manages a quick snap, and it's all over."
							win = 0
						else 
							puts "Bronson, bleeding heavily from the face, manages to avoid a swing from Pewall, gets underneath his guard, and put the knife straight into his heart"
							win = 1
						end
					elsif action == "dodge"
						puts "Bronson takes a step back, but Pewall manages get underneath him into a headlock.  Bronson closes his eyes, knowing it's over. Pewall manages a quick snap, and it's all over."
						win = 0
					else
						puts "You did nothing, so you are definitely dead."
						win = 0
				else
					puts "Bronson manages to avoid a swing from Pewall, gets underneath his guard, and put the knife straight into his heart"
					win = 1
				end
			elsif weapon == "cigarettes"
				puts "Bronson reaches for his coat pocket and realizes he only has his pack of cigarettes.  He stares into Pewall's murderous eyes as he realizes that this is the end.  Pewall takes a swing, makes contact with Bronson's head, and last thing Bronson hears is the sound of his own skull crushing into itself."
				win = 0
			else 
				"Welp, you did nothing, so you're definitely dead."
				return death
			end
		elsif action == "dodge"
			puts "Bronson takes a step back, but Pewall manages get underneath him into a headlock.  Bronson closes his eyes, knowing it's over. Pewall manages a quick snap, and it's all over."
			win = 0
		end

		if win = 1
			puts "Bronson shakes himself, leaving Pewall's body on the ground. He moves towards Pearl, only to notice that she is smiling slightly, and is clutching the document packet."
			puts "\"Thank you darling, for dispatching him. I try to never do my own dirty work,\" she drawls."
			puts "\"Dirty work?\" Bronson asks quizzically."
			puts "\"Why yes, see?  I dispatched Stan in order to take over his business, and the only thing left in my way was getting a hold of these documents and getting rid of Pewall, and you did both.  And only because of your help, I'm not going to kill you.\"  She takes out a gun, shoots him in the shoulder, steps into a car parked nearby and drives away. \"Thank you for everything darling!\" she yells as she speeds off across the bridge."
			puts "\"Damn,\" whispers Bronson. \"I could really use a pack of cigarettes.\""
			#end
		elsif win = 0
			"You died, you sorry sucker."
			return death
		else
			puts "Hm, error, something got messed up in the storyline"
		end
	end
end

a_map = Map.new("dark_alley")
a_game = Engine.new(a_map)
a_game.play()


# Reflection
# Learn Ruby the Hard Way used $stdin.gets.chomp, which I didn't recognize, so I went down the rabbit hole of learning about.  But then it started talking about ARGV, which I also didn't know.  As such, ARGV is an array (but also a constant) that stores all the arguments passed into a program (but not the name of the program itself.)  It is useful because you specifiy the arguments upfront when running a file.  ex: ruby ex1.rb argument1 argument2 argument 3.  ARGV would be ["argument1", "argument 2", "argument3"]
# So if you passed in arguments into ARGV, gets.chomp will read ARGV first.  As such, if you want to ensure that gets.chomp will read the user input, you need to put $stdin, as the gets method will fall back to $stdin and not STDIN.
# But wait.  What's the difference between STDIN and $stdin?  STDIN is a constant, and $stdin is a global variable, but what is the functional difference between the two? Well, because $stdin is a variable, it can get reassigned.  STDIN can get reassigned as well, but will have no effect unless a 3rd party method uses STDIN.  
# As such, use $stdin.gets.chomp in order to make sure that the user input is being read.
# And as a general note, standard input is the steam where input for a computer is held.  Teh input is stored in a variable.