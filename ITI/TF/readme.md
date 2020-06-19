## Overview

This folder holds the working copy of the ITI Technical Framework Revision 16.0 – Final Text converted to HTML pages generated from the initial word files.

index.html in this folder itemizes the content much like the table-of-content supports Volume today

## Conversion

The conversion is a multi step process consisting of the following steps:
* convert the original word files with online tool https://www.aconvert.com/document/pages-to-doc/ 
* run the java processing code, which:
  * repairs XHTML errors to be able to parse with standard XML DOM parser
  * parses to DOM and repairs messy HTML structures produced by pandoc conversion
  * performs some reformatting
  * produces the table of content of the volumes
* run the indexer, which
  * replaces references by text (e.g. ITI TF-2a 2.3.4.5) to HTML links across the volumes

## Issues solved:
* removed empty \<span/\> elements 
* removed empty \<a/\> elements
* split files for volume 1
* split files for volume 2a
* split files for volume 2b
* split files for volume 2x
* split files for volume 3
* added generated images
* create index file 
* create toc file
* fixed conversion of text references to links


## Open issues:
* some subsection in appendix are p elements and do not show up in the toc (see vol 1 appendix M): 

* level 7 and 8 subsections do not show up in the toc

	\<p xmlns="" style="margin-top:12pt; margin-bottom:3pt; page-break-after:avoid; font-size:12pt"\>
      \<span style="font-family:Arial; font-weight:bold"\>3.40.4.1.2.2.1\</span\>
      \<span style="font-family:Arial; font-weight:bold"\>Patient Identifier Attribute\</span\>
	\</p\>

	or in 2b ITI-40: 
	
	\<p xmlns=""\>
      \<span style="font-family:Arial; font-weight:bold"\>3.40.4.1.2.3.1 ATNA encoding of PurposeOfUse\</span\>
    \</p\>

* many unnecessary style settings like 

   \<span style="font-family:'Times New Roman'"\>
   \<li style="margin-top:6pt; margin-left:32pt; padding-left:4pt; font-family:'Times New Roman'; font-size:12pt"\>
   \<p style="margin-top:6pt; margin-bottom:0pt; font-size:12pt"\>

* some header use super tiny font 7pt and must be repaired

### Java processing code
Initial conversion is done with online conversion tool: 
https://www.aconvert.com/document/pages-to-doc/ 

The processing is done afterwards and contains of: 
* some cleanup to simplify the generated HTML 
* splitting 
* indexing to replace text references with HTML links 
 
### Word issues: 
* Nothing, so far 

### Styling
- Not defined yet

## Future
- Not defined yet
