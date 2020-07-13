
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
* the HTML converted from word has strange sequences of SPAN elements with equal styling.
	Added processing code to merge these sequences to a single SPAN element.
* cleared styling of table, TD and IMG elements
* removed unnecessary DIV elements
* replaced DIV with table content, if the DIV only contains the table
* replaced P with image content, if the P only contains the IMG
* removed all inline styling of images
* simplified inline style of TD and TABLE elements 
* simplified all P elements which have only 1 SPAN element without style setting.
* iterated all figure and table captions and add a class for them, to be styled in CSS file      
* set class in TD elements with THEAD parents to allow global styling
* remove inline style of TD tags (with P children)
* level 7 and 8 subsections show up in the toc, index and references (html links)
* removed inline style of lists and replaced by classes 

## Open issues:
* remove inline style of A HREF tags


### Java processing code
Initial conversion is done with online conversion tool:
https://www.aconvert.com/document/pages-to-doc/

The processing is done afterwards and contains of:
* cleanup to simplify the generated HTML
* splitting to sections
* indexing to replace text references with HTML links
* cleaning inline styling to be able to use global CSS

### Word issues:
* some lists have unusual indent (see Vol1 10.2.9 for example)
* XML Code Listing shall be harmonized: all listings shall have a frame like in 3.40.4.1.2.2.1
* Volume 2 b, ITI-40 has and bold/underline text. 
* Volume 1, Section 4, EUA has bold/italic text.
* the HTML converted from word contains all images but in low resolution. These must be replaced by higher resolution images.
* some word drawings are not converted properly (see Figure 27.3.2.1-1)
* 
 
### Styling
- Not defined yet

## Future
- Not defined yet
