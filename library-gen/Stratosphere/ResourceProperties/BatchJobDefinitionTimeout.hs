
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-timeout.html

module Stratosphere.ResourceProperties.BatchJobDefinitionTimeout where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for BatchJobDefinitionTimeout. See
-- 'batchJobDefinitionTimeout' for a more convenient constructor.
data BatchJobDefinitionTimeout =
  BatchJobDefinitionTimeout
  { _batchJobDefinitionTimeoutAttemptDurationSeconds :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionTimeout where
  toJSON BatchJobDefinitionTimeout{..} =
    object $
    catMaybes
    [ fmap (("AttemptDurationSeconds",) . toJSON) _batchJobDefinitionTimeoutAttemptDurationSeconds
    ]

-- | Constructor for 'BatchJobDefinitionTimeout' containing required fields as
-- arguments.
batchJobDefinitionTimeout
  :: BatchJobDefinitionTimeout
batchJobDefinitionTimeout  =
  BatchJobDefinitionTimeout
  { _batchJobDefinitionTimeoutAttemptDurationSeconds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-timeout.html#cfn-batch-jobdefinition-timeout-attemptdurationseconds
bjdtAttemptDurationSeconds :: Lens' BatchJobDefinitionTimeout (Maybe (Val Integer))
bjdtAttemptDurationSeconds = lens _batchJobDefinitionTimeoutAttemptDurationSeconds (\s a -> s { _batchJobDefinitionTimeoutAttemptDurationSeconds = a })
