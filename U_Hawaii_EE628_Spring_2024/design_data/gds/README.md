# Design data status summary

* Near-final layout in `gds` folder
  * Changed from oas to gds file format
  * Updated fill patterning to <5um
  * LVS clean
  * DRC clean using `sg13g2-minimal` rule deck
  * DRC using `sg-13g2-maximal` reveals many errors. Need to assess which ones can potentially be waived.
    * Off-grid errors, via enclosure errors, ...