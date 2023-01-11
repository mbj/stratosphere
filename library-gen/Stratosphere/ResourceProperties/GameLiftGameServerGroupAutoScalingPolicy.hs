
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-autoscalingpolicy.html

module Stratosphere.ResourceProperties.GameLiftGameServerGroupAutoScalingPolicy where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GameLiftGameServerGroupTargetTrackingConfiguration

-- | Full data type definition for GameLiftGameServerGroupAutoScalingPolicy.
-- See 'gameLiftGameServerGroupAutoScalingPolicy' for a more convenient
-- constructor.
data GameLiftGameServerGroupAutoScalingPolicy =
  GameLiftGameServerGroupAutoScalingPolicy
  { _gameLiftGameServerGroupAutoScalingPolicyEstimatedInstanceWarmup :: Maybe (Val Double)
  , _gameLiftGameServerGroupAutoScalingPolicyTargetTrackingConfiguration :: GameLiftGameServerGroupTargetTrackingConfiguration
  } deriving (Show, Eq)

instance ToJSON GameLiftGameServerGroupAutoScalingPolicy where
  toJSON GameLiftGameServerGroupAutoScalingPolicy{..} =
    object $
    catMaybes
    [ fmap (("EstimatedInstanceWarmup",) . toJSON) _gameLiftGameServerGroupAutoScalingPolicyEstimatedInstanceWarmup
    , (Just . ("TargetTrackingConfiguration",) . toJSON) _gameLiftGameServerGroupAutoScalingPolicyTargetTrackingConfiguration
    ]

-- | Constructor for 'GameLiftGameServerGroupAutoScalingPolicy' containing
-- required fields as arguments.
gameLiftGameServerGroupAutoScalingPolicy
  :: GameLiftGameServerGroupTargetTrackingConfiguration -- ^ 'glgsgaspTargetTrackingConfiguration'
  -> GameLiftGameServerGroupAutoScalingPolicy
gameLiftGameServerGroupAutoScalingPolicy targetTrackingConfigurationarg =
  GameLiftGameServerGroupAutoScalingPolicy
  { _gameLiftGameServerGroupAutoScalingPolicyEstimatedInstanceWarmup = Nothing
  , _gameLiftGameServerGroupAutoScalingPolicyTargetTrackingConfiguration = targetTrackingConfigurationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-autoscalingpolicy.html#cfn-gamelift-gameservergroup-autoscalingpolicy-estimatedinstancewarmup
glgsgaspEstimatedInstanceWarmup :: Lens' GameLiftGameServerGroupAutoScalingPolicy (Maybe (Val Double))
glgsgaspEstimatedInstanceWarmup = lens _gameLiftGameServerGroupAutoScalingPolicyEstimatedInstanceWarmup (\s a -> s { _gameLiftGameServerGroupAutoScalingPolicyEstimatedInstanceWarmup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-autoscalingpolicy.html#cfn-gamelift-gameservergroup-autoscalingpolicy-targettrackingconfiguration
glgsgaspTargetTrackingConfiguration :: Lens' GameLiftGameServerGroupAutoScalingPolicy GameLiftGameServerGroupTargetTrackingConfiguration
glgsgaspTargetTrackingConfiguration = lens _gameLiftGameServerGroupAutoScalingPolicyTargetTrackingConfiguration (\s a -> s { _gameLiftGameServerGroupAutoScalingPolicyTargetTrackingConfiguration = a })
