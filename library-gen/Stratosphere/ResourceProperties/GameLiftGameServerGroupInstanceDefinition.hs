
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-instancedefinition.html

module Stratosphere.ResourceProperties.GameLiftGameServerGroupInstanceDefinition where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GameLiftGameServerGroupInstanceDefinition.
-- See 'gameLiftGameServerGroupInstanceDefinition' for a more convenient
-- constructor.
data GameLiftGameServerGroupInstanceDefinition =
  GameLiftGameServerGroupInstanceDefinition
  { _gameLiftGameServerGroupInstanceDefinitionInstanceType :: Val Text
  , _gameLiftGameServerGroupInstanceDefinitionWeightedCapacity :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GameLiftGameServerGroupInstanceDefinition where
  toJSON GameLiftGameServerGroupInstanceDefinition{..} =
    object $
    catMaybes
    [ (Just . ("InstanceType",) . toJSON) _gameLiftGameServerGroupInstanceDefinitionInstanceType
    , fmap (("WeightedCapacity",) . toJSON) _gameLiftGameServerGroupInstanceDefinitionWeightedCapacity
    ]

-- | Constructor for 'GameLiftGameServerGroupInstanceDefinition' containing
-- required fields as arguments.
gameLiftGameServerGroupInstanceDefinition
  :: Val Text -- ^ 'glgsgidInstanceType'
  -> GameLiftGameServerGroupInstanceDefinition
gameLiftGameServerGroupInstanceDefinition instanceTypearg =
  GameLiftGameServerGroupInstanceDefinition
  { _gameLiftGameServerGroupInstanceDefinitionInstanceType = instanceTypearg
  , _gameLiftGameServerGroupInstanceDefinitionWeightedCapacity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-instancedefinition.html#cfn-gamelift-gameservergroup-instancedefinition-instancetype
glgsgidInstanceType :: Lens' GameLiftGameServerGroupInstanceDefinition (Val Text)
glgsgidInstanceType = lens _gameLiftGameServerGroupInstanceDefinitionInstanceType (\s a -> s { _gameLiftGameServerGroupInstanceDefinitionInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-instancedefinition.html#cfn-gamelift-gameservergroup-instancedefinition-weightedcapacity
glgsgidWeightedCapacity :: Lens' GameLiftGameServerGroupInstanceDefinition (Maybe (Val Text))
glgsgidWeightedCapacity = lens _gameLiftGameServerGroupInstanceDefinitionWeightedCapacity (\s a -> s { _gameLiftGameServerGroupInstanceDefinitionWeightedCapacity = a })
