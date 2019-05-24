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
  { _eCSTaskDefinitionContainerDependencyCondition :: Val Text
  , _eCSTaskDefinitionContainerDependencyContainerName :: Val Text
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionContainerDependency where
  toJSON ECSTaskDefinitionContainerDependency{..} =
    object $
    catMaybes
    [ (Just . ("Condition",) . toJSON) _eCSTaskDefinitionContainerDependencyCondition
    , (Just . ("ContainerName",) . toJSON) _eCSTaskDefinitionContainerDependencyContainerName
    ]

-- | Constructor for 'ECSTaskDefinitionContainerDependency' containing
-- required fields as arguments.
ecsTaskDefinitionContainerDependency
  :: Val Text -- ^ 'ecstdcdCondition'
  -> Val Text -- ^ 'ecstdcdContainerName'
  -> ECSTaskDefinitionContainerDependency
ecsTaskDefinitionContainerDependency conditionarg containerNamearg =
  ECSTaskDefinitionContainerDependency
  { _eCSTaskDefinitionContainerDependencyCondition = conditionarg
  , _eCSTaskDefinitionContainerDependencyContainerName = containerNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html#cfn-ecs-taskdefinition-containerdependency-condition
ecstdcdCondition :: Lens' ECSTaskDefinitionContainerDependency (Val Text)
ecstdcdCondition = lens _eCSTaskDefinitionContainerDependencyCondition (\s a -> s { _eCSTaskDefinitionContainerDependencyCondition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html#cfn-ecs-taskdefinition-containerdependency-containername
ecstdcdContainerName :: Lens' ECSTaskDefinitionContainerDependency (Val Text)
ecstdcdContainerName = lens _eCSTaskDefinitionContainerDependencyContainerName (\s a -> s { _eCSTaskDefinitionContainerDependencyContainerName = a })
