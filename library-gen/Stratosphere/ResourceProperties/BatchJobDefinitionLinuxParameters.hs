
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-linuxparameters.html

module Stratosphere.ResourceProperties.BatchJobDefinitionLinuxParameters where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BatchJobDefinitionDevice

-- | Full data type definition for BatchJobDefinitionLinuxParameters. See
-- 'batchJobDefinitionLinuxParameters' for a more convenient constructor.
data BatchJobDefinitionLinuxParameters =
  BatchJobDefinitionLinuxParameters
  { _batchJobDefinitionLinuxParametersDevices :: Maybe [BatchJobDefinitionDevice]
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionLinuxParameters where
  toJSON BatchJobDefinitionLinuxParameters{..} =
    object $
    catMaybes
    [ fmap (("Devices",) . toJSON) _batchJobDefinitionLinuxParametersDevices
    ]

-- | Constructor for 'BatchJobDefinitionLinuxParameters' containing required
-- fields as arguments.
batchJobDefinitionLinuxParameters
  :: BatchJobDefinitionLinuxParameters
batchJobDefinitionLinuxParameters  =
  BatchJobDefinitionLinuxParameters
  { _batchJobDefinitionLinuxParametersDevices = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-linuxparameters.html#cfn-batch-jobdefinition-containerproperties-linuxparameters-devices
bjdlpDevices :: Lens' BatchJobDefinitionLinuxParameters (Maybe [BatchJobDefinitionDevice])
bjdlpDevices = lens _batchJobDefinitionLinuxParametersDevices (\s a -> s { _batchJobDefinitionLinuxParametersDevices = a })
