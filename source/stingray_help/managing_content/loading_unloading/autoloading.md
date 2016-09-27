# Loading resources automatically

While you are developing your game, you will frequently need to add and remove content in your source data folder. This may make it inconvenient to maintain up-to-date package definitions. There are two ways you can configure Stingray to load the resources you need without having to modify your package definitions each time you add or remove a resource in the project.

## Using wildcards in package definitions

You can use the `*` character as a wildcard in your package definitions. When you load the package into the game, all resources that match the specified string get loaded.

The template projects supplied with Stingray all use this approach to add all resources in the game project into the boot package.

See also ~{ Defining resource packages }~.

## Using auto-load mode

In auto-load mode, whenever Stingray needs a resource that isn't already loaded into the game, it automatically loads that resource.

Auto-load mode is used by the engine that runs inside the Stingray Editor. The Editor never uses resource packages to load and unload content that it shows while you are editing your levels. Auto-load mode is also used by default when you use **Test Level (F8)** function from the Editor.

You may want to enable this same auto-loading mode when you use **Run Project** and when you deploy your game. Using auto-loading almost completely bypasses the package system. However, since auto-load is enabled and disabled through the Lua API (see below), you still have to make sure that your boot package and *settings.ini* are configured to load and run the script in which you activate auto-loading before any other resources are needed.

Auto-loading has the following restrictions, which make it suitable for use only while developing your game:

-	It requires that your resources be available in separate files on disk. Therefore it can only be used with compiled data, not bundled data.
-	There is no way to unload auto-loaded resources. Therefore, for any moderately complex game, you are likely to run out of memory eventually over the course of your game.

To activate auto-load mode in your game, call:

~~~{lua}
stingray.Application.set_autoload_enabled(true)
~~~