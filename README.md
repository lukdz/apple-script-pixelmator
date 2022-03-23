# Automating Pixelmator Pro using AppleScript

Collection of scripts for batch processing of images in the Pixelmator Pro application using AppleScript.

## Usage

### From Terminal:

```bash
cd apple-script-pixelmator
osascript negatives-black-and-white.applescript 
# In the Finder pop-up window select source and destination
```

### From GUI using [Script menu](http://userautomation.com/script-menu.html):

- Setup:
   - Open `AppleScript Editor` application, select `Preferences…` and check box `Show Script menu in menu bar`
   - In `Terminal` application
        ```bash
        cd apple-script-pixelmator
        ln -s ${PWD} ~/Library/Scripts/apple-script-pixelmator
        ```
- Usage
    
    From `menu bar` top right of the screan select 
`Scripts/apple-script-pixelmator/negatives-black-and-white`.
In the Finder pop-up window select source and destination

## Scripts description

| Script name                           | Description                                                   |
| ------------------------------------- | ------------------------------------------------------------- |
| negatives-black-and-white.applescript | invert colors, flip, make black&white and apply basic filters |
| photos-color.applescript              | apply basic filters                                           |

# External links
- [Advanced automation and scripting with AppleScript](https://www.pixelmator.com/tutorials/resources/advanced-automation-and-scripting-with-applescript/)
in the comments code by [Andrius](https://www.pixelmator.com/tutorials/resources/advanced-automation-and-scripting-with-applescript/#:~:text=a%20production%20tool.-,Andrius,-I%20sent%20this) which was used as a base for scripts
- [AppleScript Language Guide](https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/conceptual/ASLR_lexical_conventions.html)
- [The AppleScript comment syntax](https://alvinalexander.com/blog/post/mac-os-x/applescript-use-comments/)
