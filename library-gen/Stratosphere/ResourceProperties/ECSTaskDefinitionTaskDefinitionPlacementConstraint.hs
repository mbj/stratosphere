{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionTaskDefinitionPlacementConstraint where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ECSTaskDefinitionTaskDefinitionPlacementConstraint. See
-- 'ecsTaskDefinitionTaskDefinitionPlacementConstraint' for a more
-- convenient constructor.
data ECSTaskDefinitionTaskDefinitionPlacementConstraint =
  ECSTaskDefinitionTaskDefinitionPlacementConstraint
  { _eCSTaskDefinitionTaskDefinitionPlacementConstraintExpression :: Maybe (Val Text)
  , _eCSTaskDefinitionTaskDefinitionPlacementConstraintType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionTaskDefinitionPlacementConstraint where
  toJSON ECSTaskDefinitionTaskDefinitionPlacementConstraint{..} =
    object $
    catMaybes
    [ fmap (("Expression",) . toJSON) _eCSTaskDefinitionTaskDefinitionPlacementConstraintExpression
    , (Just . ("Type",) . toJSON) _eCSTaskDefinitionTaskDefinitionPlacementConstraintType
    ]

-- | Constructor for 'ECSTaskDefinitionTaskDefinitionPlacementConstraint'
-- containing required fields as arguments.
ecsTaskDefinitionTaskDefinitionPlacementConstraint
  :: Val Text -- ^ 'ecstdtdpcType'
  -> ECSTaskDefinitionTaskDefinitionPlacementConstraint
ecsTaskDefinitionTaskDefinitionPlacementConstraint typearg =
  ECSTaskDefinitionTaskDefinitionPlacementConstraint
  { _eCSTaskDefinitionTaskDefinitionPlacementConstraintExpression = Nothing
  , _eCSTaskDefinitionTaskDefinitionPlacementConstraintType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html#cfn-ecs-taskdefinition-taskdefinitionplacementconstraint-expression
ecstdtdpcExpression :: Lens' ECSTaskDefinitionTaskDefinitionPlacementConstraint (Maybe (Val Text))
ecstdtdpcExpression = lens _eCSTaskDefinitionTaskDefinitionPlacementConstraintExpression (\s a -> s { _eCSTaskDefinitionTaskDefinitionPlacementConstraintExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html#cfn-ecs-taskdefinition-taskdefinitionplacementconstraint-type
ecstdtdpcType :: Lens' ECSTaskDefinitionTaskDefinitionPlacementConstraint (Val Text)
ecstdtdpcType = lens _eCSTaskDefinitionTaskDefinitionPlacementConstraintType (\s a -> s { _eCSTaskDefinitionTaskDefinitionPlacementConstraintType = a })
