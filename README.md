
# publications
This repository is an experimental project by ITI to work toward publication of Final Text Technical Framework using HTML.

browser ready version can be seen using the "pages site" feature of github at http://ihe.github.io/publications

## Scope

Publish the ITI Final Text Technical Framework in an html way that is equivilant to better than current PDF.

The scope does not today, but will eventually, address 
* how Profiles that are published using the IG Publisher are represented as standalone (Trial Implementation), and integrated (Final Text)
* how supplements are displayed (PDF or otherwise)
* include all domains publications. for now PCC is prototyped into this repo

# Done
* Decided to use HTML as the format we use and expect to edits
  * Current Final Text Technical Framework broken down for each Volume
* Scripts preserved for the breakdown process so that other domains can use the same process, and so that supplements can leverage

# ToDo
each todo should have atleast one github issue and atleast one owner
* CSS style applied to all publications
* Documentation on how to convert an integrate a classic supplement
* Documentation on how to convert and integrate an IG Published supplement
* Documentation on how to make minor edits
* Documentation on how to make major changes to Tables, given that html tables are not easy to manipulate
* Need a method for supporting image formats that are editable, with html friendly (svg, png) format used by html. Likely a sub-folder that holds the source, such as a standalone doc holding only the word-draw, or standalone ppt holding the powerpoint, or other acceptable format. Need defined acceptable formats. Can we automatically convert? Or is it acceptable to require user that is editing the object to create the web friendly output and check both in?
  * is emf or wmf an acceptable editable format? It is not browser friendly.
* Need rules that github can check a pull-request (webhook) to validate that the content is using the constrained html that we want. For example look for word metadata in the xml, or style, or advanced features; as we don't want that.
* List indent problems
* List numbering problems
* How is the home page index.html managed? 
* What are the publication steps and who is responsible for those steps
  * approval of pull requests
  * move from github to IHE defined publication site (likely a S3 bucket)
  * fixup URL redirects as necessary?
 


