{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html

module Stratosphere.ResourceProperties.ECSServicePlacementConstraint where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ECSServicePlacementConstraint. See
-- 'ecsServicePlacementConstraint' for a more convenient constructor.
data ECSServicePlacementConstraint =
  ECSServicePlacementConstraint
  { _eCSServicePlacementConstraintExpression :: Maybe (Val Text)
  , _eCSServicePlacementConstraintType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ECSServicePlacementConstraint where
  toJSON ECSServicePlacementConstraint{..} =
    object $
    catMaybes
    [ fmap (("Expression",) . toJSON) _eCSServicePlacementConstraintExpression
    , (Just . ("Type",) . toJSON) _eCSServicePlacementConstraintType
    ]

instance FromJSON ECSServicePlacementConstraint where
  parseJSON (Object obj) =
    ECSServicePlacementConstraint <$>
      (obj .:? "Expression") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'ECSServicePlacementConstraint' containing required
-- fields as arguments.
ecsServicePlacementConstraint
  :: Val Text -- ^ 'ecsspcType'
  -> ECSServicePlacementConstraint
ecsServicePlacementConstraint typearg =
  ECSServicePlacementConstraint
  { _eCSServicePlacementConstraintExpression = Nothing
  , _eCSServicePlacementConstraintType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html#cfn-ecs-service-placementconstraint-expression
ecsspcExpression :: Lens' ECSServicePlacementConstraint (Maybe (Val Text))
ecsspcExpression = lens _eCSServicePlacementConstraintExpression (\s a -> s { _eCSServicePlacementConstraintExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html#cfn-ecs-service-placementconstraint-type
ecsspcType :: Lens' ECSServicePlacementConstraint (Val Text)
ecsspcType = lens _eCSServicePlacementConstraintType (\s a -> s { _eCSServicePlacementConstraintType = a })
