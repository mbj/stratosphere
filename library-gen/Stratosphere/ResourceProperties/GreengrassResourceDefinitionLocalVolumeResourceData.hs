{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionLocalVolumeResourceData where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionGroupOwnerSetting

-- | Full data type definition for
-- GreengrassResourceDefinitionLocalVolumeResourceData. See
-- 'greengrassResourceDefinitionLocalVolumeResourceData' for a more
-- convenient constructor.
data GreengrassResourceDefinitionLocalVolumeResourceData =
  GreengrassResourceDefinitionLocalVolumeResourceData
  { _greengrassResourceDefinitionLocalVolumeResourceDataDestinationPath :: Val Text
  , _greengrassResourceDefinitionLocalVolumeResourceDataGroupOwnerSetting :: Maybe GreengrassResourceDefinitionGroupOwnerSetting
  , _greengrassResourceDefinitionLocalVolumeResourceDataSourcePath :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionLocalVolumeResourceData where
  toJSON GreengrassResourceDefinitionLocalVolumeResourceData{..} =
    object $
    catMaybes
    [ (Just . ("DestinationPath",) . toJSON) _greengrassResourceDefinitionLocalVolumeResourceDataDestinationPath
    , fmap (("GroupOwnerSetting",) . toJSON) _greengrassResourceDefinitionLocalVolumeResourceDataGroupOwnerSetting
    , (Just . ("SourcePath",) . toJSON) _greengrassResourceDefinitionLocalVolumeResourceDataSourcePath
    ]

-- | Constructor for 'GreengrassResourceDefinitionLocalVolumeResourceData'
-- containing required fields as arguments.
greengrassResourceDefinitionLocalVolumeResourceData
  :: Val Text -- ^ 'grdlvrdDestinationPath'
  -> Val Text -- ^ 'grdlvrdSourcePath'
  -> GreengrassResourceDefinitionLocalVolumeResourceData
greengrassResourceDefinitionLocalVolumeResourceData destinationPatharg sourcePatharg =
  GreengrassResourceDefinitionLocalVolumeResourceData
  { _greengrassResourceDefinitionLocalVolumeResourceDataDestinationPath = destinationPatharg
  , _greengrassResourceDefinitionLocalVolumeResourceDataGroupOwnerSetting = Nothing
  , _greengrassResourceDefinitionLocalVolumeResourceDataSourcePath = sourcePatharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html#cfn-greengrass-resourcedefinition-localvolumeresourcedata-destinationpath
grdlvrdDestinationPath :: Lens' GreengrassResourceDefinitionLocalVolumeResourceData (Val Text)
grdlvrdDestinationPath = lens _greengrassResourceDefinitionLocalVolumeResourceDataDestinationPath (\s a -> s { _greengrassResourceDefinitionLocalVolumeResourceDataDestinationPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html#cfn-greengrass-resourcedefinition-localvolumeresourcedata-groupownersetting
grdlvrdGroupOwnerSetting :: Lens' GreengrassResourceDefinitionLocalVolumeResourceData (Maybe GreengrassResourceDefinitionGroupOwnerSetting)
grdlvrdGroupOwnerSetting = lens _greengrassResourceDefinitionLocalVolumeResourceDataGroupOwnerSetting (\s a -> s { _greengrassResourceDefinitionLocalVolumeResourceDataGroupOwnerSetting = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html#cfn-greengrass-resourcedefinition-localvolumeresourcedata-sourcepath
grdlvrdSourcePath :: Lens' GreengrassResourceDefinitionLocalVolumeResourceData (Val Text)
grdlvrdSourcePath = lens _greengrassResourceDefinitionLocalVolumeResourceDataSourcePath (\s a -> s { _greengrassResourceDefinitionLocalVolumeResourceDataSourcePath = a })
