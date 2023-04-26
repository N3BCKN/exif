Simple script to fetch any given exif data fron any image, both locally or from url: 

E.g. 

```
ruby exif.rb https://raw.githubusercontent.com/ianare/exif-samples/master/jpg/Fujifilm_FinePix6900ZOOM.jpg  
```

will provide the following output: 

"make: FUJIFILM" <br />
"model: FinePix6900ZOOM" <br />
"orientation: 1" <br />
"x_resolution: 72/1" <br />
"y_resolution: 72/1" <br />
"resolution_unit: 2" <br /> 
"software: GIMP 2.4.5" <br />
"date_time: 2008:07:31 17:17:56" <br />
"ycbcr_positioning: 2" <br />
"copyright:     " <br />
"compression: 6" <br />
"fnumber: 4/1" <br />
"exposure_program: 2" <br />
"iso_speed_ratings: 100" <br />
"exif_version: 0210" <br />
"date_time_original: 2001:02:19 06:40:05" <br /> 
"date_time_digitized: 2001:02:19 06:40:05" <br />
"components_configuration: \u0001\u0002\u0003\u0000" <br />
"compressed_bits_per_pixel: 16/5" <br />
"shutter_speed_value: 17/2" <br />
"aperture_value: 4/1" <br />
"brightness_value: 749/100" <br />
"exposure_bias_value: 0/1" <br />
"max_aperture_value: 3/1" <br />
"metering_mode: 5" <br />
"flash: 0" <br />
"focal_length: 109/5" <br />
"maker_note: FUJIFILM\f\x00\x00\x00\x11\x00\x00\x00\a\x00\x04\x00\x00\x000130\x00\x10\x02\x00\b\x00\x00\x00\xDE\x00\x00\x00\x01\x10\x03\x00\x01\x00\x00\x00\x03\x00\x00\x00\x02\x10\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x03\x10\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x10\x10\x03\x00\x01\x00\x00\x00\x02\x00\x00\x00\x11\x10\n\x00\x01\x00\x00\x00\xE6\x00\x00\x00 \x10\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00!\x10\x03\x00\x01\x00\x00\x00\x00\x00\x00\x000\x10\x03\x00\x01\x00\x00\x00\x00\x00\x00\x001\x10\x03\x00\x01\x00\x00\x00\x00\x00\x00\x002\x10\x03\x00\x01\x00\x00\x00\x01\x00\x00\x00\x00\x11\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x12\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x13\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x01\x13\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x02\x13\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00FINE   \x00\x00\x00\x00\x00\n\x00\x00\x00"
"flash_pix_version: 0100" <br />
"color_space: 1" <br />
"pixel_x_dimension: 100" <br />
"pixel_y_dimension: 75" <br />
"focal_plane_x_resolution: 3704/1" <br />
"focal_plane_y_resolution: 3704/1" <br />
"focal_plane_resolution_unit: 3" <br />
"sensing_method: 2" <br />
"file_source: \u0003" <br />
"scene_type: \u0001" <br />
"interoperability_index: R98" <br />
"interoperability_version: 0100" <br />

--json flag should wrap output into proper JSON format 

#### todo:
- handle more specific exceptions
- fix json output formatting
