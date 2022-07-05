{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html

module Stratosphere.Resources.GameLiftGameServerGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GameLiftGameServerGroupAutoScalingPolicy
import Stratosphere.ResourceProperties.GameLiftGameServerGroupInstanceDefinitions
import Stratosphere.ResourceProperties.GameLiftGameServerGroupLaunchTemplate
import Stratosphere.ResourceProperties.GameLiftGameServerGroupTags
import Stratosphere.ResourceProperties.GameLiftGameServerGroupVpcSubnets

-- | Full data type definition for GameLiftGameServerGroup. See
-- 'gameLiftGameServerGroup' for a more convenient constructor.
data GameLiftGameServerGroup =
  GameLiftGameServerGroup
  { _gameLiftGameServerGroupAutoScalingPolicy :: Maybe GameLiftGameServerGroupAutoScalingPolicy
  , _gameLiftGameServerGroupBalancingStrategy :: Maybe (Val Text)
  , _gameLiftGameServerGroupDeleteOption :: Maybe (Val Text)
  , _gameLiftGameServerGroupGameServerGroupName :: Val Text
  , _gameLiftGameServerGroupGameServerProtectionPolicy :: Maybe (Val Text)
  , _gameLiftGameServerGroupInstanceDefinitions :: GameLiftGameServerGroupInstanceDefinitions
  , _gameLiftGameServerGroupLaunchTemplate :: GameLiftGameServerGroupLaunchTemplate
  , _gameLiftGameServerGroupMaxSize :: Maybe (Val Double)
  , _gameLiftGameServerGroupMinSize :: Maybe (Val Double)
  , _gameLiftGameServerGroupRoleArn :: Val Text
  , _gameLiftGameServerGroupTags :: Maybe GameLiftGameServerGroupTags
  , _gameLiftGameServerGroupVpcSubnets :: Maybe GameLiftGameServerGroupVpcSubnets
  } deriving (Show, Eq)

instance ToResourceProperties GameLiftGameServerGroup where
  toResourceProperties GameLiftGameServerGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GameLift::GameServerGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AutoScalingPolicy",) . toJSON) _gameLiftGameServerGroupAutoScalingPolicy
        , fmap (("BalancingStrategy",) . toJSON) _gameLiftGameServerGroupBalancingStrategy
        , fmap (("DeleteOption",) . toJSON) _gameLiftGameServerGroupDeleteOption
        , (Just . ("GameServerGroupName",) . toJSON) _gameLiftGameServerGroupGameServerGroupName
        , fmap (("GameServerProtectionPolicy",) . toJSON) _gameLiftGameServerGroupGameServerProtectionPolicy
        , (Just . ("InstanceDefinitions",) . toJSON) _gameLiftGameServerGroupInstanceDefinitions
        , (Just . ("LaunchTemplate",) . toJSON) _gameLiftGameServerGroupLaunchTemplate
        , fmap (("MaxSize",) . toJSON) _gameLiftGameServerGroupMaxSize
        , fmap (("MinSize",) . toJSON) _gameLiftGameServerGroupMinSize
        , (Just . ("RoleArn",) . toJSON) _gameLiftGameServerGroupRoleArn
        , fmap (("Tags",) . toJSON) _gameLiftGameServerGroupTags
        , fmap (("VpcSubnets",) . toJSON) _gameLiftGameServerGroupVpcSubnets
        ]
    }

-- | Constructor for 'GameLiftGameServerGroup' containing required fields as
-- arguments.
gameLiftGameServerGroup
  :: Val Text -- ^ 'glgsgGameServerGroupName'
  -> GameLiftGameServerGroupInstanceDefinitions -- ^ 'glgsgInstanceDefinitions'
  -> GameLiftGameServerGroupLaunchTemplate -- ^ 'glgsgLaunchTemplate'
  -> Val Text -- ^ 'glgsgRoleArn'
  -> GameLiftGameServerGroup
