# Fantod Deck

#### An Epicodus Group project in CSharp and CSS, 06.22.17

#### **By Anabel Ramirez**

## Description

This web application plays the fortune telling tarot deck known as the Fantod Deck created by Edward Gorey.

|Behavior| Input |Output|
|---|:---:|:---:|
|Have a deck of 20 named cards. |The Sea, The Limb, The Stones, The Ancestor, The Waltzing Mouse, The Ecorche, The Plant, The Effigy, The Child, The Feather, The Bottle, The Burning Head, The Ladder, The Bundle, The Insects, The Urn, The Yellow Bird, The Black Doll|The Sea, The Limb, The Stones, The Ancestor, The Waltzing Mouse, The Ecorche, The Plant, The Effigy, The Child, The Feather, The Bottle, The Burning Head, The Ladder, The Bundle, The Insects, The Urn, The Yellow Bird, The Black Doll |
|Have a set of divinations per card.|Card: The Sea| Divinations: January, loss of ears, an accident in an elevator, cracks, false affection, vapors, a secret enemy, misdirection, demons, estrangement, chagrin |
|Allow player to pull five cards from the deck. |Click deck|Deck generates five random cards. |
|Places five cards in a tarot reading cross. |cards selected|cards fill the cross formation for a reading |
|Return a random divination from one word or phrase per card in order of placement. |The Sea, The Limb, The Effigy, The Stones, The Plant |A secret enemy - broken promises - August - strife - tics |


## Setup/Installation Requirements

Must have current version of .Net and Mono installed. Will require database file to work correctly, see download instructions below.

Copy all files and folders to your desktop or {git clone} the project using this link <----addgithub link here--->.

Navigate to the folder in your Windows powershell and run {dnu restore} to compile the file then run {dnx kestrel} to start the web server. In your web browser address bar, navigate to {//localhost:5004} to get to the home page.

## Known Bugs

* bugs go here

## Support and contact details

If you have any issues or have questions, ideas, concerns, or contributions please contact any of the contributors through Github.

## Technologies Used

* C#
* Nancy
* Razor
* xUnit
* JSON
* HTML
* CSS
* Bootstrap

### License
This software is licensed under the MIT license.

Copyright (c) 2017 **Anabel Ramirez**
