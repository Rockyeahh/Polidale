POLIDALE

VAR starting_money = 203
VAR portVisited = false
VAR strikes = 0
VAR riotStarted = false

// Introduction

~ starting_money = starting_money + 0

Wilfred Bortlefish is off to Polidale to bring some excitement into their life. A big port town like Polidale is bound to be filled with interesting people and things to do or whatever it is that they say about it. Wilfred isn't one for research. They'd be hard pressed to spell the word, let alone attempt it. Getting away from their sleepy village of Littletoad should be a good change of pace. Wilfred was just a simple carpenter but they've got dreams. They aren't big dreams. They aren't imaginative dreams but they are dreams and that'll have to do.

A bright spring morning. The wind is calm. The road is clear. A stout (stout? Am I thinking of booze again?) red cheeked traveller named Wilfred Bottlefish plods along with a brown leather satchel strapped to their person. (Now describe clothes, hat and so on). The edge of the forest path gave way to open fields. Wilfred plodded along in the warm sunshine. The breeze was a gentle one and even they couldn't complain. The path soon became a paved road with only a few holes and cracks as opposed to the typical death trap roads of the village of Littletoad. (we know it’s a village so it probably doesn’t make sense to explain that again.)

The walls of Polidale seemed to glisten in the sunlight but primarily around the gate. Someone must have made a conscious effort to give a good first impression. Wilfred smiled at the impressive sight, oblivious of the dishevelled homes in the surrounding fields or the grim faced farmers of those very same fields.

* [Enter Polidale.] -> TollBooth

=== TollBooth

~ strikes = 0   // Resets the strikes to 0.

As Wilfred approached the enormous, glorious and astounding well kept, shinning, imposing gate to Polidale, something could be seen out of place. A small raggedy wooden toll booth sat in the middle of the road just before the gate. Within, there was a sleeping fellow with their feet up, a belly poking out from an ill-fitting shirt and a distinct smell of booze. The booth didn't even block the entire road.

*       A) Walk up to the toll booth and attempt to waking them.
        -> UseTollBooth

*       B) Walk around the booth and head into the castle.
        -> IgnoreToll

=== UseTollBooth

You approach the booth. The moment you reach it. The toll booth worker suddenly wakes up with a manic look and a forced smile. 
“Welcome to Polidale!”    #Tollworker
They stay paused in a smile like a statue.

Wilfred watches them. “Er..”    #Wilfred
Wilfred backs away slightly.

The toll worker panics. “Don't leave! The toll is only a bloom."
Wilfred pays the toll and waits for the barrier to raise.

~ starting_money = starting_money - 1

They smile. “Now if you want the barrier raised that'll be one bloom.”
Wilfred pays another bloom.
~ starting_money = starting_money - 1
They hand them a pamphlet that is tied to a piece of thin rope.
Wilfred sighs and hands them another bloom and the rope releases the pamphlet.
~ starting_money = starting_money - 1
The barrier raises.
Wilfred looks at the pamphlet. The pamphlet reads; 
		The pamphlet of pedantic politeness.
1. Do not say thank you, say "Better that I don't see you." (“again”)	[Revise and/or change this later]
2. Do not haggle impolitely.
3. Do not try an blar bla bla bleh
4. Do not bal bal bal..
5. bal ba bla bal bla
6. bla blar …...
7. …...........

Wilfred quickly got bored as the lines all started to roll into one long dreary list. -> Just_beyond_the_gate_inside_the_town_walls

=== IgnoreToll

You pick up a pamphlet on the ground on your way in. The pamphlet reads; 
		The pamphlet of pedantic politeness.
1. Do not say thank you, say "Better that I don't see you." (“again”)	[Revise and/or change this later]
2. Do not haggle impolitely.
3. Do not try an blar bla bla bleh
4. Do not bal bal bal..
5. bal ba bla bal bla
6. bla blar …...
7. …...........

Wilfred quickly got bored as the lines all started to roll into one long dreary list. -> Just_beyond_the_gate_inside_the_town_walls

=== Outside_Polidale_Fail_State
LOCATION: Outside Polidale in a ditch
You are thrown out of Polidale and land on your arse.
(How do I explain that you can only have three strikes/fuck ups and you're out.)
+   DO YOU WANT TO PLAY AGAIN?
(JUST imagine a restart button here!)
(Would it be better to be sent back to the introduction, rather than the toll booth?)
-> TollBooth

=== Just_beyond_the_gate_inside_the_town_walls

Upon entering Polidale the sounds of the town could be heard all around. The gleaming white stone architecture shone magnificently in the daylight. Well, the bits of it that had been cleaned or recently painted that is. 
All about people could be heard bumbling along, mostly without much stopping. Carriages were pulled up and down the road to the market ahead(may need to re-word this). Dogs were barking, kids were screaming. Polidale was alive. One thing that was surely alive potent was the smell. As Wilfred breathed in, they very nearly presented the townsfolk of Polidale with yesterdays dinner. 

+   A) Go down the plain looking street on the left.
     -> Outside_Barrys_Used_but_better_Goods

