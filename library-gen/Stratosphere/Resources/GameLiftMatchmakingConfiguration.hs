{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html

module Stratosphere.Resources.GameLiftMatchmakingConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GameLiftMatchmakingConfigurationGameProperty

-- | Full data type definition for GameLiftMatchmakingConfiguration. See
-- 'gameLiftMatchmakingConfiguration' for a more convenient constructor.
data GameLiftMatchmakingConfiguration =
  GameLiftMatchmakingConfiguration
  { _gameLiftMatchmakingConfigurationAcceptanceRequired :: Val Bool
  , _gameLiftMatchmakingConfigurationAcceptanceTimeoutSeconds :: Maybe (Val Integer)
  , _gameLiftMatchmakingConfigurationAdditionalPlayerCount :: Maybe (Val Integer)
  , _gameLiftMatchmakingConfigurationBackfillMode :: Maybe (Val Text)
  , _gameLiftMatchmakingConfigurationCustomEventData :: Maybe (Val Text)
  , _gameLiftMatchmakingConfigurationDescription :: Maybe (Val Text)
  , _gameLiftMatchmakingConfigurationGameProperties :: Maybe [GameLiftMatchmakingConfigurationGameProperty]
  , _gameLiftMatchmakingConfigurationGameSessionData :: Maybe (Val Text)
  , _gameLiftMatchmakingConfigurationGameSessionQueueArns :: ValList Text
  , _gameLiftMatchmakingConfigurationName :: Val Text
  , _gameLiftMatchmakingConfigurationNotificationTarget :: Maybe (Val Text)
  , _gameLiftMatchmakingConfigurationRequestTimeoutSeconds :: Val Integer
  , _gameLiftMatchmakingConfigurationRuleSetName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GameLiftMatchmakingConfiguration where
  toResourceProperties GameLiftMatchmakingConfiguration{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GameLift::MatchmakingConfiguration"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AcceptanceRequired",) . toJSON) _gameLiftMatchmakingConfigurationAcceptanceRequired
        , fmap (("AcceptanceTimeoutSeconds",) . toJSON) _gameLiftMatchmakingConfigurationAcceptanceTimeoutSeconds
        , fmap (("AdditionalPlayerCount",) . toJSON) _gameLiftMatchmakingConfigurationAdditionalPlayerCount
        , fmap (("BackfillMode",) . toJSON) _gameLiftMatchmakingConfigurationBackfillMode
        , fmap (("CustomEventData",) . toJSON) _gameLiftMatchmakingConfigurationCustomEventData
        , fmap (("Description",) . toJSON) _gameLiftMatchmakingConfigurationDescription
        , fmap (("GameProperties",) . toJSON) _gameLiftMatchmakingConfigurationGameProperties
        , fmap (("GameSessionData",) . toJSON) _gameLiftMatchmakingConfigurationGameSessionData
        , (Just . ("GameSessionQueueArns",) . toJSON) _gameLiftMatchmakingConfigurationGameSessionQueueArns
        , (Just . ("Name",) . toJSON) _gameLiftMatchmakingConfigurationName
        , fmap (("NotificationTarget",) . toJSON) _gameLiftMatchmakingConfigurationNotificationTarget
        , (Just . ("RequestTimeoutSeconds",) . toJSON) _gameLiftMatchmakingConfigurationRequestTimeoutSeconds
        , (Just . ("RuleSetName",) . toJSON) _gameLiftMatchmakingConfigurationRuleSetName
        ]
    }

-- | Constructor for 'GameLiftMatchmakingConfiguration' containing required
-- fields as arguments.
gameLiftMatchmakingConfiguration
  :: Val Bool -- ^ 'glmcAcceptanceRequired'
  -> ValList Text -- ^ 'glmcGameSessionQueueArns'
  -> Val Text -- ^ 'glmcName'
  -> Val Integer -- ^ 'glmcRequestTimeoutSeconds'
  -> Val Text -- ^ 'glmcRuleSetName'
  -> GameLiftMatchmakingConfiguration
