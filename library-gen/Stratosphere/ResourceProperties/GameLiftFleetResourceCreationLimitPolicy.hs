{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html

module Stratosphere.ResourceProperties.GameLiftFleetResourceCreationLimitPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for GameLiftFleetResourceCreationLimitPolicy.
-- See 'gameLiftFleetResourceCreationLimitPolicy' for a more convenient
-- constructor.
data GameLiftFleetResourceCreationLimitPolicy =
  GameLiftFleetResourceCreationLimitPolicy
  { _gameLiftFleetResourceCreationLimitPolicyNewGameSessionsPerCreator :: Maybe (Val Integer)
  , _gameLiftFleetResourceCreationLimitPolicyPolicyPeriodInMinutes :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON GameLiftFleetResourceCreationLimitPolicy where
  toJSON GameLiftFleetResourceCreationLimitPolicy{..} =
    object $
    catMaybes
    [ fmap (("NewGameSessionsPerCreator",) . toJSON) _gameLiftFleetResourceCreationLimitPolicyNewGameSessionsPerCreator
    , fmap (("PolicyPeriodInMinutes",) . toJSON) _gameLiftFleetResourceCreationLimitPolicyPolicyPeriodInMinutes
    ]

-- | Constructor for 'GameLiftFleetResourceCreationLimitPolicy' containing
-- required fields as arguments.
gameLiftFleetResourceCreationLimitPolicy
  :: GameLiftFleetResourceCreationLimitPolicy
gameLiftFleetResourceCreationLimitPolicy  =
  GameLiftFleetResourceCreationLimitPolicy
  { _gameLiftFleetResourceCreationLimitPolicyNewGameSessionsPerCreator = Nothing
  , _gameLiftFleetResourceCreationLimitPolicyPolicyPeriodInMinutes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html#cfn-gamelift-fleet-resourcecreationlimitpolicy-newgamesessionspercreator
glfrclpNewGameSessionsPerCreator :: Lens' GameLiftFleetResourceCreationLimitPolicy (Maybe (Val Integer))
glfrclpNewGameSessionsPerCreator = lens _gameLiftFleetResourceCreationLimitPolicyNewGameSessionsPerCreator (\s a -> s { _gameLiftFleetResourceCreationLimitPolicyNewGameSessionsPerCreator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-resourcecreationlimitpolicy.html#cfn-gamelift-fleet-resourcecreationlimitpolicy-policyperiodinminutes
glfrclpPolicyPeriodInMinutes :: Lens' GameLiftFleetResourceCreationLimitPolicy (Maybe (Val Integer))
glfrclpPolicyPeriodInMinutes = lens _gameLiftFleetResourceCreationLimitPolicyPolicyPeriodInMinutes (\s a -> s { _gameLiftFleetResourceCreationLimitPolicyPolicyPeriodInMinutes = a })