+   B) Follow the traders and their carts down the street in front of you, towards the market.
    -> Market_Square

+   C) Turn right down the gloomy street.
    -> Outside_an_alleyway

=== Outside_Barrys_Used_but_better_Goods

LOCATION: Outside Barry’s Used but better Goods
You stand before a ramshackle shop with a sign that reads “Barry’s Used but better Goods” and you can see that the G is hanging off of the sign. People seem to walk past it, paying it no mind. It’s windows reveal clutter within that obscures all view inside. A nearby bulldog pisses on the corner of building before moving along.
“Well if I’m going to come to town then I should certainly do some shopping.” Wilfred grins with a look of wonder in their eyes. The strength it must take to put Wilfred off is something to be admired.

+   A) Enter Barry’s Used but better Goods.
    -> Inside_Barrys_Used_but_better_Goods

+   B) Turn right to walk down the road.
    -> The_road_outside_The_Pit

+   C) Go down the street towards the town gate.
    -> Just_beyond_the_gate_inside_the_town_walls
    
=== Inside_Barrys_Used_but_better_Goods

LOCATION: Inside Barry’s Used but better Goods

A bell jingles as Wilfred enters the shop. It stops suddenly rather than end in natural way. 
	Each shelf is a mixture of oddities; old vegetables, jars or eggs, worn out shoes, slightly burned books, waterlogged papers & chipped pottery. A multitude of items in each part of 	the shop and incredibly they were priced, even the rotten ones!
	Wilfred stares at used left shoe for a moment before a salesman appears with his arm around 	Wilfred.
	“Welcome to Barry’s Used but better Goods. I’m Barry.”
	Barry smiles, revealing his horrifically filthy teeth. Even Barry’s clothes were worn out. Maybe they used to look new and fashionable but not any more.
	“We sell all kinds of high quality products here. Nothing like it can be found elsewhere. We 	are so good that they don’t even want us in market square. We’d steal all the business!”
	Wilfred stares, confused.
	“Why?” Wilfred asks, while horrified by a single rotten potatoe that was for sale.
	Barry spots the potatoe. “Ah you’ve seen our produce section. If you buy a potatoe for a bloom, I’ll sell ya the second and the third for only 1 and a half more”.
	Wilfred ponders the terrible deal for a moment.
	
+   A) Do you have anything else? //(polite option)
	-> Barry_Executive_Range
	
	+   B) I think I’m just going to leave. //(neutral)
	    “Ah that’s a shame. Come back soon now.” Barry grins with his horror show teeth. Wilfred leaves the shop.
    -> Outside_Barrys_Used_but_better_Goods

*   C) Are you insane? That’s a terrible deal! //(strike)
    Barry steps back a step confused. “I don’t know how you can’t see the value of this deal.”

    {   strikes < 3: 
    ~ strikes = strikes + 1
            -> Barry_Terrible_Deal_Options
    - else: 
        -> Outside_Polidale_Fail_State   
    }
    
*   D) This thing is disgusting. //(strike)
    {   strikes < 3: 
    ~ strikes = strikes + 1
            -> Barry_Deal_Disgusting
    - else: 
        -> Outside_Polidale_Fail_State   
    }
    
=== Barry_Terrible_Deal_Options
    
*   A) Tell Barry that you would rather see something else. //(polite)
    -> Barry_Executive_Range
    
*    B) “I think I’ll try and look somewhere else. The prices are outrageous here.” Wilfred grumbles.
	“You won’t find better prices in this town. Barry’s Used but better Goods is the ultimate way to  shop in Polidale.” Barry proudly states, as though it were some kind of absolute fact.
	Barry continues his sales pitch, even after Wilfred has left the shop.
	-> Outside_Barrys_Used_but_better_Goods

=== Barry_Deal_Disgusting

    Barry takes a step back. A pained looked in their eyes. They can’t bare the sadness. “How could say that? It’s my my shop. I’m prou....” Barry starts to cry a river of tears.
Wilfred panics and hands Barry a handkerchief.
Barry looks at it, while crying. “Is is it used?” Barry asks.
Wilfred replies. “Er, yes.”
Barry cries louder as they take the handkerchief and blow their nose snot into it.

*   A) Buy a sack of rotten potatoes.
	Barry stops crying in an instant and returns to being a professional sales person. They sell the sack for 1 bloom and by having the potatoes included it came to 100 blooms.
		{   starting_money > 99:
	~ starting_money = starting_money - 100
					- else: 
				    Wilfred could not afford it.
					}

	Wilfred grumbles as they leave with a sack of potatoes and half of their money wasted on potatoes.
	-> Outside_Barrys_Used_but_better_Goods
	
*   B) Leg it. //(strike)
Wilfred runs out of the shop in a chaotic mess, nearly tripping as they went.
    {   strikes < 3: 
    ~ strikes = strikes + 1
            -> Outside_Barrys_Used_but_better_Goods
    - else: 
        -> Outside_Polidale_Fail_State   
    }
	
