
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-vpcsubnets.html

module Stratosphere.ResourceProperties.GameLiftGameServerGroupVpcSubnets where

import Stratosphere.ResourceImports


-- | Full data type definition for GameLiftGameServerGroupVpcSubnets. See
-- 'gameLiftGameServerGroupVpcSubnets' for a more convenient constructor.
data GameLiftGameServerGroupVpcSubnets =
  GameLiftGameServerGroupVpcSubnets
  { _gameLiftGameServerGroupVpcSubnetsVpcSubnets :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON GameLiftGameServerGroupVpcSubnets where
  toJSON GameLiftGameServerGroupVpcSubnets{..} =
    object $
    catMaybes
    [ fmap (("VpcSubnets",) . toJSON) _gameLiftGameServerGroupVpcSubnetsVpcSubnets
    ]

-- | Constructor for 'GameLiftGameServerGroupVpcSubnets' containing required
-- fields as arguments.
gameLiftGameServerGroupVpcSubnets
  :: GameLiftGameServerGroupVpcSubnets
gameLiftGameServerGroupVpcSubnets  =
  GameLiftGameServerGroupVpcSubnets
  { _gameLiftGameServerGroupVpcSubnetsVpcSubnets = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-vpcsubnets.html#cfn-gamelift-gameservergroup-vpcsubnets-vpcsubnets
glgsgvsVpcSubnets :: Lens' GameLiftGameServerGroupVpcSubnets (Maybe (ValList Text))
glgsgvsVpcSubnets = lens _gameLiftGameServerGroupVpcSubnetsVpcSubnets (\s a -> s { _gameLiftGameServerGroupVpcSubnetsVpcSubnets = a })
