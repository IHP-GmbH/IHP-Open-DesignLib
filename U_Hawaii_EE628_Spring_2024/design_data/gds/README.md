# Design data status summary

* Near-final layout in `gds` folder
  * Updated seal ring  
  * Simplified a polygon that gave "non-orientable" error at IHP
  * LVS clean
  * DRC clean using `sg13g2-minimal` rule deck
  * DRC using `sg-13g2-maximal` reveals many errors. Need to assess which ones can potentially be waived.
    * Off-grid errors, via enclosure errors, ...  
