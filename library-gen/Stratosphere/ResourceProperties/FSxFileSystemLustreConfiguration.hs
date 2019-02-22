{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html

module Stratosphere.ResourceProperties.FSxFileSystemLustreConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for FSxFileSystemLustreConfiguration. See
-- 'fSxFileSystemLustreConfiguration' for a more convenient constructor.
data FSxFileSystemLustreConfiguration =
  FSxFileSystemLustreConfiguration
  { _fSxFileSystemLustreConfigurationExportPath :: Maybe (Val Text)
  , _fSxFileSystemLustreConfigurationImportPath :: Maybe (Val Text)
  , _fSxFileSystemLustreConfigurationImportedFileChunkSize :: Maybe (Val Integer)
  , _fSxFileSystemLustreConfigurationWeeklyMaintenanceStartTime :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON FSxFileSystemLustreConfiguration where
  toJSON FSxFileSystemLustreConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ExportPath",) . toJSON) _fSxFileSystemLustreConfigurationExportPath
    , fmap (("ImportPath",) . toJSON) _fSxFileSystemLustreConfigurationImportPath
    , fmap (("ImportedFileChunkSize",) . toJSON . fmap Integer') _fSxFileSystemLustreConfigurationImportedFileChunkSize
    , fmap (("WeeklyMaintenanceStartTime",) . toJSON) _fSxFileSystemLustreConfigurationWeeklyMaintenanceStartTime
    ]

instance FromJSON FSxFileSystemLustreConfiguration where
  parseJSON (Object obj) =
    FSxFileSystemLustreConfiguration <$>
      (obj .:? "ExportPath") <*>
      (obj .:? "ImportPath") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "ImportedFileChunkSize") <*>
      (obj .:? "WeeklyMaintenanceStartTime")
  parseJSON _ = mempty

-- | Constructor for 'FSxFileSystemLustreConfiguration' containing required
-- fields as arguments.
fSxFileSystemLustreConfiguration
  :: FSxFileSystemLustreConfiguration
fSxFileSystemLustreConfiguration  =
  FSxFileSystemLustreConfiguration
  { _fSxFileSystemLustreConfigurationExportPath = Nothing
  , _fSxFileSystemLustreConfigurationImportPath = Nothing
  , _fSxFileSystemLustreConfigurationImportedFileChunkSize = Nothing
  , _fSxFileSystemLustreConfigurationWeeklyMaintenanceStartTime = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-exportpath
fsfslcExportPath :: Lens' FSxFileSystemLustreConfiguration (Maybe (Val Text))
fsfslcExportPath = lens _fSxFileSystemLustreConfigurationExportPath (\s a -> s { _fSxFileSystemLustreConfigurationExportPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-importpath
fsfslcImportPath :: Lens' FSxFileSystemLustreConfiguration (Maybe (Val Text))
fsfslcImportPath = lens _fSxFileSystemLustreConfigurationImportPath (\s a -> s { _fSxFileSystemLustreConfigurationImportPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-importedfilechunksize
fsfslcImportedFileChunkSize :: Lens' FSxFileSystemLustreConfiguration (Maybe (Val Integer))
fsfslcImportedFileChunkSize = lens _fSxFileSystemLustreConfigurationImportedFileChunkSize (\s a -> s { _fSxFileSystemLustreConfigurationImportedFileChunkSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-weeklymaintenancestarttime
fsfslcWeeklyMaintenanceStartTime :: Lens' FSxFileSystemLustreConfiguration (Maybe (Val Text))
fsfslcWeeklyMaintenanceStartTime = lens _fSxFileSystemLustreConfigurationWeeklyMaintenanceStartTime (\s a -> s { _fSxFileSystemLustreConfigurationWeeklyMaintenanceStartTime = a })