=== Barry_Executive_Range

    “Ah, so you want to look at our executive range.” Barry leads Wilfred over to the counter, which he steps behind and brings out a glass case.
	Wilfred starts to show some genuine interest but then Barry opened the case. Within there was; a rabbit’s foot, a blunt dagger with no sheathe, a necklace with the jewel missing, an almost clean plate and a single left shoe that was missing it’s laces.
	“What do you think?” Barry gestures at the items with a look admiration upon their face.
	Wilfred scratches their head for a moment. “Hmm, I suppose I could..”
	
-> Barry_Executive_Range_Options

= Barry_Executive_Range_Options

*   A) Buy the rabbit’s foot.
	Barry is giddy with joy. “That’ll be 10 blooms please.”	Wilfred hands over the money and puts the rabbit’s foot into their bag.
	{   starting_money > 9:
	~ starting_money = starting_money - 10
					- else: 
				    Wilfred could not afford it.
					}
-> Barry_Executive_Range_Options

*   B) “The necklace could be of some use but it’s far outside my price range. So I’ll pick the blunt dagger instead.”
		“Now if you’d just produce your sheathe and weapon permit then we can…”
		Wilfred interjects. “I don’t have either of those.”
		Barry sighs. “Alas, then I cannot sell this to you?”
		Wilfred shrugs, as it is not a big deal.
		“What about if I lower the price of the necklace to 200 blooms.” [NOTE: THIS will use up all of Wilfred’s starting money]
-> Necklace_Options

*   C) The left shoe.
		“Hmm, it’s good for wearing or throwing. A wonderful bargain of only 25 blooms.” Barry giggles with joy as the sale is completed. Wilfred sighs as the smelly left shoe with no laces is placed in their bag.
			{   starting_money > 24:
	~ starting_money = starting_money - 25
					- else: 
				    Wilfred could not afford it.
					}
-> Barry_Executive_Range_Options

*   D) The almost clean plate.
    		“Ah you have an for craftsmanship I see.” Barry gleefully sells the plate to Wilfred for 5 blooms, whom stores it in their bag.
    			{   starting_money > 6:
	~ starting_money = starting_money - 5
					- else: 
				    Wilfred could not afford it.
					}
    		-> Barry_Executive_Range_Options

*   E) Decline any of them and just leave instead.
		Wilfred shakes their head and explains, “I don’t need any of this. So I’ll be heading off.”
		Barry grumbles a little and puts away the glass case. He then straightens up and smiles. “I hope to see you again at Barry’s Used but better Goods.
-> Outside_Barrys_Used_but_better_Goods

= Necklace_Options

*   A) “Yes, I’ll buy it.”
			{	starting_money > 199:
					~ starting_money = starting_money - 200
					    Wilfred buys the necklace and now had no more money left to spend.
				- else: 
				    Wilfred could not afford it.
					}
			//Wilfred buys the necklace and now had no more money to spend and thus leaves the shop.
-> Barry_Executive_Range_Options

*   B) “No, I’ll get something else.”
-> Barry_Executive_Range_Options

// There are more notes on this location that I should read over once the whole text adventure is working in Inky.

=== The_road_outside_The_Pit
LOCATION: The road outside The Pit.

Wilfred pauses in their walk. A cart (big wheel barrow?) filled with dead bodies, pulled along by a struggling old labourer, passes Wilfred in the street.

Wilfred watches them as they head to the left of Wilfred. In the distance they stop and tip the bodies out but no sound could be heard as they hit the ground. Following this the labourer left with their cart.

+   A) Turn left, walk towards the strange soundless floor. (May need to rewrite this line.)
-> The_Pit

+   B) Continue forwards down this street.
-> The_Port

+   C) Turn right and walk towards the sounds of bustling crowds.
-> Market_Square

=== The_Pit
LOCATION: The Pit

 Standing at the end of the street was a sign that read; “Do not jump into the pit if still alive. You may die.”

Bellow that sign there was another. “Danger, Death.”
Bellow that. “Have you got the picture yet? Death!”

Wilfred looked down into the vast pit and could not see the bottom.

*   A) Chuck a stone into the pit. //(strike)
    A small child in a guards uniform walks over to Wilfred and hands them a red piece of paper that reads “Littering without a permit. One strike received.” Wilfred grumbles.
    The small child leaves without a word.
        {   strikes < 3: 
    ~ strikes = strikes + 1
            -> The_road_outside_The_Pit
    - else: 
        -> Outside_Polidale_Fail_State   
    }

+   B) Leave The Pit.
-> The_road_outside_The_Pit


=== The_Port
LOCATION: Port

The sounds of seagulls squawking. The waves could be heard, just as the road came to an end. Wilfred looked up at tall closed gate, blocking the exit from street. The sea was close. The port just before this gate but it was shut.
Wilfred knocks on the gate.
A voice calls out.
“OI, piss off. The ports closed today.”
Wilfred is stunned and slightly panicked.
“But why?”
“Orders from the top.”
Wilfred grumbles.
“But it’s my holiday. Seeing the port was to be the penultimate moment of this trip. The most marvellous port in the whole kingdom. The envy of all others. The greatest and largest ships comes through here. It was, it was…”
“Are you done yet? Cause I’m supposed to be on break? So go away!”
The voice from the other side of the gate shouts. 
Wilfred here’s them walk away.
Wilfred sighs and walks back the way they came.

