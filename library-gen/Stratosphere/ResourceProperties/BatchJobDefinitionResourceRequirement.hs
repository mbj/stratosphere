
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html

module Stratosphere.ResourceProperties.BatchJobDefinitionResourceRequirement where

import Stratosphere.ResourceImports


-- | Full data type definition for BatchJobDefinitionResourceRequirement. See
-- 'batchJobDefinitionResourceRequirement' for a more convenient
-- constructor.
data BatchJobDefinitionResourceRequirement =
  BatchJobDefinitionResourceRequirement
  { _batchJobDefinitionResourceRequirementType :: Maybe (Val Text)
  , _batchJobDefinitionResourceRequirementValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinitionResourceRequirement where
  toJSON BatchJobDefinitionResourceRequirement{..} =
    object $
    catMaybes
    [ fmap (("Type",) . toJSON) _batchJobDefinitionResourceRequirementType
    , fmap (("Value",) . toJSON) _batchJobDefinitionResourceRequirementValue
    ]

-- | Constructor for 'BatchJobDefinitionResourceRequirement' containing
-- required fields as arguments.
batchJobDefinitionResourceRequirement
  :: BatchJobDefinitionResourceRequirement
batchJobDefinitionResourceRequirement  =
  BatchJobDefinitionResourceRequirement
  { _batchJobDefinitionResourceRequirementType = Nothing
  , _batchJobDefinitionResourceRequirementValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html#cfn-batch-jobdefinition-resourcerequirement-type
bjdrrType :: Lens' BatchJobDefinitionResourceRequirement (Maybe (Val Text))
bjdrrType = lens _batchJobDefinitionResourceRequirementType (\s a -> s { _batchJobDefinitionResourceRequirementType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html#cfn-batch-jobdefinition-resourcerequirement-value
bjdrrValue :: Lens' BatchJobDefinitionResourceRequirement (Maybe (Val Text))
bjdrrValue = lens _batchJobDefinitionResourceRequirementValue (\s a -> s { _batchJobDefinitionResourceRequirementValue = a })
