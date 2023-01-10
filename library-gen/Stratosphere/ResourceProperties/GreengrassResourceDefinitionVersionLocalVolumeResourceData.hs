
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionVersionLocalVolumeResourceData where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassResourceDefinitionVersionGroupOwnerSetting

-- | Full data type definition for
-- GreengrassResourceDefinitionVersionLocalVolumeResourceData. See
-- 'greengrassResourceDefinitionVersionLocalVolumeResourceData' for a more
-- convenient constructor.
data GreengrassResourceDefinitionVersionLocalVolumeResourceData =
  GreengrassResourceDefinitionVersionLocalVolumeResourceData
  { _greengrassResourceDefinitionVersionLocalVolumeResourceDataDestinationPath :: Val Text
  , _greengrassResourceDefinitionVersionLocalVolumeResourceDataGroupOwnerSetting :: Maybe GreengrassResourceDefinitionVersionGroupOwnerSetting
  , _greengrassResourceDefinitionVersionLocalVolumeResourceDataSourcePath :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionVersionLocalVolumeResourceData where
  toJSON GreengrassResourceDefinitionVersionLocalVolumeResourceData{..} =
    object $
    catMaybes
    [ (Just . ("DestinationPath",) . toJSON) _greengrassResourceDefinitionVersionLocalVolumeResourceDataDestinationPath
    , fmap (("GroupOwnerSetting",) . toJSON) _greengrassResourceDefinitionVersionLocalVolumeResourceDataGroupOwnerSetting
    , (Just . ("SourcePath",) . toJSON) _greengrassResourceDefinitionVersionLocalVolumeResourceDataSourcePath
    ]

-- | Constructor for
-- 'GreengrassResourceDefinitionVersionLocalVolumeResourceData' containing
-- required fields as arguments.
greengrassResourceDefinitionVersionLocalVolumeResourceData
  :: Val Text -- ^ 'grdvlvrdDestinationPath'
  -> Val Text -- ^ 'grdvlvrdSourcePath'
  -> GreengrassResourceDefinitionVersionLocalVolumeResourceData
greengrassResourceDefinitionVersionLocalVolumeResourceData destinationPatharg sourcePatharg =
  GreengrassResourceDefinitionVersionLocalVolumeResourceData
  { _greengrassResourceDefinitionVersionLocalVolumeResourceDataDestinationPath = destinationPatharg
  , _greengrassResourceDefinitionVersionLocalVolumeResourceDataGroupOwnerSetting = Nothing
  , _greengrassResourceDefinitionVersionLocalVolumeResourceDataSourcePath = sourcePatharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html#cfn-greengrass-resourcedefinitionversion-localvolumeresourcedata-destinationpath
grdvlvrdDestinationPath :: Lens' GreengrassResourceDefinitionVersionLocalVolumeResourceData (Val Text)
grdvlvrdDestinationPath = lens _greengrassResourceDefinitionVersionLocalVolumeResourceDataDestinationPath (\s a -> s { _greengrassResourceDefinitionVersionLocalVolumeResourceDataDestinationPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html#cfn-greengrass-resourcedefinitionversion-localvolumeresourcedata-groupownersetting
grdvlvrdGroupOwnerSetting :: Lens' GreengrassResourceDefinitionVersionLocalVolumeResourceData (Maybe GreengrassResourceDefinitionVersionGroupOwnerSetting)
grdvlvrdGroupOwnerSetting = lens _greengrassResourceDefinitionVersionLocalVolumeResourceDataGroupOwnerSetting (\s a -> s { _greengrassResourceDefinitionVersionLocalVolumeResourceDataGroupOwnerSetting = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html#cfn-greengrass-resourcedefinitionversion-localvolumeresourcedata-sourcepath
grdvlvrdSourcePath :: Lens' GreengrassResourceDefinitionVersionLocalVolumeResourceData (Val Text)
grdvlvrdSourcePath = lens _greengrassResourceDefinitionVersionLocalVolumeResourceDataSourcePath (\s a -> s { _greengrassResourceDefinitionVersionLocalVolumeResourceDataSourcePath = a })