* Leave the Port.
~ portVisited = true
-> The_road_outside_The_Pit


=== Market_Square

LOCATION: Market Square (it’s actually more of a circle)

Shoe sellers, candle sellers, fork sellers, feather sellers, sellers of every type. No matter your choice, this market was sure to have it. From the kids stealing one stall to sell to another, to the hagglers that come more to haggle than actual make any serious business. Window shoppers and actual window sellers. Cows for sale, goats for sale, children for losing in the crowd. Confusion is the only word that made sense to Wilfred as they watched this scene unfold. The crowd hardly stopped for a moment. They just moved around Wilfred while they stood staring at the activity. More people were shopping here than lived in the entire of Littletoad village.
“Where do I even start?” Wilfred questioned to himself.
“You can start by moving out of the way!” a gruff voice called from behind.
Wilfred is startled and moves to the side, as an overly packed cartridge is pulled past.
//  IF I have been here once already then have alternate shorter text that appears.

+   A) Explore the Market.
-> Market_Square_Stalls

+   B) Head back towards the main gate.
-> Just_beyond_the_gate_inside_the_town_walls

+   C) Head to the western part of town.
-> The_road_outside_The_Pit

+   D) Head north up Shadler’s Way
-> Dead_End_Street

+   E) Walk up Brimble Thimble Close
-> Financial_District

+   F) Go to the eastern side of town.
-> Outside_The_Inn

= Market_Square_Stalls

+   Stall 1
-> Stall_1

*   Stall 2 // Maybe if we let them return to Stall 2 again, it will need to say something like, "the stall is now abandoned".
-> Stall_2

+   Stall 3
-> Stall_3

+   Leave the Market.
->  Market_Square

= Stall_1
Wilfred wanders through the crowd until a smell catches their nostrils.
“Hmmm. Wilfred could smell the some kind of fresh bread that must have come straight from the oven, mere moments ago.
Wilfred wanders to where the smell has it’s origin.
A gruff fellow looks down at Wilfred from their great height. Wilfred almost drools on the food.
“Well.” The stall owner stated, with less emotion than a dry wall.
The choices were hard to take in. There were; small loafs, big loafs, buns, bagels, scones, tarts, pasties, sausage rolls, baguettes, oatcakes, biscuits, rye bread and even a few hard to discern creations of their own.
Wilfred comes to their senses. “I’ll have er, er the the. I can’t decide, what do you recommend?”
The stall owner almost emotes before speaking again. “Here. 20 blooms”
A bag of scones, buns & oatcakes is placed in front of Wilfred.
Wilfred looks surprised.
OPTIONS: 
[If you are not out of money then you get A, B & C as options, otherwise C is the only option.]

*    “Thanks, I’ll take it for 15.” //(Strike) (fuck this up)
They are taken aback by Wilfred's manner. “Well then. 20 it is.” 
Silence between the two of them seems to drag on for an age despite in reality only being a few seconds long.
Wilfred sighs. “Fine.” Wilfred hands them the 20 and takes the bag of food.
	{   starting_money > 19:
	~ starting_money = starting_money - 20
					- else: 
				    Wilfred could not afford it.
					}
        {   strikes < 3: 
    ~ strikes = strikes + 1
            -> Market_Square_Stalls
    - else: 
        -> Outside_Polidale_Fail_State   
    }

*    “If possible, maybe, if you'd be so kind. You could possibly lower your price a smidgen. I'd be a much happier customer. Certainly.” //(Haggle politely as it’s customary to haggle but it must be done politely.)
The stall owner grins with a satisfied smile. “You can have it for 10.”
Wilfred pays them with a look of disbelief. They leave now with their bag of baked goods.
	{   starting_money > 9:
	~ starting_money = starting_money - 10
					- else: 
				    Wilfred could not afford it.
					}
-> Market_Square_Stalls

+   You can’t afford it and leave.
-> Market_Square_Stalls

= Stall_2
Wilfred overhears someone and heads towards it. Someone was stood up on their stall addressing the crowd of passer-bys.
“We’ve got great deals. We’ve got deals for those who don’t have em. We’ve got deals for kids. Deals for you. For them. We’ve got deals coming out of everywhere. Deals all day, everyday.”
Wilfred steps closer.
“I want a deal! What are you selling?” Wilfred asks.
They step down.
“We’ve got a buy two get one makes three deal. It ends in the next five minutes.”
Wilfred is panicking.
“But what do I get?”
They laugh.
“You get the satisfaction that made the plunge. You took the deal, while it was hot, while all the others have lost out.” The seller gestures at the sky.
“You could have anything, be anyone.”
They spin Wilfred around until they stop in front of the stall. Wilfred's bag is open and a contract is on the stall with a quill and ink jar next to it.
“So sign here and put forward your deposit and you’ll be on your way!”
They smile with a shit eating grin.
Wilfred sees that there are three choices on the page.
-> Stall_2_Options

= Stall_2_Options

