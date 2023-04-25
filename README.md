Simple script to fetch any given exif data fron any image, both locally or from url: 

E.g. 

```
ruby exif.rb https://raw.githubusercontent.com/ianare/exif-samples/master/jpg/Fujifilm_FinePix6900ZOOM.jpg  
```

will provide the following output: 

"make: FUJIFILM"
"model: FinePix6900ZOOM"
"orientation: 1"
"x_resolution: 72/1"
"y_resolution: 72/1"
"resolution_unit: 2"
"software: GIMP 2.4.5"
"date_time: 2008:07:31 17:17:56"
"ycbcr_positioning: 2"
"copyright:     "
"compression: 6"
"fnumber: 4/1"
"exposure_program: 2"
"iso_speed_ratings: 100"
"exif_version: 0210"
"date_time_original: 2001:02:19 06:40:05"
"date_time_digitized: 2001:02:19 06:40:05"
"components_configuration: \u0001\u0002\u0003\u0000"
"compressed_bits_per_pixel: 16/5"
"shutter_speed_value: 17/2"
"aperture_value: 4/1"
"brightness_value: 749/100"
"exposure_bias_value: 0/1"
"max_aperture_value: 3/1"
"metering_mode: 5"
"flash: 0"
"focal_length: 109/5"
"maker_note: FUJIFILM\f\x00\x00\x00\x11\x00\x00\x00\a\x00\x04\x00\x00\x000130\x00\x10\x02\x00\b\x00\x00\x00\xDE\x00\x00\x00\x01\x10\x03\x00\x01\x00\x00\x00\x03\x00\x00\x00\x02\x10\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x03\x10\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x10\x10\x03\x00\x01\x00\x00\x00\x02\x00\x00\x00\x11\x10\n\x00\x01\x00\x00\x00\xE6\x00\x00\x00 \x10\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00!\x10\x03\x00\x01\x00\x00\x00\x00\x00\x00\x000\x10\x03\x00\x01\x00\x00\x00\x00\x00\x00\x001\x10\x03\x00\x01\x00\x00\x00\x00\x00\x00\x002\x10\x03\x00\x01\x00\x00\x00\x01\x00\x00\x00\x00\x11\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x12\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x13\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x01\x13\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x02\x13\x03\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00FINE   \x00\x00\x00\x00\x00\n\x00\x00\x00"
"flash_pix_version: 0100"
"color_space: 1"
"pixel_x_dimension: 100"
"pixel_y_dimension: 75"
"focal_plane_x_resolution: 3704/1"
"focal_plane_y_resolution: 3704/1"
"focal_plane_resolution_unit: 3"
"sensing_method: 2"
"file_source: \u0003"
"scene_type: \u0001"
"interoperability_index: R98"
"interoperability_version: 0100"

--json flag should wrap output into proper JSON format 
