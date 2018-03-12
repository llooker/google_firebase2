# Firebase Block

The firebase block is essententially sessionized event data.  Each session has attributes about the user
at the point in time of the start of the session and an array of events that occured during that session.

Users have have arbitrary properties store in user_properties.

Each event has a 'name' and the name is assigned by the firebase application.

Each event of a given name has params.  Params are named and typed by the firebase application.


# Installing the Block

blah<>blah<


# Files

* `README` - This file.
* `firebase.model.lkml` - edit this file to point to your connection and source data
* `FIREBASE_BLOCK.view.lkml` - the firebase block itself. DO NOT EDIT
* `events_generated.view.lkml` - Automatically generate this file using the technique below.


# Automatically Building Lookml

This model contans a way to generate LookML code dynamically for the structure of the data in the database.
Once you have the firebase model configured.

## 1. Goto the following link

### [Generate LookML Code For Events](/explore/firebase/events_lookml?fields=events_lookml.lookml)

### [Generate LookML Code For Users](/explore/firebase/user_lookml?fields=user_lookml.lookml)

## 2. Copy and Paste the the output the contents of the measure into the `events_generated` view in `events_generated.view.lkml`

You should now be able to explore all the events.