*   A) Sign next to ‘the limited time new members offer’.
“Wonderful that’ll be 80 blooms.” 
Wilfred leaves with a piece of paper informing them of their products future delivery.
	{   starting_money > 79:
	~ starting_money = starting_money - 80
					- else: 
				    Wilfred could not afford it.
					}
-> Market_Square_Stalls

*   B) Sign next to ‘small time charm, all the time fun’. //(WHAT? Anyway, this gibberish is the worst choice.)
Wilfred wakes up next to the stall, which is now empty. All of their remaining money is gone, except for a small amount in a separate compartment in their bag. 
“Well at least they weren’t very through. This way I can still get a room at the Inn.” Wilfred manages half a smile and gets up.
	~ starting_money = 0
Wilfred now has {starting_money} blooms left, aside from their money for the Inn.
-> Market_Square_Stalls

*   C) Sign next to ‘The Ultimate package: five for the price of six’.
“That’ll be 100 blooms.”
Wilfred walks away with a single strange looking but shiny coin.
	{   starting_money > 99:
	~ starting_money = starting_money - 100
					- else: 
				    Wilfred could not afford it.
					}
“They said that it’d prove it’s worth eventually.” Wilfred raises an eyebrow at this, before shrugging and putting it into their bag.
-> Market_Square_Stalls

+   D) You change your mind and walk away. (Do we let this happen?)
You leave the stall and a stunned sales person.
-> Market_Square_Stalls


= Stall_3
Wilfred starts to browse a wine seller but while they do this the owner watches them closely, before stepping closer to Wilfred. 
“You look familiar? Are you from Wilddledum (I kind of want to call it Fiddledum)?” “Er well n…” “Ah I knew I’d seen ya there. Wow, haha. Take one of these with ya.” They hand Wilfred a bottle of red wine. “Oh and tell Bill that I want my hat back or I’ll kick their head in.” They scream/shout it out (think angry Glaswegian) and Wilfred fights back tears. 
“Ahh it’s good to see someone from back home. I, it takes me back.” They proceed to shake Wilfred's hand so tight that it feels like it might break. “Well off ya go then and enjoy the wine. And good luck with the sappy pricks in this town. Obsessed with their manners and so on.” They gesture at the crowd laughing as they return to work. 
Wilfred leaves confused with their wine and waves back awkwardly at the stranger.
-> Market_Square_Stalls

=== Dead_End_Street
LOCATION: Dead End Street (Shadler's Way)
Wilfred follows the cobbled road, as it turned and turned and the way seemed to get narrower and narrower. The houses seemed to jut out over the street, as if they were peering over us with a sneer. The dark shade brought on by this architecture gave off an eternal evening. The sun could not reach the paved road at all. Simple torches and glimmers of light glowing out from the window panes was all the light to be seen on this dark gloomy street.

At last a dead end was found and Wilfred stopped to observe as best as could be done, in this dimly lit street.

At the end of the street Wilfred could see a lit fire pit.
// If you haven't been here before, then you can progress to the fire pit.

* Approach the fire pit.    // Only make this a + if I can alternate the text to be that no one is at the fire pit now after your first visit there.
-> Fire_Pit

+ Leave the dead end street.
-> Market_Square

= Fire_Pit

Upon approaching a group of five children of varying ages turn to see and smile at this approaching tourist.
The youngest stands up & steps forward. 
“Well, it’s good to see a new player in these parts.” They gesture for Wilfred to sit by the fire.

The group are playing dice by rolling them into a bowl.
The middle sized child hands Wilfred some dice.
“What do you wanna put down? 10, 20, 30?” The middle kid points to a mug with coins in it.
A taller kid nudges Wilfred. “Come on. Let’s playing already?”
Wilfred looks around unsure. “Well I guess I could.” They stutter out the last word.

*   “I’ll play!” (If you have any money left this is an option.)
Wilfred starts off winning a few coins but eventually loses track of time as the kids cheer Wilfred on. The wins slow down as the dice keeps landing on the same side. Soon Wilfred is on the last 10 blooms, until it’s gone. The thrill was over. Wilfred was now out of spending money.
	~ starting_money = 0

“Well that’s how it goes pal.” The middle child slaps Wilfred on the back and they head off into the night.
Wilfred sighs as the fire goes out once the kids have all left, before Wilfred finally stands up with a dour look upon their face.
-> Empty_Fire_Pit

*   I don’t have any money left but I’ll play anyway. (If you don’t have any money left, then this option is available.)
Wilfred feels a sudden pain in the back of their head. They awake by the side of the street with all of the items that they bought missing.
-> Empty_Fire_Pit

*   You get up and leave instead.
The other two kids snigger in the background, while the youngest shakes their head. 
“I guess it just wasn’t to be. You have a good day then.”
They all returned to their game, while Wilfred walked away.
-> Market_Square

===   Empty_Fire_Pit
* Leave.
Wilfred heads back to the Marketplace.
-> Market_Square

=== Financial_District
LOCATION: Financial District (Brimble Thimble Close)

An amalgamation of banks, insurance firms, union buildings, customs offices, and slightly more reputable fronts for mobsters, such as the empty butchers shop that sits between two law firms.
In the middle of this cramped group of buildings within this square (more of a circle really) was the Customer Complaints Office. Outside Wilfred reads that it’s opening between 9:00am and 9:15am and between 2:30pm and 2:45pm.

{   portVisited == false:
-> Financial_District_Closed
					- else: 
				    -> Financial_District_Open
					}
					
= Financial_District_Closed
+   A) It appears to be currently closed but you try to enter anyway.
Wilfred is unable to open the door and turns back.
-> Market_Square

