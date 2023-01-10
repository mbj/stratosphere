
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionResourceRequirement where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionResourceRequirement. See
-- 'ecsTaskDefinitionResourceRequirement' for a more convenient constructor.
data ECSTaskDefinitionResourceRequirement =
  ECSTaskDefinitionResourceRequirement
  { _eCSTaskDefinitionResourceRequirementType :: Val Text
  , _eCSTaskDefinitionResourceRequirementValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionResourceRequirement where
  toJSON ECSTaskDefinitionResourceRequirement{..} =
    object $
    catMaybes
    [ (Just . ("Type",) . toJSON) _eCSTaskDefinitionResourceRequirementType
    , (Just . ("Value",) . toJSON) _eCSTaskDefinitionResourceRequirementValue
    ]

-- | Constructor for 'ECSTaskDefinitionResourceRequirement' containing
-- required fields as arguments.
ecsTaskDefinitionResourceRequirement
  :: Val Text -- ^ 'ecstdrrType'
  -> Val Text -- ^ 'ecstdrrValue'
  -> ECSTaskDefinitionResourceRequirement
ecsTaskDefinitionResourceRequirement typearg valuearg =
  ECSTaskDefinitionResourceRequirement
  { _eCSTaskDefinitionResourceRequirementType = typearg
  , _eCSTaskDefinitionResourceRequirementValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html#cfn-ecs-taskdefinition-resourcerequirement-type
ecstdrrType :: Lens' ECSTaskDefinitionResourceRequirement (Val Text)
ecstdrrType = lens _eCSTaskDefinitionResourceRequirementType (\s a -> s { _eCSTaskDefinitionResourceRequirementType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html#cfn-ecs-taskdefinition-resourcerequirement-value
ecstdrrValue :: Lens' ECSTaskDefinitionResourceRequirement (Val Text)
ecstdrrValue = lens _eCSTaskDefinitionResourceRequirementValue (\s a -> s { _eCSTaskDefinitionResourceRequirementValue = a })
