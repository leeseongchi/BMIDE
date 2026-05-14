This folder provides some samples that will assist you in updating values on your Externally Managed LOV's using the bmide_manage_batch_lovs utility.
There are three samples provided:  

1. A sample to add values to different types of Externally Managed LOV's.

The following sample files have been provided:
LOV Data File: lov_values_add.xml
LOV Localization File: lang\lov_values_add_en_US.xml
(Note: The localization file provided above can have localizations only for en_US locale. A seperate file will have to be provided for localization values for any other 
supported locale. A consolidated lang file can also be supplied, as explained in the next sample. 
Only one of two - i) Separate Localization Files ii) Consolidated Lang File, can be used as an input in a given call to the utility.) 

Prerequisites:
a. The LOV's Ab0Alphabet, Ab0DateLOV, Ab0DoubleLOV, Ab0HunderedValueStingLOV should be created in BMIDE as per their respective types. The LOV Value Management for all LOV's 
should be set as 'Supply values directly to Teamcenter database using 'bmide_manage_batch_lovs' command line utility.'
b. The above LOV's should then be be deployed to the Teamcenter Server.

Command: 
bmide_manage_batch_lovs -u=<user> -p=<password> -g=dba -option=update -file=lov_values_add.xml

The above command will add the given values and localizations to the respective LOV's.

2. A sample to add exisitng Sub LOV's that are managed in BMIDE Templates and Sub LOV's that are managed externally, to an Externally Managed LOV.

The following sample files have been provided:
LOV Data File: lov_cascading_add.xml
LOV Localization File: lang\lov_cascading_add_lang.xml
(Note: The localization file provided above is a consolidated file and can have localizations from any supported locale.)

Prerequisites:
a. The LOV's Ab0SampeCascadingBatchLOV and Ab0SampleBatchLOV should be created in BMIDE. The LOV Value Management for all LOV's should be set 
as 'Supply values directly to Teamcenter database using 'bmide_manage_batch_lovs' command line utility.'
b. The above LOV's should then be be deployed to the Teamcenter Server.
c. The LOV's ExcelTemplateRules and GraphicUsages used in this sample are available in the Foundation Template, and should be existing on your Teamcenter Server.
 
Command: 
bmide_manage_batch_lovs -u=<user> -p=<password> -g=dba -option=update -file=lov_cascading_add.xml

The above command will add the given Sub LOV's to the LOV - Ab0SampleCascadingBatchLOV

3. A sample to remove some values from a given LOV.

The following sample files have been provided:
LOV Data File: lov_values_remove.xml
LOV Localization File: lang\lov_values_remove_en_US.xml

Prerequisite:
This sample can be run after Sample 1.

Command: 
bmide_manage_batch_lovs -u=<user> -p=<password> -g=dba -option=update -file=lov_values_remove.xml

This sample aims to remove some values from an LOV from sample 1. The sample 1 adds 100 values to the LOV and this sample removes the last 50 values from it.
This is how it works: Each time, you update an LOV using the 'bmide_manage_batch_lov' utility, all the existing values on the LOV are deleted and 
the values in the provided XML input file get added. 