gameLiftGameServerGroup gameServerGroupNamearg instanceDefinitionsarg launchTemplatearg roleArnarg =
  GameLiftGameServerGroup
  { _gameLiftGameServerGroupAutoScalingPolicy = Nothing
  , _gameLiftGameServerGroupBalancingStrategy = Nothing
  , _gameLiftGameServerGroupDeleteOption = Nothing
  , _gameLiftGameServerGroupGameServerGroupName = gameServerGroupNamearg
  , _gameLiftGameServerGroupGameServerProtectionPolicy = Nothing
  , _gameLiftGameServerGroupInstanceDefinitions = instanceDefinitionsarg
  , _gameLiftGameServerGroupLaunchTemplate = launchTemplatearg
  , _gameLiftGameServerGroupMaxSize = Nothing
  , _gameLiftGameServerGroupMinSize = Nothing
  , _gameLiftGameServerGroupRoleArn = roleArnarg
  , _gameLiftGameServerGroupTags = Nothing
  , _gameLiftGameServerGroupVpcSubnets = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html#cfn-gamelift-gameservergroup-autoscalingpolicy
glgsgAutoScalingPolicy :: Lens' GameLiftGameServerGroup (Maybe GameLiftGameServerGroupAutoScalingPolicy)
glgsgAutoScalingPolicy = lens _gameLiftGameServerGroupAutoScalingPolicy (\s a -> s { _gameLiftGameServerGroupAutoScalingPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html#cfn-gamelift-gameservergroup-balancingstrategy
glgsgBalancingStrategy :: Lens' GameLiftGameServerGroup (Maybe (Val Text))
glgsgBalancingStrategy = lens _gameLiftGameServerGroupBalancingStrategy (\s a -> s { _gameLiftGameServerGroupBalancingStrategy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html#cfn-gamelift-gameservergroup-deleteoption
glgsgDeleteOption :: Lens' GameLiftGameServerGroup (Maybe (Val Text))
glgsgDeleteOption = lens _gameLiftGameServerGroupDeleteOption (\s a -> s { _gameLiftGameServerGroupDeleteOption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html#cfn-gamelift-gameservergroup-gameservergroupname
glgsgGameServerGroupName :: Lens' GameLiftGameServerGroup (Val Text)
glgsgGameServerGroupName = lens _gameLiftGameServerGroupGameServerGroupName (\s a -> s { _gameLiftGameServerGroupGameServerGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html#cfn-gamelift-gameservergroup-gameserverprotectionpolicy
glgsgGameServerProtectionPolicy :: Lens' GameLiftGameServerGroup (Maybe (Val Text))
glgsgGameServerProtectionPolicy = lens _gameLiftGameServerGroupGameServerProtectionPolicy (\s a -> s { _gameLiftGameServerGroupGameServerProtectionPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html#cfn-gamelift-gameservergroup-instancedefinitions
glgsgInstanceDefinitions :: Lens' GameLiftGameServerGroup GameLiftGameServerGroupInstanceDefinitions
glgsgInstanceDefinitions = lens _gameLiftGameServerGroupInstanceDefinitions (\s a -> s { _gameLiftGameServerGroupInstanceDefinitions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html#cfn-gamelift-gameservergroup-launchtemplate
glgsgLaunchTemplate :: Lens' GameLiftGameServerGroup GameLiftGameServerGroupLaunchTemplate
glgsgLaunchTemplate = lens _gameLiftGameServerGroupLaunchTemplate (\s a -> s { _gameLiftGameServerGroupLaunchTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html#cfn-gamelift-gameservergroup-maxsize
glgsgMaxSize :: Lens' GameLiftGameServerGroup (Maybe (Val Double))
glgsgMaxSize = lens _gameLiftGameServerGroupMaxSize (\s a -> s { _gameLiftGameServerGroupMaxSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html#cfn-gamelift-gameservergroup-minsize
glgsgMinSize :: Lens' GameLiftGameServerGroup (Maybe (Val Double))
glgsgMinSize = lens _gameLiftGameServerGroupMinSize (\s a -> s { _gameLiftGameServerGroupMinSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html#cfn-gamelift-gameservergroup-rolearn
glgsgRoleArn :: Lens' GameLiftGameServerGroup (Val Text)
glgsgRoleArn = lens _gameLiftGameServerGroupRoleArn (\s a -> s { _gameLiftGameServerGroupRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html#cfn-gamelift-gameservergroup-tags
glgsgTags :: Lens' GameLiftGameServerGroup (Maybe GameLiftGameServerGroupTags)
glgsgTags = lens _gameLiftGameServerGroupTags (\s a -> s { _gameLiftGameServerGroupTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gameservergroup.html#cfn-gamelift-gameservergroup-vpcsubnets
glgsgVpcSubnets :: Lens' GameLiftGameServerGroup (Maybe GameLiftGameServerGroupVpcSubnets)
glgsgVpcSubnets = lens _gameLiftGameServerGroupVpcSubnets (\s a -> s { _gameLiftGameServerGroupVpcSubnets = a })
