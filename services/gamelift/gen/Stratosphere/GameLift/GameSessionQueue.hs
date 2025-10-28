module Stratosphere.GameLift.GameSessionQueue (
        module Exports, GameSessionQueue(..), mkGameSessionQueue
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.GameSessionQueue.FilterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.GameSessionQueue.GameSessionQueueDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.GameSessionQueue.PlayerLatencyPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.GameSessionQueue.PriorityConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data GameSessionQueue
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html>
    GameSessionQueue {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-customeventdata>
                      customEventData :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-destinations>
                      destinations :: (Prelude.Maybe [GameSessionQueueDestinationProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-filterconfiguration>
                      filterConfiguration :: (Prelude.Maybe FilterConfigurationProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-name>
                      name :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-notificationtarget>
                      notificationTarget :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-playerlatencypolicies>
                      playerLatencyPolicies :: (Prelude.Maybe [PlayerLatencyPolicyProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-priorityconfiguration>
                      priorityConfiguration :: (Prelude.Maybe PriorityConfigurationProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-tags>
                      tags :: (Prelude.Maybe [Tag]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-gamesessionqueue.html#cfn-gamelift-gamesessionqueue-timeoutinseconds>
                      timeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGameSessionQueue :: Value Prelude.Text -> GameSessionQueue
mkGameSessionQueue name
  = GameSessionQueue
      {haddock_workaround_ = (), name = name,
       customEventData = Prelude.Nothing, destinations = Prelude.Nothing,
       filterConfiguration = Prelude.Nothing,
       notificationTarget = Prelude.Nothing,
       playerLatencyPolicies = Prelude.Nothing,
       priorityConfiguration = Prelude.Nothing, tags = Prelude.Nothing,
       timeoutInSeconds = Prelude.Nothing}
instance ToResourceProperties GameSessionQueue where
  toResourceProperties GameSessionQueue {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameSessionQueue",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomEventData" Prelude.<$> customEventData,
                               (JSON..=) "Destinations" Prelude.<$> destinations,
                               (JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration,
                               (JSON..=) "NotificationTarget" Prelude.<$> notificationTarget,
                               (JSON..=) "PlayerLatencyPolicies"
                                 Prelude.<$> playerLatencyPolicies,
                               (JSON..=) "PriorityConfiguration"
                                 Prelude.<$> priorityConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TimeoutInSeconds" Prelude.<$> timeoutInSeconds]))}
instance JSON.ToJSON GameSessionQueue where
  toJSON GameSessionQueue {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CustomEventData" Prelude.<$> customEventData,
                  (JSON..=) "Destinations" Prelude.<$> destinations,
                  (JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration,
                  (JSON..=) "NotificationTarget" Prelude.<$> notificationTarget,
                  (JSON..=) "PlayerLatencyPolicies"
                    Prelude.<$> playerLatencyPolicies,
                  (JSON..=) "PriorityConfiguration"
                    Prelude.<$> priorityConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TimeoutInSeconds" Prelude.<$> timeoutInSeconds])))
instance Property "CustomEventData" GameSessionQueue where
  type PropertyType "CustomEventData" GameSessionQueue = Value Prelude.Text
  set newValue GameSessionQueue {..}
    = GameSessionQueue {customEventData = Prelude.pure newValue, ..}
instance Property "Destinations" GameSessionQueue where
  type PropertyType "Destinations" GameSessionQueue = [GameSessionQueueDestinationProperty]
  set newValue GameSessionQueue {..}
    = GameSessionQueue {destinations = Prelude.pure newValue, ..}
instance Property "FilterConfiguration" GameSessionQueue where
  type PropertyType "FilterConfiguration" GameSessionQueue = FilterConfigurationProperty
  set newValue GameSessionQueue {..}
    = GameSessionQueue
        {filterConfiguration = Prelude.pure newValue, ..}
instance Property "Name" GameSessionQueue where
  type PropertyType "Name" GameSessionQueue = Value Prelude.Text
  set newValue GameSessionQueue {..}
    = GameSessionQueue {name = newValue, ..}
instance Property "NotificationTarget" GameSessionQueue where
  type PropertyType "NotificationTarget" GameSessionQueue = Value Prelude.Text
  set newValue GameSessionQueue {..}
    = GameSessionQueue {notificationTarget = Prelude.pure newValue, ..}
instance Property "PlayerLatencyPolicies" GameSessionQueue where
  type PropertyType "PlayerLatencyPolicies" GameSessionQueue = [PlayerLatencyPolicyProperty]
  set newValue GameSessionQueue {..}
    = GameSessionQueue
        {playerLatencyPolicies = Prelude.pure newValue, ..}
instance Property "PriorityConfiguration" GameSessionQueue where
  type PropertyType "PriorityConfiguration" GameSessionQueue = PriorityConfigurationProperty
  set newValue GameSessionQueue {..}
    = GameSessionQueue
        {priorityConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" GameSessionQueue where
  type PropertyType "Tags" GameSessionQueue = [Tag]
  set newValue GameSessionQueue {..}
    = GameSessionQueue {tags = Prelude.pure newValue, ..}
instance Property "TimeoutInSeconds" GameSessionQueue where
  type PropertyType "TimeoutInSeconds" GameSessionQueue = Value Prelude.Integer
  set newValue GameSessionQueue {..}
    = GameSessionQueue {timeoutInSeconds = Prelude.pure newValue, ..}