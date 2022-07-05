{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-alias.html

module Stratosphere.Resources.GameLiftAlias where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GameLiftAliasRoutingStrategy

-- | Full data type definition for GameLiftAlias. See 'gameLiftAlias' for a
-- more convenient constructor.
data GameLiftAlias =
  GameLiftAlias
  { _gameLiftAliasDescription :: Maybe (Val Text)
  , _gameLiftAliasName :: Val Text
  , _gameLiftAliasRoutingStrategy :: GameLiftAliasRoutingStrategy
  } deriving (Show, Eq)

instance ToResourceProperties GameLiftAlias where
  toResourceProperties GameLiftAlias{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GameLift::Alias"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _gameLiftAliasDescription
        , (Just . ("Name",) . toJSON) _gameLiftAliasName
        , (Just . ("RoutingStrategy",) . toJSON) _gameLiftAliasRoutingStrategy
        ]
    }

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
