{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-alias.html

module Stratosphere.Resources.GameLiftAlias where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.GameLiftAliasRoutingStrategy

-- | Full data type definition for GameLiftAlias. See 'gameLiftAlias' for a
-- more convenient constructor.
data GameLiftAlias =
  GameLiftAlias
  { _gameLiftAliasDescription :: Maybe (Val Text)
  , _gameLiftAliasName :: Val Text
  , _gameLiftAliasRoutingStrategy :: GameLiftAliasRoutingStrategy
  } deriving (Show, Eq)

instance ToJSON GameLiftAlias where
  toJSON GameLiftAlias{..} =
    object $
    catMaybes
    [ ("Description" .=) <$> _gameLiftAliasDescription
    , Just ("Name" .= _gameLiftAliasName)
    , Just ("RoutingStrategy" .= _gameLiftAliasRoutingStrategy)
    ]

instance FromJSON GameLiftAlias where
  parseJSON (Object obj) =
    GameLiftAlias <$>
      obj .:? "Description" <*>
      obj .: "Name" <*>
      obj .: "RoutingStrategy"
  parseJSON _ = mempty

-- | Constructor for 'GameLiftAlias' containing required fields as arguments.
gameLiftAlias
  :: Val Text -- ^ 'glaName'
  -> GameLiftAliasRoutingStrategy -- ^ 'glaRoutingStrategy'
  -> GameLiftAlias
gameLiftAlias namearg routingStrategyarg =
  GameLiftAlias
  { _gameLiftAliasDescription = Nothing
  , _gameLiftAliasName = namearg
  , _gameLiftAliasRoutingStrategy = routingStrategyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-alias.html#cfn-gamelift-alias-description
glaDescription :: Lens' GameLiftAlias (Maybe (Val Text))
glaDescription = lens _gameLiftAliasDescription (\s a -> s { _gameLiftAliasDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-alias.html#cfn-gamelift-alias-name
glaName :: Lens' GameLiftAlias (Val Text)
glaName = lens _gameLiftAliasName (\s a -> s { _gameLiftAliasName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-alias.html#cfn-gamelift-alias-routingstrategy
glaRoutingStrategy :: Lens' GameLiftAlias GameLiftAliasRoutingStrategy
glaRoutingStrategy = lens _gameLiftAliasRoutingStrategy (\s a -> s { _gameLiftAliasRoutingStrategy = a })
