module Stratosphere.GameLift.MatchmakingConfiguration (
        module Exports, MatchmakingConfiguration(..),
        mkMatchmakingConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.MatchmakingConfiguration.GamePropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MatchmakingConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html>
    MatchmakingConfiguration {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-acceptancerequired>
                              acceptanceRequired :: (Value Prelude.Bool),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-acceptancetimeoutseconds>
                              acceptanceTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-additionalplayercount>
                              additionalPlayerCount :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-backfillmode>
                              backfillMode :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-creationtime>
                              creationTime :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-customeventdata>
                              customEventData :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-flexmatchmode>
                              flexMatchMode :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-gameproperties>
                              gameProperties :: (Prelude.Maybe [GamePropertyProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-gamesessiondata>
                              gameSessionData :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-gamesessionqueuearns>
                              gameSessionQueueArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-name>
                              name :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-notificationtarget>
                              notificationTarget :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-requesttimeoutseconds>
                              requestTimeoutSeconds :: (Value Prelude.Integer),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-rulesetarn>
                              ruleSetArn :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-rulesetname>
                              ruleSetName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-matchmakingconfiguration.html#cfn-gamelift-matchmakingconfiguration-tags>
                              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchmakingConfiguration ::
  Value Prelude.Bool
  -> Value Prelude.Text
     -> Value Prelude.Integer
        -> Value Prelude.Text -> MatchmakingConfiguration
mkMatchmakingConfiguration
  acceptanceRequired
  name
  requestTimeoutSeconds
  ruleSetName
  = MatchmakingConfiguration
      {haddock_workaround_ = (), acceptanceRequired = acceptanceRequired,
       name = name, requestTimeoutSeconds = requestTimeoutSeconds,
       ruleSetName = ruleSetName,
       acceptanceTimeoutSeconds = Prelude.Nothing,
       additionalPlayerCount = Prelude.Nothing,
       backfillMode = Prelude.Nothing, creationTime = Prelude.Nothing,
       customEventData = Prelude.Nothing, description = Prelude.Nothing,
       flexMatchMode = Prelude.Nothing, gameProperties = Prelude.Nothing,
       gameSessionData = Prelude.Nothing,
       gameSessionQueueArns = Prelude.Nothing,
       notificationTarget = Prelude.Nothing, ruleSetArn = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties MatchmakingConfiguration where
  toResourceProperties MatchmakingConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::MatchmakingConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AcceptanceRequired" JSON..= acceptanceRequired,
                            "Name" JSON..= name,
                            "RequestTimeoutSeconds" JSON..= requestTimeoutSeconds,
                            "RuleSetName" JSON..= ruleSetName]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceptanceTimeoutSeconds"
                                 Prelude.<$> acceptanceTimeoutSeconds,
                               (JSON..=) "AdditionalPlayerCount"
                                 Prelude.<$> additionalPlayerCount,
                               (JSON..=) "BackfillMode" Prelude.<$> backfillMode,
                               (JSON..=) "CreationTime" Prelude.<$> creationTime,
                               (JSON..=) "CustomEventData" Prelude.<$> customEventData,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FlexMatchMode" Prelude.<$> flexMatchMode,
                               (JSON..=) "GameProperties" Prelude.<$> gameProperties,
                               (JSON..=) "GameSessionData" Prelude.<$> gameSessionData,
                               (JSON..=) "GameSessionQueueArns" Prelude.<$> gameSessionQueueArns,
                               (JSON..=) "NotificationTarget" Prelude.<$> notificationTarget,
                               (JSON..=) "RuleSetArn" Prelude.<$> ruleSetArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MatchmakingConfiguration where
  toJSON MatchmakingConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AcceptanceRequired" JSON..= acceptanceRequired,
               "Name" JSON..= name,
               "RequestTimeoutSeconds" JSON..= requestTimeoutSeconds,
               "RuleSetName" JSON..= ruleSetName]
              (Prelude.catMaybes
                 [(JSON..=) "AcceptanceTimeoutSeconds"
                    Prelude.<$> acceptanceTimeoutSeconds,
                  (JSON..=) "AdditionalPlayerCount"
                    Prelude.<$> additionalPlayerCount,
                  (JSON..=) "BackfillMode" Prelude.<$> backfillMode,
                  (JSON..=) "CreationTime" Prelude.<$> creationTime,
                  (JSON..=) "CustomEventData" Prelude.<$> customEventData,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FlexMatchMode" Prelude.<$> flexMatchMode,
                  (JSON..=) "GameProperties" Prelude.<$> gameProperties,
                  (JSON..=) "GameSessionData" Prelude.<$> gameSessionData,
                  (JSON..=) "GameSessionQueueArns" Prelude.<$> gameSessionQueueArns,
                  (JSON..=) "NotificationTarget" Prelude.<$> notificationTarget,
                  (JSON..=) "RuleSetArn" Prelude.<$> ruleSetArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AcceptanceRequired" MatchmakingConfiguration where
  type PropertyType "AcceptanceRequired" MatchmakingConfiguration = Value Prelude.Bool
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration {acceptanceRequired = newValue, ..}
instance Property "AcceptanceTimeoutSeconds" MatchmakingConfiguration where
  type PropertyType "AcceptanceTimeoutSeconds" MatchmakingConfiguration = Value Prelude.Integer
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration
        {acceptanceTimeoutSeconds = Prelude.pure newValue, ..}
instance Property "AdditionalPlayerCount" MatchmakingConfiguration where
  type PropertyType "AdditionalPlayerCount" MatchmakingConfiguration = Value Prelude.Integer
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration
        {additionalPlayerCount = Prelude.pure newValue, ..}
instance Property "BackfillMode" MatchmakingConfiguration where
  type PropertyType "BackfillMode" MatchmakingConfiguration = Value Prelude.Text
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration
        {backfillMode = Prelude.pure newValue, ..}
instance Property "CreationTime" MatchmakingConfiguration where
  type PropertyType "CreationTime" MatchmakingConfiguration = Value Prelude.Text
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration
        {creationTime = Prelude.pure newValue, ..}
instance Property "CustomEventData" MatchmakingConfiguration where
  type PropertyType "CustomEventData" MatchmakingConfiguration = Value Prelude.Text
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration
        {customEventData = Prelude.pure newValue, ..}
instance Property "Description" MatchmakingConfiguration where
  type PropertyType "Description" MatchmakingConfiguration = Value Prelude.Text
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration
        {description = Prelude.pure newValue, ..}
instance Property "FlexMatchMode" MatchmakingConfiguration where
  type PropertyType "FlexMatchMode" MatchmakingConfiguration = Value Prelude.Text
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration
        {flexMatchMode = Prelude.pure newValue, ..}
instance Property "GameProperties" MatchmakingConfiguration where
  type PropertyType "GameProperties" MatchmakingConfiguration = [GamePropertyProperty]
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration
        {gameProperties = Prelude.pure newValue, ..}
instance Property "GameSessionData" MatchmakingConfiguration where
  type PropertyType "GameSessionData" MatchmakingConfiguration = Value Prelude.Text
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration
        {gameSessionData = Prelude.pure newValue, ..}
instance Property "GameSessionQueueArns" MatchmakingConfiguration where
  type PropertyType "GameSessionQueueArns" MatchmakingConfiguration = ValueList Prelude.Text
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration
        {gameSessionQueueArns = Prelude.pure newValue, ..}
instance Property "Name" MatchmakingConfiguration where
  type PropertyType "Name" MatchmakingConfiguration = Value Prelude.Text
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration {name = newValue, ..}
instance Property "NotificationTarget" MatchmakingConfiguration where
  type PropertyType "NotificationTarget" MatchmakingConfiguration = Value Prelude.Text
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration
        {notificationTarget = Prelude.pure newValue, ..}
instance Property "RequestTimeoutSeconds" MatchmakingConfiguration where
  type PropertyType "RequestTimeoutSeconds" MatchmakingConfiguration = Value Prelude.Integer
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration {requestTimeoutSeconds = newValue, ..}
instance Property "RuleSetArn" MatchmakingConfiguration where
  type PropertyType "RuleSetArn" MatchmakingConfiguration = Value Prelude.Text
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration {ruleSetArn = Prelude.pure newValue, ..}
instance Property "RuleSetName" MatchmakingConfiguration where
  type PropertyType "RuleSetName" MatchmakingConfiguration = Value Prelude.Text
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration {ruleSetName = newValue, ..}
instance Property "Tags" MatchmakingConfiguration where
  type PropertyType "Tags" MatchmakingConfiguration = [Tag]
  set newValue MatchmakingConfiguration {..}
    = MatchmakingConfiguration {tags = Prelude.pure newValue, ..}