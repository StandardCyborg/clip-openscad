# clip-openscad
OpenSCAD parametric CAD models for clips. For the clip STLs in `mirror-clip`, they go through FreeCAD for filleting before release.

The public repo is called [mirror-clip](https://github.com/StandardCyborg/mirror-clip/).

## Folder Overview
- **Components**: Generic functions used by all clips
- **Dimensions**: Dimensions specific to each clip, these are pulled from Apple's [Accessory Design Guidelines](https://developer.apple.com/accessories/Accessory-Design-Guidelines.pdf)
- **Archive**: what it sounds like, ignore

## Adding a new clip
1. Copy and paste a phone dimensions `.scad` and rename, for example, copy and paste `xs-dimensions.scad` and rename to `thirteen-dimensions.scad`
2. Open up your new file and rename the prefixes throughout the file, in this case update `xs__` to `thirteen__`. Don't use numerals.
3. Open `clip-general.scad` and make sure to include your new file, for example: `include <dimensions/thirteen-dimensions.scad>;`
4. In `clip-general.scad` , Copy and paste a translate block and then rename all the variables with your new prefix. Don't update variables that do not have a prefix (`clip_length`, `cutout_width`, `cutout_length`).
5. Comment out all versions you don't want to render by using `//`
6. Open `clip-general.scad` in [OpenSCAD](https://www.openscad.org/) and run Design -> Preview.
7. You should see your clip.
8. To see it on the phone, open `components/assembly.scad` and then uncomment the `phone()` at the bottom.

## Critical Dimensions to gather from the Accessory Design Guidelines
*All in mm*. It can be a bit tricky to read these from the CAD diagrams.

#### Device
1. Device length
2. Device width
3. Device thickness
4. Set `--__rounded_corners` to true for iPhones, false for iPads

#### Camera bump
1. Bump width
2. Bump length
3. Bump thickness

#### TrueDepth Placement
1. Trudepth offset: likely just leave this at 0

All other dimensions are generated for you. As you can see there are a fair number of "magic numbers" from experimetation.

## Testing your clip
The clip is designed to be not too loose and not too tight. This means that tolerances are *very* stringent and we expect some experimentation/iteration to be required to dial it in. Even variability within a printing method can be troublesome and needs to be accounted for. For example, you may print 10 of the same clip with the same printing method - some may be some fit great, and some be too tight. If some are also too loose, then I would suggest calibrating your 3D printer or considering another method.

**There is no way to release a clip without printing it and testing it**. Given how variable FDM is, we do not suggest using it for a part that requires these tolerances.

## Releasing a clip
**This section is incomplete, been a while since I did this. **
Once you have dialed in the dimensions that work well for the device and printing method. You then need to make it prettier.
1. Export your OpenSCAD design as a CSG (make sure only the clip you want is visible)
2. Import the CSG file you saved into FreeCAD
3. Add fillets where you want them
4. Save it as a STEP (which preveres the Brep geometry) and as a STL

## Contributing
- Please use a new PR for each clip.
- Include a CSG, STEP, and STL in their relative folders. (new guideline, so you won't see historicals in here right now)
- Merge into `master` once the dimensions have been physically verified with an appropriate printing method on a small batch of clips (5-10). This way we also avoid "verisoning" clips (eg let's avoid `11pro-v5.stl`, etc)

## Current clips
- :white_check_mark: iPhone X - Verified on HP MJF (this clip was designed via another method and is not in this repo)
- :white_check_mark: iPhone Xr - Verified on HP MJF
- :white_check_mark: iPhone Xs - Verified on HP MJF
- :white_check_mark: iPhone Xs Max - Verified on HP MJF
- :white_check_mark: iPad Pro (2018) - Verified on HP MJF
- ❌ iPhone 11
- ❌ iPhone 11 Pro
- ❌ iPhone 11 Pro Max

## License
We release our final clips [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/) in `mirror-clip`.

This repo is © 2020, Standard Cyborg, Inc. Proprietary.