= Financial_District_Open
*   A) Luckily Wilfred was here at the correct time. So let’s go in!
-> Customer_Complaints_Office

*   B) Return to the Market
-> Market_Square

=== Customer_Complaints_Office
LOCATION: Customer Complaints Office

A staleness floats in the air. The faces of those within have fallen so low that it’s surprising that they still stand up at all.
A grey floor, white walls, no seating, just an oppressive counter across the opposite wall and one solitary grim faced staff member standing behind it.

Wilfred walks over to the desk. There footsteps create an echo as they walk.
Before Wilfred could speak the clerk behind the counter began.
“If you don’t have any serious complaint, be it financial, speculative, outstanding claim related or otherwise then please move along.”
They stared off into distance, as if Wilfred wasn’t even standing before them.
-> Clerk_Options

=   Clerk_Options
*   A) I’d like to complain about the port being closed. //(wrong choice Strike)

“That is a matter for the Port authorities. Tarnishing their good name is a truly terrible thing!” The clerk shakes their head. 
A small child in a guards uniform hands Wilfred a note, before marching out of the building. The note reads; 'You have offended the good name of the Port authorities. You have been given one strike.'
        {   strikes < 3: 
    ~ strikes = strikes + 1
            -> Clerk_Options
    - else: 
        -> Outside_Polidale_Fail_State   
    }

*   B) The port gatekeeper was terribly rude to me! //(wrong choice but no Strike)

The clerk raises an eyebrow. “Complaining about individuals is not our concern.”
-> Clerk_Options

*   C) “I want to complain about the smell!” //(wrong choice but no Strike)

The clerk sighs deeply. “Another one...” They add your name to a list.
“Thank you. It has been noted. Goodbye.” They state plainly before returning to staring into space. (may need rewording)
-> Clerk_Options

*   D) I think it’s incredibly impolite that the port be closed to visitors, when it’s one of the main reasons that a tourist comes to Polidale! //(correct choice)

The clerk straightens up with a serious look. “Ah this truly is awful but sadly it’s out of our hands.” The clerk sighs. They then lean in and whisper. “They say some accident occurred there but we wouldn’t dare speak of it. That wouldn’t proper. Certainly against the rules.” The clerk looks around and speaks aloud. “Thank you for your concerns. Have a wonderful stay at the Inn (might be a bit on the nose here) in town.” The clerk places the closed sign onto the counter.
-> Clerk_Final_Options

*   E) I want to visit the port? Why can’t I? //(neither wrong nor right as it just leads to further information.)

“That is not a complaint, that is a question. We are not the port authorities, are we? So please leave unless you have a complaint.” The clerk states plainly.
-> Clerk_Options

= Clerk_Final_Options

*   A) Wilfred takes the hint and leaves.
-> Financial_District

*   B) “What! You can’t just close. This is unjust. It must be solved.” Wilfred complains.
Another patron/customer overhears and throws down their paper.
	They march out into the street and call out to others.
	Soon a whole crowd is in the Customer Complaints Office.
	Someone even brings in a chair to throw, as there are none in the Customer Complaints Office.
	Pitchforks are raised. The Clerk quickly puts on a wig and a different coat and joins the crowd, handing out flyers.
	The whole place starts to get kicked the shit out of it.
	// Riot caused
	~ riotStarted = true
	-> Financial_District_Riot
	
	= Financial_District_Riot
    LOCATION: Financial District (Brimble Thimble Close)
    
	Wilfred ends up back in the street pushed to the side by the much angrier mob, just as the chair is thrown.
	“Well, they seem to have something to get off their chest. I’ll just leave them to it.” Wilfred scratches their head and backs away from the building.
	
	* Leave quietly.
	-> Market_Square
	// SOMEHOW we must stop you being able to enter the financial district again, after this riot has started.

=== Outside_an_alleyway
LOCATION: Outside an alleyway.

Wilfred now stands before an alleyway. It’s dark, grim and rather smelly. The street to left seems perfectly safe though.

*   A) Investigate the alley.
-> Alleyway

*   B) Walk towards the town entrance.
-> Just_beyond_the_gate_inside_the_town_walls

*   C) Take a left up Low Tide Road (this is a shit name).
-> Outside_The_Inn

=== Alleyway
LOCATION: Alleyway

Up to the neck Wilfred was, as the whole place was overgrown. The further they walked, the more they struggled to see.

*   A) Turn Back.
	Wilfred returns to the street.
-> Outside_an_alleyway

