
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumeshost.html

module Stratosphere.ResourceProperties.BatchJobDefinitionVolumesHost where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for BatchJobDefinitionVolumesHost. See
-- 'batchJobDefinitionVolumesHost' for a more convenient constructor.
data BatchJobDefinitionVolumesHost =
  BatchJobDefinitionVolumesHost
  { _batchJobDefinitionVolumesHostSourcePath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionVolumesHost where
  toJSON BatchJobDefinitionVolumesHost{..} =
    object $
    catMaybes
    [ fmap (("SourcePath",) . toJSON) _batchJobDefinitionVolumesHostSourcePath
    ]

-- | Constructor for 'BatchJobDefinitionVolumesHost' containing required
-- fields as arguments.
batchJobDefinitionVolumesHost
  :: BatchJobDefinitionVolumesHost
batchJobDefinitionVolumesHost  =
  BatchJobDefinitionVolumesHost
  { _batchJobDefinitionVolumesHostSourcePath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumeshost.html#cfn-batch-jobdefinition-volumeshost-sourcepath
bjdvhSourcePath :: Lens' BatchJobDefinitionVolumesHost (Maybe (Val Text))
bjdvhSourcePath = lens _batchJobDefinitionVolumesHostSourcePath (\s a -> s { _batchJobDefinitionVolumesHostSourcePath = a })
