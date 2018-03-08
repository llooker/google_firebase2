# Firebase Block

The firebase block is essententially sessionized event data.  Each session has attributes about the user
at the point in time of the start of the session and an array of events that occured during that session.

Users have have arbitrary properties store in user_properties.

Each event has a 'name' and the name is assigned by the firebase application.

Each event of a given name has params.  Params are named and typed by the firebase application.


# Installing the Block

blah<>blah<

Do not edit the file `FIREBASE_BLOCK.view.lkml`.  Periodically we will be updating the block.  All changes will
be in this file.


# Files

* `firebase.model.lkml` - edit this file to point to your connection and source data
* `events.view.lkml` - edit this file to represent the events in your dataset
* `users.view.lkml` - edit this file to represent user properties in your dataset.
* `sessions.view.lkml` - edit this file to have custom dimensions and measures for properties in your dataset.

# Automatically Building `events.view.lkml`.

This model contans a way to generate LookML code dynamically for the structure of the data in the database.
Once you have the firebase model configured.

### 1. Goto the following link (replace the hostname with the appropriate value)

  https://master.dev.looker.com/explore/firebase/lookml?fields=lookml.lookml

### 2. Copy and Paste the the output the contents of the field 'lookml' into the events view in `events.view.lkml`

You should now be able to explore all the events.
