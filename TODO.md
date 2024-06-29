# TODO

- Modify the color inversion of the settings menu so that icon image is also inverted - possible ways:
  - two versions of image - one normal / one inverted
  - if can svg, try color "white" / "black" as suggested in a post here https://stackoverflow.com/questions/16839198/qml-change-image-color
- implement temperature units along with degree C / degree F
- implement scheduling interface
- implement network / wifi settings
- consider adding ip address / hostname to bottom of homescreen
- consider using stackView for homescreen so the transition is consistent
- create hvac system that responds to the state and targetTemp and alters currentTemp
- add outside temp also and use that along with sort lapse rates - on for how much the temp will change to the outside temp and the other on how the cabin temp will change to the target temp. 
 - add code to get current location
 - use current location to look up current temp
 - use those grovee temp sensors for currentTemp maybe ? add bluetooth settings / temperature sensor select/settings
