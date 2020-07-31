{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionContainerDependency where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionContainerDependency. See
-- 'ecsTaskDefinitionContainerDependency' for a more convenient constructor.
data ECSTaskDefinitionContainerDependency =
  ECSTaskDefinitionContainerDependency
  { _eCSTaskDefinitionContainerDependencyCondition :: Maybe (Val Text)
  , _eCSTaskDefinitionContainerDependencyContainerName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionContainerDependency where
  toJSON ECSTaskDefinitionContainerDependency{..} =
    object $
    catMaybes
    [ fmap (("Condition",) . toJSON) _eCSTaskDefinitionContainerDependencyCondition
    , fmap (("ContainerName",) . toJSON) _eCSTaskDefinitionContainerDependencyContainerName
    ]

-- | Constructor for 'ECSTaskDefinitionContainerDependency' containing
-- required fields as arguments.
ecsTaskDefinitionContainerDependency
  :: ECSTaskDefinitionContainerDependency
ecsTaskDefinitionContainerDependency  =
  ECSTaskDefinitionContainerDependency
  { _eCSTaskDefinitionContainerDependencyCondition = Nothing
  , _eCSTaskDefinitionContainerDependencyContainerName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html#cfn-ecs-taskdefinition-containerdependency-condition
ecstdcdCondition :: Lens' ECSTaskDefinitionContainerDependency (Maybe (Val Text))
ecstdcdCondition = lens _eCSTaskDefinitionContainerDependencyCondition (\s a -> s { _eCSTaskDefinitionContainerDependencyCondition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html#cfn-ecs-taskdefinition-containerdependency-containername
ecstdcdContainerName :: Lens' ECSTaskDefinitionContainerDependency (Maybe (Val Text))
ecstdcdContainerName = lens _eCSTaskDefinitionContainerDependencyContainerName (\s a -> s { _eCSTaskDefinitionContainerDependencyContainerName = a })