*   B) Continue exploring.
The constant struggle was grating at Wilfred’s patience. Alas they stumbled and felt the fall with a mix of stinging nettles and pointy branches. Luckily they were mostly fine and crawled out from the overgrown alleyway.
Once they reached the street a small child in uniform watched this fool crawl out. They made a “Hmph” sound and abruptly left.
On the floor in front of Wilfred was a note stating that they had violated public property. This was a private garden and not for public use!
“How does one call that a garden? It’s a nightmare!” Wilfred exasperatedly asks to no one in particular.
    {   strikes < 3: 
    ~ strikes = strikes + 1
            -> Outside_an_alleyway
    - else: 
       -> Outside_Polidale_Fail_State
       }

=== Outside_The_Inn
LOCATION: Outside the inn.

Wilfred stands before a ramshackle inn that seems older than most of the surrounding buildings. It was longer than the others too, with an almost ship like design. Outside swung a wooden sign that read; ‘The Murky Mug’ (bit of a shit name). A distinct smell of sick and piss floated in the air. (re-do this line)

+   A) Take a left into the Market.
-> Market_Square

+   B) Enter the Inn.
-> Inside_The_Inn

+   C) Walk back down Low Tide Road (terrible name).
-> Outside_an_alleyway

=== Inside_The_Inn

LOCATION: Inside the Inn

Warm but stale was the first impression that Wilfred experienced upon entering the Murky Mug.
A distinct lack of life seemed to resonate despite being quite full. Each person sat with a look of contempt and disdain. Some grumbled at the notice of the door bringing the cold in. Others sat in total silence opposite each other. Some tried with all their might to not make eye contact with anyone, not even a fly. The bar seemed to be the bar, the kitchen and the reception for the inn. A half asleep bartender in an apron with a single clean spot on their shirt, while the rest was a mixture of colours, ranging from grease, to flour, to wine and who knows what. They look over in shock, as Wilfred steps forward.
“What? Well um, hello there. Welcome to my inn.” Speaking seemed to be a great excursion from them. They also break the rooms silence with their words.
“Could I get a room until Tuesday.” Wilfred asks.
The innkeeper nods.
“We’ve got someone leaving later today but once they’re out I can get the room ready for ya.”
The innkeeper sips a drink.
“That’ll be 9 blooms.” The innkeeper smiles, while scratching at a rash across their left forearm.
Wilfred pays them & heads into the bar area.
“Hmm, well I better find a way to pass the time.” Wilfred thinks.
-> Inn_Options

=   Inn_Options

+   A) Leave the Inn
-> Outside_The_Inn

*   B) Get a drink at the bar.
An old local leaned against the bar, while nursing a brown pint, not far from Wilfred now stood.
-> Drink_choices

*   C) Approach the old sailor muttering on a stool in the corner.
Wilfred walks up to the old sailor that was muttering away about incomprehensible things.
“Hello.”
The sailor carries on muttering.
Wilfred smiles awkwardly.
“Well that’s eh, quite the, the stroll there.”
The sailor mutters louder.
“Hmm, well I’ll be off then.”
Wilfred slides away from the sailor.
-> Inn_Options

*   D) Approach the group huddled round a table by the fire.
The fire crackled as the group of four spoke in hushed tones and pointed at different spots on a map upon the table, in which they sat around.
“Ah map work huh. You have to admire a well made one.” Wilfred states.
The four jolt up straight in their seats. One of them even dropped their hat.
“Who, what?” The chubby one asks.
“I had quite the struggle finding my way here with my old map. I ended up talking a route through the forest...” Wilfred continues talking.
Another of the four with a overgrown moustache speaks up. “Can’t you go somewhere else, we’re busy.”
Wilfred continues. “Well that trek past the buckwheat fields was a bit of an odd detour and the time I almost ended up in a bog...”
“I don’t think they are going to stop.” Another of the group with a scar across their cheek.
“After running from those dogs I found myself down by a river that wasn’t even on the map, in which I…” Wilfred continues.
“I can’t um, no. Right, that’s it. Let’s leave.” The hatless person retrieved their hat as they decided that they should leave.
They all head off as Wilfred rambles away.
“And finally I found myself on the right path again with the first map but with this other weird map that I..” Wilfred stops speaking, once realising that they’ve gone.
“Oh? How rude!” Wilfred exclaims.
-> Inn_Options

*   E) Attempt to sit alone by the cracked window.
Wilfred sits down by a cracked windows. The table is filthy. The chair creaks and feels uncomfortable.
Boredom is a certainty.
-> Table_options

// if caused riot {  }
//	{   riotStarted == true:

//					}
+   F) Approach the hooded figure at the back, sitting alone.

// Maybe use the if statement here and if you have not caused the riot yet, then the hooded figure grumbles and you leave them alone, ELSE the bellow happens.

			{   riotStarted == false:
    The hooded figure grumbles as you approch, so you back away instead.
    -> Inn_Options
					- else: 
Before you’ve even said a word the hooded person speaks. “Ah, so it’s you, the little revolutionary.”
They gesture to the chair opposite them, in which Wilfred sits.
“I’m no revolutionary, I just want to get to the port.” Wilfred explains.
“The port?” The hooded figure is surprised. “Well well, interesting.” Their voice lowers on the last word.
Wilfred looks for an excuse to leave.
“I should probably..” Wilfred begins.
“Ah so you’ll need to head out through there.” They point at door just behind a table that was pushed up against it.
“Oh.” Wilfred starts to stand up.
The hooded one places their hand on Wilfred’s shoulder and pushes them back into their seat.
“No. Don’t be foolish. You need a distraction first.” They explain with a slightly irritated tone.
The hooded figure sighs. “So are you ready to go?”
->Hooded_Figure_Choices				    
					}

