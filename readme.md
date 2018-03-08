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

  https://master.dev.looker.com/explore/firebase/sessions_debug?fields=event_parameters.lookml


### 2. Save the file to your local drive as a CSV.
Suggested name is firebase_events.csv


### 3. Run the following command from a unix shell.

This command will eliminate the header and remove the quotes from the CSV output.

```
 tail -n +2 firebase_events.csv | sed -e 's/\"//g'
```

### 4. Cut and Paste the the output dimensions into the events view in `events.view.lkml`

You should now be able to explore all the event.
