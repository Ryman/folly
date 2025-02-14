"Welcome to Folly" by "Ben Kirwin"

The story headline is "An Interactive Tutorial".
The release number is 1.
The story description is "An introduction to Folly, the handwritten Z-machine for the reMarkable tablet."
The story creation year is 2022.

Include Basic Screen Effects by Emily Short.
Include Basic Help Menu by Emily Short.

[
Things to teach the user:
- Swipe left and right to turn the page
- Write on the line to provide inputs normally
- Tap 'space' when the game says to press space or any key
- Navigate menus
- Open the keyboard 
- Save and restore
]

When play begins:
	Say "[italic type]Welcome to Folly - an interactive fiction interpreter for the reMarkable tablet.[paragraph break]The Z-machine was designed by Infocom in the 1970s, designed specifically for interactive fiction games. Thousands of games have been released in this format, and the interpreters you need to play them have been written for almost every sort of computer... including the one in your hands now.[paragraph break]These games were designed to be played sitting at a computer and typing on a keyboard, but you'll be playing them by handwriting on a tablet. Even experienced interactive fiction players may need some help to get used to this! This tutorial is a simple game meant to introduce you to Folly's features, along with the basic mechanics of playing a game. Tutorial messages, like this one, are written in italics.[paragraph break]Instead of an infinite scroll of text, Folly's output is broken up into pages. The current page number is on the bottom, and the small > next to it means that there are more pages after the current one. Swipe right-to-left when you're ready to flip to the next page, or the other way to flip back.[roman type][paragraph break]"

Table of Things to Do
Status	Introduction	Instruction	Congratulation	Explained
"Command Input"	"In Folly, you give the game commands by handwriting them next to a '>' prompt, on a line like the one at the end of the text below. The game will respond within a second or so once you've lifted your pen away from the screen.[paragraph break]Folly understands most people's handwriting fairly well, but it's not perfect; make sure you print your instructions clearly in lowercase. (If you're really having trouble, tap the little keyboard icon next to the prompt to bring up an onscreen keyboard.) Let's start by examining that mysterious sign..."	"Write 'examine sign' on the input line below."	"Nice work! You'll notice that the prompt and your handwriting is still visible above, but the input line is gone. You can't go back and change your old commands, but it can be useful to go back and reread them to remind yourself of what you've already tried."		false
"Menus and Help"	"Many interactive fiction games contain a help menu. Menus are currently a bit awkward in Folly, since they were designed for keyboard navigation; you'll need to use an onscreen keyboard for them. This game's help menu holds general tips for playing IF; you won't need them for this tutorial, but they're useful to know for other games."	"Write 'help' at the prompt, then use the onscreen keyboard to navigate the help menu."	"Congratulations... you've survived a menu! If you ever want to revisit the help information, just write 'help' at the prompt again."	false
"Saving"	"Along with in-game commands like 'get' and 'look', interactive fictions also support meta-commands like 'save', 'restore', and 'quit'. You run these commands just like any other: by writing them next to the prompt. Folly has special support for saving and restoring the game, so let's try those out first."	"Write 'save' at the prompt below."	"Game saved! Folly records the contents of the status line along with the save, to help recognize it later on."	false
"Restoring"	"We've saved the game, so let's try restoring it."	"Write 'restore' at the prompt below, then select the game you saved earlier from the list."	"Game restored!"	false
"Quitting"	"The last important meta-command is 'quit', which exits the game and dumps you back to the main menu... useful if you'd like to play another game instead."	"Write 'quit' at the prompt below."	"That's it! If you're an experienced interactive fiction player, you've learned everything you need to know. If you're still learning, you may want to try a game like Emily Short's [bold type]Bronze[roman type][italic type] to learn more of the usual commands and how the world works."	false


N is a number that varies. N is 1.

Before reading a command:
    If N is greater than the number of rows in the Table of Things to Do, continue the action;
	Choose row N in the Table of Things to Do;
	now the right hand status line is "[Status entry]";
	If Explained entry is false, say "[italic type][Introduction entry][roman type][paragraph break]";
	Now Explained entry is true;
	Say "[italic type][Instruction entry][roman type]".	
	
To say status-entry:
	choose row N in the Table of Things to Do;
	say "[Status entry]".
	
To advance the tutorial:
	if N is greater than the number of rows in the Table of Things to Do, continue the action;
	choose row N in the Table of Things to Do;
	Say "[italic type][Congratulation entry][roman type][paragraph break]";
	Increase N by 1;
	if N is at most the number of rows in the Table of Things to Do:
		choose row N in the Table of Things to Do;
		if N is greater than 2, say "The sign once again flashes, contorts, and settles on '[Status entry].'"
	
The help request rule is not listed in any rulebook.

Carry out asking for help:
	now the current menu is the Table of Instruction Options;
	carry out the displaying activity;
	clear the screen;
	if N is 2, advance the tutorial;
	stop the action.
	
After printing a parser error:
    Say "[line break][italic type]Your command was recognized as [roman type][bold type][the player's command][roman type][italic type]. If that's not what you wrote, that means Folly[italic type] couldn't understand your handwriting properly. Make sure you're writing your command clearly on the line; printed, unabbreviated, lowercase commands tend to work best. You could also enter the command using the on-screen keyboard... just tap the keyboard icon in the margin, type your command on the keyboard that appears, and hit enter.[paragraph break]".

The description of the player is "Bright-eyed and eager to learn."

Tutorial room is a room. "You find yourself in a vast, featureless, white expanse, stretching as far as you can see in every direction."

The neon sign is here. "Well, not entirely featureless... a neon sign lies just ahead, blinking against the void." The description is "An ordinary neon sign, red, slowly blinking on and off, and unconnected to any power source you can see. It currently reads '[status-entry].'" The sign is fixed in place. The sign is an enterable supporter. Instead of tasting the sign, say "Delicious but unsatisfying."

Instead of going a direction (called way):
	say "You walk [way] for a bit, but seem to end up right where you started."

After examining the sign for the first time:
	Advance the tutorial;
	say "As you inspect the sign, the text briefly flashes green, then contorts itself into a new phrase: 'Pressing a Key'.[paragraph break][italic type]Aside from normal, handwritten commands, games may also wait for a single keypress at a time. This is mostly used to ask the user to 'press any key' to pace out long sections of text, like it is just below. In that case, you can just hit the 'space' key that will appear in the middle of your screen. (Otherwise, tap the keyboard icon in the margin to open a full keyboard.)[roman type][paragraph break][bracket]Press any key to continue.[close bracket]";
	now the right hand status line is "Pressing a Key";
	redraw status line;
	wait for any key;
	say "[paragraph break]The sign blinks green and twists again, now reading '[status-entry].'[paragraph break]".

Report saving the game:
	[This triggers on save-failed, which I would fix if saves didn't always succeed on the device.]
	if N is 3, advance the tutorial;
	continue the action.
		
The restore the game rule response (B) is "[post-restore]"

To say post-restore:
	if N is 3, now N is 4;
	if N is 4:
		advance the tutorial;
	otherwise:
		say "Ok."
	
Carry out quitting the game:
	if N is 5, advance the tutorial;
	continue the action.

[Try and get 'hop' out of the dictionary.]
Understand the command "hop" as something new.

		
