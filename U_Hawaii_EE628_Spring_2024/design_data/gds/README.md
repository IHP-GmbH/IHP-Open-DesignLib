# Design data status summary

* Final layout in `gds` folder (top cell: UHEE628_S2024)
* Includes the latest seal ring, but we are providing the fill cell as a separate file (UHEE628_S2024_FILL, not instantiated in the top layout). IHP can either use this cell or apply the in-house fill script.
* LVS clean
* DRC mostly clean (using `sg-13g2-maximal`)
  * Pad.kR: TopVia2 under Pad not allowed (Note 3)
    * This is the pad provided by IHP, please waive
  * Pad.d1R: Min. recommended Pad to Activ (inside chip area) space
    * Please waive this one as well
  * All remaining errors are density related (addressed by fill cell)