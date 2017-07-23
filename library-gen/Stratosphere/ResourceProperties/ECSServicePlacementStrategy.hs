{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html

module Stratosphere.ResourceProperties.ECSServicePlacementStrategy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ECSServicePlacementStrategy. See
-- 'ecsServicePlacementStrategy' for a more convenient constructor.
data ECSServicePlacementStrategy =
  ECSServicePlacementStrategy
  { _eCSServicePlacementStrategyField :: Maybe (Val Text)
  , _eCSServicePlacementStrategyType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ECSServicePlacementStrategy where
  toJSON ECSServicePlacementStrategy{..} =
    object $
    catMaybes
    [ fmap (("Field",) . toJSON) _eCSServicePlacementStrategyField
    , (Just . ("Type",) . toJSON) _eCSServicePlacementStrategyType
    ]

instance FromJSON ECSServicePlacementStrategy where
  parseJSON (Object obj) =
    ECSServicePlacementStrategy <$>
      (obj .:? "Field") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'ECSServicePlacementStrategy' containing required fields
-- as arguments.
ecsServicePlacementStrategy
  :: Val Text -- ^ 'ecsspsType'
  -> ECSServicePlacementStrategy
ecsServicePlacementStrategy typearg =
  ECSServicePlacementStrategy
  { _eCSServicePlacementStrategyField = Nothing
  , _eCSServicePlacementStrategyType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html#cfn-ecs-service-placementstrategy-field
ecsspsField :: Lens' ECSServicePlacementStrategy (Maybe (Val Text))
ecsspsField = lens _eCSServicePlacementStrategyField (\s a -> s { _eCSServicePlacementStrategyField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html#cfn-ecs-service-placementstrategy-type
ecsspsType :: Lens' ECSServicePlacementStrategy (Val Text)
ecsspsType = lens _eCSServicePlacementStrategyType (\s a -> s { _eCSServicePlacementStrategyType = a })
