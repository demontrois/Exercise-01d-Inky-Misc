/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night

-> seashore

== seashore ==
You are sitting on the beach. 

It is { advance_time()}


+ [Stroll down the beach] -> beach2 


== beach2 ==
This is further down the beach. 




It is { advance_time() }
* { time == 1 }  [Pick up some seashells] -> shells
+ [Stroll back up the beach] -> seashore


== shells ==
You pick up the shells. Inside one of the shells, you find a crab. 
* [Keep it]

You kept the crab. It repeatedly snips at you, but you think you both can become pretty good friends. -> water

* [Put it back]



== water ==

As you get closer to the water, more shells appear. 
* [ Look for more crabby friends]

Well, you found what you were looking for. Tons on tons of little angry crabs marched their way to you. -> crab_conquerers

* [Continue down the beach]

-> beach2


== crab_conquerers ==

They raced up your body, leaving small pinches all over your extremties!

*[ Flail and scream]

When you screamed, you opened your mouth so wide, that a came into your mouth and used you as a bigger shell. 

-> END


*[Run into the ocean]

You ran into the ocean and became swallowed up by the large waves -> under_water

->END

== under_water ==

The waves guided you to an underwater cave, in which the crabs created their kingdom. They kept you as slave, forced to forever find shells for them as they continue to molt. 

-> END



== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
