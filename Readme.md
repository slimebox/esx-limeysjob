
# This is a job for the Limeys MLO, converted to use ESX.
> (https://www.gta5-mods.com/maps/mlo-limeys-juice-bar-fivem-add-on-sp)


## Dependencies:

ESX Legacy

PolyZone - https://github.com/mkafrin/PolyZone

ox-target - https://github.com/overextended/ox-target

ox-lib - https://github.com/overextended/ox-lib

## Insert into ox-inventory/data/items.lua 
	
	--drinks
    ['limeysdonut'] 				 	 = {['name'] = 'limeysdonut', 			  	  	['label'] = 'Strawberry Donut', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'limeysdonut2.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Strawberry Donut!'},
    ['limeysdonut2'] 				 	 = {['name'] = 'limeysdonut2', 			  	  	['label'] = 'Chocolate Donut', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'limeysdonut2.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Chocolate Donut!'},
    ['limeysgum'] 				 	 = {['name'] = 'limeysgum', 			  	  	['label'] = 'Trident Gum', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'limeysgum.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Chewy! Minty! Fresh!'},
    ['limeyschocolate'] 				 	 = {['name'] = 'limeyschocolate', 			  	  	['label'] = 'Nestle Extrafino Chocolate', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'limeyschocolate.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Mmmmmm Chocolate!'},
    ['limeyschocolate2'] 				 	 = {['name'] = 'limeyschocolate2', 			  	  	['label'] = 'Cadbury Dairy Milk Chocolate', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'limeyschocolate2.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cadbury Chocolate!'},
	['cherrydrink'] 				 	 = {['name'] = 'cherrydrink', 			  	  	['label'] = 'Cherry Drink', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cherrydrink.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cherries!'},
	['lemondrink'] 				 	 = {['name'] = 'lemondrink', 			  	     	['label'] = 'Lemon Drink', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lemondrink.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Rip-off Lemonade'},
	['limedrink'] 				 	 = {['name'] = 'limedrink', 			  	     	['label'] = 'Lime Drink', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'limedrink.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Limes...'},
	['orangedrink'] 				 	 = {['name'] = 'orangedrink', 			     	['label'] = 'Orange Drink', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'orangedrink.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fancy orange juice...'},
	['watermelondrink'] 				 	 = {['name'] = 'watermelondrink', 			  	    	['label'] = 'Watermelon Drink', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'watermelondrink.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Watermelon Drink.'},
	['paradisecocktail'] 				     	 = {['name'] = 'paradisecocktail', 			    	  	['label'] = 'Paradise Cocktail', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'paradisecocktail.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Living in paradise!'},
	['cherrycocktail'] 				     	 = {['name'] = 'cherrycocktail', 			    	  	['label'] = 'Cherry Cocktail', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cherrycocktail.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cherries.. But with whiskey'},
	['applecocktail'] 				     	 = {['name'] = 'applecocktail', 			    	  	['label'] = 'Apple Cocktail', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'applecocktail.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Rumor has it that Issac Newton made this.'},
	['bananacocktail'] 				     	 = {['name'] = 'bananacocktail', 			    	  	['label'] = 'Banana Cocktail', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bananacocktail.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'The Minions made this.'},
	['kiwicocktail'] 				     	 = {['name'] = 'kiwicocktail', 			    	  	['label'] = 'Kiwi Cocktail', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'kiwicocktail.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Kiwi.'},
	['drink-glass'] 				 = {['name'] = 'drink-glass', 			  	  	['label'] = 'Glass', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'drink-glass.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Glass made for normal drinks'},
	['cocktailglass'] 				 = {['name'] = 'cocktailglass', 			  	  	['label'] = 'Cocktail Glass', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cocktailglass.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Glass made for cocktails!'},
	['apple'] 		    	 = {['name'] = 'apple', 			   	['label'] = 'Apple',               	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'apple.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'an ingredient!'},
	['banana'] 		    	 = {['name'] = 'banana', 			   	['label'] = 'Banana',               	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'banana.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'an ingredient!'},
	['cherry'] 		    	 = {['name'] = 'cherry', 			   	['label'] = 'Cherry',               	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cherry.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'an ingredient!'},
	['kiwi'] 		    	 = {['name'] = 'kiwi', 			   	['label'] = 'Kiwi',               	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'kiwi.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'an ingredient!'},
	['lemon'] 		    	 = {['name'] = 'lemon', 			   	['label'] = 'Lemon',               	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lemon.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'an ingredient!'},
	['lime'] 		    	 = {['name'] = 'lime', 			   	['label'] = 'Lime',               	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lime.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'an ingredient!'},
	['orange'] 		    	 = {['name'] = 'orange', 			   	['label'] = 'Orange',               	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'orange.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'an ingredient!'},
	['watermelon'] 		    	 = {['name'] = 'watermelon', 			   	['label'] = 'Watermelon',               	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'watermelon.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'a sliceable watermelon!'},
	['whiskey'] 		    	 = {['name'] = 'whiskey', 			   	['label'] = 'Whiskey',               	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'whiskey.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'This is not a bottle of booze!'},
	['watermelonslice'] 		    	 = {['name'] = 'watermelonslice', 			   	['label'] = 'Watermelon Slice',               	['weight'] = 200, 		['type'] = 'item', 		['image'] = 'watermelonslice.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'an ingredient!'},

}

```

## Insert Contents of @limeysjob/Images into @ox-inventory/web/images

## Job Database
TODO: Write a SQL file for import

For now, add an entry to the jobs table with the values ('limeys', 'Limey\'s Juice Bar', 0) and four entries into job_grades:
(<id>, 'limeys', 0, 'trainee', 'Trainee', 150, '{}', '{}'),
(<id>, 'limeys', 1, 'worker', 'Worker', 300, '{}', '{}'),
(<id>, 'limeys', 2, 'manager', 'Manager', 500, '{}', '{}'),
(<id>, 'limeys', 3, 'owner', 'Owner', 800, '{}', '{}')