gameLiftMatchmakingConfiguration acceptanceRequiredarg gameSessionQueueArnsarg namearg requestTimeoutSecondsarg ruleSetNamearg =
  GameLiftMatchmakingConfiguration
  { _gameLiftMatchmakingConfigurationAcceptanceRequired = acceptanceRequiredarg
  , _gameLiftMatchmakingConfigurationAcceptanceTimeoutSeconds = Nothing
  , _gameLiftMatchmakingConfigurationAdditionalPlayerCount = Nothing
  , _gameLiftMatchmakingConfigurationBackfillMode = Nothing
  , _gameLiftMatchmakingConfigurationCustomEventData = Nothing
  , _gameLiftMatchmakingConfigurationDescription = Nothing
  , _gameLiftMatchmakingConfigurationGameProperties = Nothing
  , _gameLiftMatchmakingConfigurationGameSessionData = Nothing
  , _gameLiftMatchmakingConfigurationGameSessionQueueArns = gameSessionQueueArnsarg
  , _gameLiftMatchmakingConfigurationName = namearg
  , _gameLiftMatchmakingConfigurationNotificationTarget = Nothing
  , _gameLiftMatchmakingConfigurationRequestTimeoutSeconds = requestTimeoutSecondsarg
  , _gameLiftMatchmakingConfigurationRuleSetName = ruleSetNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-acceptancerequired
glmcAcceptanceRequired :: Lens' GameLiftMatchmakingConfiguration (Val Bool)
glmcAcceptanceRequired = lens _gameLiftMatchmakingConfigurationAcceptanceRequired (\s a -> s { _gameLiftMatchmakingConfigurationAcceptanceRequired = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-acceptancetimeoutseconds
glmcAcceptanceTimeoutSeconds :: Lens' GameLiftMatchmakingConfiguration (Maybe (Val Integer))
glmcAcceptanceTimeoutSeconds = lens _gameLiftMatchmakingConfigurationAcceptanceTimeoutSeconds (\s a -> s { _gameLiftMatchmakingConfigurationAcceptanceTimeoutSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-additionalplayercount
glmcAdditionalPlayerCount :: Lens' GameLiftMatchmakingConfiguration (Maybe (Val Integer))
glmcAdditionalPlayerCount = lens _gameLiftMatchmakingConfigurationAdditionalPlayerCount (\s a -> s { _gameLiftMatchmakingConfigurationAdditionalPlayerCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-backfillmode
glmcBackfillMode :: Lens' GameLiftMatchmakingConfiguration (Maybe (Val Text))
glmcBackfillMode = lens _gameLiftMatchmakingConfigurationBackfillMode (\s a -> s { _gameLiftMatchmakingConfigurationBackfillMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-customeventdata
glmcCustomEventData :: Lens' GameLiftMatchmakingConfiguration (Maybe (Val Text))
glmcCustomEventData = lens _gameLiftMatchmakingConfigurationCustomEventData (\s a -> s { _gameLiftMatchmakingConfigurationCustomEventData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-description
glmcDescription :: Lens' GameLiftMatchmakingConfiguration (Maybe (Val Text))
glmcDescription = lens _gameLiftMatchmakingConfigurationDescription (\s a -> s { _gameLiftMatchmakingConfigurationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-gameproperties
glmcGameProperties :: Lens' GameLiftMatchmakingConfiguration (Maybe [GameLiftMatchmakingConfigurationGameProperty])
glmcGameProperties = lens _gameLiftMatchmakingConfigurationGameProperties (\s a -> s { _gameLiftMatchmakingConfigurationGameProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-gamesessiondata
glmcGameSessionData :: Lens' GameLiftMatchmakingConfiguration (Maybe (Val Text))
glmcGameSessionData = lens _gameLiftMatchmakingConfigurationGameSessionData (\s a -> s { _gameLiftMatchmakingConfigurationGameSessionData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-gamesessionqueuearns
glmcGameSessionQueueArns :: Lens' GameLiftMatchmakingConfiguration (ValList Text)
glmcGameSessionQueueArns = lens _gameLiftMatchmakingConfigurationGameSessionQueueArns (\s a -> s { _gameLiftMatchmakingConfigurationGameSessionQueueArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-name
glmcName :: Lens' GameLiftMatchmakingConfiguration (Val Text)
glmcName = lens _gameLiftMatchmakingConfigurationName (\s a -> s { _gameLiftMatchmakingConfigurationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-notificationtarget
glmcNotificationTarget :: Lens' GameLiftMatchmakingConfiguration (Maybe (Val Text))
glmcNotificationTarget = lens _gameLiftMatchmakingConfigurationNotificationTarget (\s a -> s { _gameLiftMatchmakingConfigurationNotificationTarget = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-requesttimeoutseconds
glmcRequestTimeoutSeconds :: Lens' GameLiftMatchmakingConfiguration (Val Integer)
glmcRequestTimeoutSeconds = lens _gameLiftMatchmakingConfigurationRequestTimeoutSeconds (\s a -> s { _gameLiftMatchmakingConfigurationRequestTimeoutSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-rulesetname
glmcRuleSetName :: Lens' GameLiftMatchmakingConfiguration (Val Text)
glmcRuleSetName = lens _gameLiftMatchmakingConfigurationRuleSetName (\s a -> s { _gameLiftMatchmakingConfigurationRuleSetName = a })