= Hooded_Figure_Choices

+   A) Leave the Inn through the front entrance.
->  Outside_The_Inn

+   B) Agree to the hooded figures plan.
->  Alley_behind_the_inn

=   Drink_choices

*   A) Order wine
	{   starting_money > 0:
	~ starting_money = starting_money - 1
	Upon ordering wine a grumbling sound came from the other customer, whom shook their head, while looking down at their pint.
					- else: 
				    Wilfred could not afford it.
					}

-> Inn_Options

*   B) Order brandy
	{   starting_money > 0:
	~ starting_money = starting_money - 1
		Wilfred paid for the brandy and was met by a tsk and quick look up at the ceiling from the other drinker at the bar. (NEEDS work)
							- else: 
				    Wilfred could not afford it.
					}
-> Inn_Options

*   C) Order beer
	{   starting_money > 0:
	~ starting_money = starting_money - 1
		Before the order was even fully made a surprised grunting sound could be heard  from other beer drinker at the bar, whom quickly looked back down at their brown pint the moment that Wilfred looked over at them. (NOT quite right)
								- else: 
				    Wilfred could not afford it.
					}
-> Inn_Options

*   D) Order mead
	{   starting_money > 0:
	~ starting_money = starting_money - 1
		Wilfred ordered a mug mead and an approving “hmmm” sound could be heard 	coming from the other drinker leaning against the bar. They gave a slight nod of approval before returning to glaring into their pint of brown.
								- else: 
				    Wilfred could not afford it.
					}
-> Inn_Options

=   Table_options

*   A) Flick a bit of the dirt off of the table.
	The dirt hits the floor with a thud that echoes in the silent inn. The room stirs slightly before returning to the graveyard like environment.
	Wilfred sighs at the boredom and decides to look for something else to do.
	-> Table_options

*   B) Put your feet up. //(STRIKE)
	“Oi, put your feet down!” The innkeeper shouts.
	Wilfred hurridly puts their feet down.
	After a short while they decide to get up and go do something else.
	        {   strikes < 3: 
    ~ strikes = strikes + 1
            -> Table_options
    - else: 
        -> Outside_Polidale_Fail_State   
    }

*   C) Lean back on the chair.
	While leaning back on the chair, Wilfred nodded off for just a second and fell back onto the 	floor.
	Now that Wilfred has failed at sitting down they decide to leave sitting down behind.
	-> Table_options

*   D) Get up and go do something else.
-> Inn_Options

=== Alley_behind_the_inn
LOCATION: Alley behind the Inn.

The late afternoon is giving way to the evening now. This alley was cold but seemed quite short as the end of it could be seen quite clearly. The ocean was so close now.
Wilfreds mood raises in this moment, even in the dark gloom of this empty alley and the pungent smell of rotting food and discarded rubbish.
(Maybe write more here.)

+   A) Walk down the alley.
-> Smugglers_Dock

=== Smugglers_Dock
LOCATION: Smugglers Dock (Come up with a better name you lazy fuck)

Now Wilfred stands before a small dock with a smaller ship (what type) docked in place, away from the main port. It’s difficult to see the entire port from here but it’s better than nothing. The grand scale of the place was still perceivable from here. Beyond this Wilfred could see the flotilla of fishing boats, Carracks, canal boats, house boats, ramshackle ruined boats and even a mighty galleon.
“It’s odd to see such a big naval vessel here in the free trade town of Polidale?” (may reword this) Wilfred wondered.

Footsteps could be heard running towards the small dock. Calls of ‘Stop’ and ‘Die Scum’. All very serious. Wilfred however, is dreaming about sailing one of those massive ships.
Further chaos erupts in the alley as swords are clashing, arrows flying, people yelping. 
“Ah what a world away those dreams are.” Wilfred sighs and starts to turn away smiling, before three people leap onto the small boat he stands before, pulling him along with them.
“Cast off! Now!” one of them calls.
Another kicks the plank away and soon the boat starts to move.
Wilfred stands up, only to slip and knock himself out, bashing into a barrel of fish on the ship. Arrows continue to fly, gunpowder was being readied as the hooded figure from before shoots back with a pistol.
“We shall never surrender to you!” He stands proudly as Wilfred starts to lose consciousness and the boat fully escapes their range.
“But I don’t want to rebe….” Wilfred mumbles.
“Ah my friend, you don’t look your best but worry not we are free now. Haha and this is all thanks t….?”
Wilfred drifts into unconsciousness.
And thus off they go, into the distance of the wide open sea with Wilfred unconscious, thoroughly missing out on their very first voyage.

ROLL CREDITS!


-> END