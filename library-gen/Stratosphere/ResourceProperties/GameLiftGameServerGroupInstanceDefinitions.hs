
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-instancedefinitions.html

module Stratosphere.ResourceProperties.GameLiftGameServerGroupInstanceDefinitions where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GameLiftGameServerGroupInstanceDefinition

-- | Full data type definition for GameLiftGameServerGroupInstanceDefinitions.
-- See 'gameLiftGameServerGroupInstanceDefinitions' for a more convenient
-- constructor.
data GameLiftGameServerGroupInstanceDefinitions =
  GameLiftGameServerGroupInstanceDefinitions
  { _gameLiftGameServerGroupInstanceDefinitionsInstanceDefinitions :: Maybe [GameLiftGameServerGroupInstanceDefinition]
  } deriving (Show, Eq)

instance ToJSON GameLiftGameServerGroupInstanceDefinitions where
  toJSON GameLiftGameServerGroupInstanceDefinitions{..} =
    object $
    catMaybes
    [ fmap (("InstanceDefinitions",) . toJSON) _gameLiftGameServerGroupInstanceDefinitionsInstanceDefinitions
    ]

-- | Constructor for 'GameLiftGameServerGroupInstanceDefinitions' containing
-- required fields as arguments.
gameLiftGameServerGroupInstanceDefinitions
  :: GameLiftGameServerGroupInstanceDefinitions
gameLiftGameServerGroupInstanceDefinitions  =
  GameLiftGameServerGroupInstanceDefinitions
  { _gameLiftGameServerGroupInstanceDefinitionsInstanceDefinitions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-instancedefinitions.html#cfn-gamelift-gameservergroup-instancedefinitions-instancedefinitions
glgsgidInstanceDefinitions :: Lens' GameLiftGameServerGroupInstanceDefinitions (Maybe [GameLiftGameServerGroupInstanceDefinition])
glgsgidInstanceDefinitions = lens _gameLiftGameServerGroupInstanceDefinitionsInstanceDefinitions (\s a -> s { _gameLiftGameServerGroupInstanceDefinitionsInstanceDefinitions = a })
