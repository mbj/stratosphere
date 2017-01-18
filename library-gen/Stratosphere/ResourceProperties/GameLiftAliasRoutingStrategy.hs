{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html

module Stratosphere.ResourceProperties.GameLiftAliasRoutingStrategy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for GameLiftAliasRoutingStrategy. See
-- | 'gameLiftAliasRoutingStrategy' for a more convenient constructor.
data GameLiftAliasRoutingStrategy =
  GameLiftAliasRoutingStrategy
  { _gameLiftAliasRoutingStrategyFleetId :: Maybe (Val Text)
  , _gameLiftAliasRoutingStrategyMessage :: Maybe (Val Text)
  , _gameLiftAliasRoutingStrategyType :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON GameLiftAliasRoutingStrategy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON GameLiftAliasRoutingStrategy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'GameLiftAliasRoutingStrategy' containing required fields
-- | as arguments.
gameLiftAliasRoutingStrategy
  :: Val Text -- ^ 'glarsType'
  -> GameLiftAliasRoutingStrategy
gameLiftAliasRoutingStrategy typearg =
  GameLiftAliasRoutingStrategy
  { _gameLiftAliasRoutingStrategyFleetId = Nothing
  , _gameLiftAliasRoutingStrategyMessage = Nothing
  , _gameLiftAliasRoutingStrategyType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html#cfn-gamelift-alias-routingstrategy-fleetid
glarsFleetId :: Lens' GameLiftAliasRoutingStrategy (Maybe (Val Text))
glarsFleetId = lens _gameLiftAliasRoutingStrategyFleetId (\s a -> s { _gameLiftAliasRoutingStrategyFleetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html#cfn-gamelift-alias-routingstrategy-message
glarsMessage :: Lens' GameLiftAliasRoutingStrategy (Maybe (Val Text))
glarsMessage = lens _gameLiftAliasRoutingStrategyMessage (\s a -> s { _gameLiftAliasRoutingStrategyMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-alias-routingstrategy.html#cfn-gamelift-alias-routingstrategy-type
glarsType :: Lens' GameLiftAliasRoutingStrategy (Val Text)
glarsType = lens _gameLiftAliasRoutingStrategyType (\s a -> s { _gameLiftAliasRoutingStrategyType = a })
