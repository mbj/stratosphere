
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-device.html

module Stratosphere.ResourceProperties.BatchJobDefinitionDevice where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for BatchJobDefinitionDevice. See
-- 'batchJobDefinitionDevice' for a more convenient constructor.
data BatchJobDefinitionDevice =
  BatchJobDefinitionDevice
  { _batchJobDefinitionDeviceContainerPath :: Maybe (Val Text)
  , _batchJobDefinitionDeviceHostPath :: Maybe (Val Text)
  , _batchJobDefinitionDevicePermissions :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionDevice where
  toJSON BatchJobDefinitionDevice{..} =
    object $
    catMaybes
    [ fmap (("ContainerPath",) . toJSON) _batchJobDefinitionDeviceContainerPath
    , fmap (("HostPath",) . toJSON) _batchJobDefinitionDeviceHostPath
    , fmap (("Permissions",) . toJSON) _batchJobDefinitionDevicePermissions
    ]

-- | Constructor for 'BatchJobDefinitionDevice' containing required fields as
-- arguments.
batchJobDefinitionDevice
  :: BatchJobDefinitionDevice
batchJobDefinitionDevice  =
  BatchJobDefinitionDevice
  { _batchJobDefinitionDeviceContainerPath = Nothing
  , _batchJobDefinitionDeviceHostPath = Nothing
  , _batchJobDefinitionDevicePermissions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-device.html#cfn-batch-jobdefinition-device-containerpath
bjddContainerPath :: Lens' BatchJobDefinitionDevice (Maybe (Val Text))
bjddContainerPath = lens _batchJobDefinitionDeviceContainerPath (\s a -> s { _batchJobDefinitionDeviceContainerPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-device.html#cfn-batch-jobdefinition-device-hostpath
bjddHostPath :: Lens' BatchJobDefinitionDevice (Maybe (Val Text))
bjddHostPath = lens _batchJobDefinitionDeviceHostPath (\s a -> s { _batchJobDefinitionDeviceHostPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-device.html#cfn-batch-jobdefinition-device-permissions
bjddPermissions :: Lens' BatchJobDefinitionDevice (Maybe (ValList Text))
bjddPermissions = lens _batchJobDefinitionDevicePermissions (\s a -> s { _batchJobDefinitionDevicePermissions = a })
