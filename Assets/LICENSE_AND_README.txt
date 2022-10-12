
/******************************************\
/  Winter Resort Simulator - Modding SDK   \
/******************************************\

README FILE - Table of contents
1) License
2) Readme - important notes
3) Installation and Tutorials

Long story short: Check out this page for the installation instructions:
https://wiki.hr-innoways.com/modding:tutorials:sdk-installation


-------------------------------------------
    PART 1 - LICENSE
-------------------------------------------

Copyright (C) HR Innoways GmbH, 2020. All Rights Reserved.

You may use all scripts and contents of this modding SDK for creating
mods (i.e. content that is added to Winter Resort Simulator) in the form of
Unity asset bundles (*.unity3d-files).

Any use exceeding this regulation (such as use in standalone builds) is
forbidden.

-------------------------------------------
Deutsche Lizenz:

Die Scripte und Inhalte dieses Modding SDKs dürfen für die Erstellung von Mods
für den Winter Resort Simulator verwendet werden (also für Inhalte, die dem
Spiel in Form von Unity Asset Bundles hinzugefügt werden, also als *.unity3d-Dateien).

Jede anderweitige Verwendung (wie z.B. in eigenständigen Projekten) ist
nicht gestattet.

-------------------------------------------

Please note the following copyright:
The lua icon used in this SDK (Gizmos/LuaAsset Icon.png) was originally
created by Papirus Development Team.
Please see https://icon-icons.com/de/symbol/text-lua/92745#512 regarding
the licensing terms.


-------------------------------------------
    PART 2 - README - IMPORTANT NOTES
-------------------------------------------

Please check out our WIKI!
https://wiki.hr-innoways.com

You will find many tutorials and other explanations there.

Please make sure to use the Unity Editor 2019.1.14f1.
You can download the setup file from here:
https://unity3d.com/get-unity/download/archive

Also make sure you are using the latest version of the modding SDK!

Do NOT modify or rename any scripts or files (otherwise the game will not be able to
recognise your mod asset bundle).

In case you need any support, please contact us on
the official WRS discord within the modding section:
https://discordapp.com/invite/Z4qJV6K

Some technical notes: (will not be relevant for most users)
 -	If you add some content to the game using a contentName of "mycontent"
	in a mod called "mymod.unity3d", the in-game contentName will be
	"mods.mymod.mycontent". Use the prefix mod along with your mod's filename
	for mod-internal cross references (e.g. a ropeway that references to a carrier).

 -	.blend files will automatically be imported if they are put into the
	Assets directory of this project (no need to convert them to fbx)

 -	You can implement new Editor scripts (such as asset importers), however
	it is not possible to add new C# features to the game.

 -	Please use lua code for script mods.
 -	It is possible to add a new UI canvas/UI elements to the game.
 -	It is also possible to add touchscreens/etc. using a UI canvas and a RenderTexture.

 -	We are using the built-in rendering pipeline (Deferred Rendering).

 -	Custom shaders for objects are possible. However, currently
	we do not support modded compute shaders.

 -	There is no support for modded compute shaders.


-------------------------------------------
    PART 3 - INSTALLATION AND TUTORIALS
-------------------------------------------

Please follow the steps on this page: https://wiki.hr-innoways.com/modding:tutorials:sdk-installation

The wiki also contains some explanation of how modding works, as well as the official
WRS script documentation, which even includes parts of the game's source code.


In case you need any support, feel free to join our discord server: https://discordapp.com/invite/Z4qJV6K


Have a great time!