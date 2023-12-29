module Stratosphere.GameLift.GameSessionQueue (
        module Exports, GameSessionQueue(..), mkGameSessionQueue
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.GameSessionQueue.DestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.GameSessionQueue.FilterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.GameSessionQueue.PlayerLatencyPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.GameSessionQueue.PriorityConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data GameSessionQueue
  = GameSessionQueue {customEventData :: (Prelude.Maybe (Value Prelude.Text)),
                      destinations :: (Prelude.Maybe [DestinationProperty]),
                      filterConfiguration :: (Prelude.Maybe FilterConfigurationProperty),
                      name :: (Value Prelude.Text),
                      notificationTarget :: (Prelude.Maybe (Value Prelude.Text)),
                      playerLatencyPolicies :: (Prelude.Maybe [PlayerLatencyPolicyProperty]),
                      priorityConfiguration :: (Prelude.Maybe PriorityConfigurationProperty),
                      tags :: (Prelude.Maybe [Tag]),
                      timeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGameSessionQueue :: Value Prelude.Text -> GameSessionQueue
mkGameSessionQueue name
  = GameSessionQueue
      {name = name, customEventData = Prelude.Nothing,
       destinations = Prelude.Nothing,
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
  type PropertyType "Destinations" GameSessionQueue = [DestinationProperty]
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