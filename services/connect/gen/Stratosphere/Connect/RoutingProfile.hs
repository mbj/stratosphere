module Stratosphere.Connect.RoutingProfile (
        module Exports, RoutingProfile(..), mkRoutingProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.RoutingProfile.MediaConcurrencyProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.RoutingProfile.RoutingProfileQueueConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RoutingProfile
  = RoutingProfile {agentAvailabilityTimer :: (Prelude.Maybe (Value Prelude.Text)),
                    defaultOutboundQueueArn :: (Value Prelude.Text),
                    description :: (Value Prelude.Text),
                    instanceArn :: (Value Prelude.Text),
                    mediaConcurrencies :: [MediaConcurrencyProperty],
                    name :: (Value Prelude.Text),
                    queueConfigs :: (Prelude.Maybe [RoutingProfileQueueConfigProperty]),
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingProfile ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> [MediaConcurrencyProperty]
           -> Value Prelude.Text -> RoutingProfile
mkRoutingProfile
  defaultOutboundQueueArn
  description
  instanceArn
  mediaConcurrencies
  name
  = RoutingProfile
      {defaultOutboundQueueArn = defaultOutboundQueueArn,
       description = description, instanceArn = instanceArn,
       mediaConcurrencies = mediaConcurrencies, name = name,
       agentAvailabilityTimer = Prelude.Nothing,
       queueConfigs = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties RoutingProfile where
  toResourceProperties RoutingProfile {..}
    = ResourceProperties
        {awsType = "AWS::Connect::RoutingProfile",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultOutboundQueueArn" JSON..= defaultOutboundQueueArn,
                            "Description" JSON..= description,
                            "InstanceArn" JSON..= instanceArn,
                            "MediaConcurrencies" JSON..= mediaConcurrencies,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AgentAvailabilityTimer"
                                 Prelude.<$> agentAvailabilityTimer,
                               (JSON..=) "QueueConfigs" Prelude.<$> queueConfigs,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RoutingProfile where
  toJSON RoutingProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultOutboundQueueArn" JSON..= defaultOutboundQueueArn,
               "Description" JSON..= description,
               "InstanceArn" JSON..= instanceArn,
               "MediaConcurrencies" JSON..= mediaConcurrencies,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AgentAvailabilityTimer"
                    Prelude.<$> agentAvailabilityTimer,
                  (JSON..=) "QueueConfigs" Prelude.<$> queueConfigs,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AgentAvailabilityTimer" RoutingProfile where
  type PropertyType "AgentAvailabilityTimer" RoutingProfile = Value Prelude.Text
  set newValue RoutingProfile {..}
    = RoutingProfile
        {agentAvailabilityTimer = Prelude.pure newValue, ..}
instance Property "DefaultOutboundQueueArn" RoutingProfile where
  type PropertyType "DefaultOutboundQueueArn" RoutingProfile = Value Prelude.Text
  set newValue RoutingProfile {..}
    = RoutingProfile {defaultOutboundQueueArn = newValue, ..}
instance Property "Description" RoutingProfile where
  type PropertyType "Description" RoutingProfile = Value Prelude.Text
  set newValue RoutingProfile {..}
    = RoutingProfile {description = newValue, ..}
instance Property "InstanceArn" RoutingProfile where
  type PropertyType "InstanceArn" RoutingProfile = Value Prelude.Text
  set newValue RoutingProfile {..}
    = RoutingProfile {instanceArn = newValue, ..}
instance Property "MediaConcurrencies" RoutingProfile where
  type PropertyType "MediaConcurrencies" RoutingProfile = [MediaConcurrencyProperty]
  set newValue RoutingProfile {..}
    = RoutingProfile {mediaConcurrencies = newValue, ..}
instance Property "Name" RoutingProfile where
  type PropertyType "Name" RoutingProfile = Value Prelude.Text
  set newValue RoutingProfile {..}
    = RoutingProfile {name = newValue, ..}
instance Property "QueueConfigs" RoutingProfile where
  type PropertyType "QueueConfigs" RoutingProfile = [RoutingProfileQueueConfigProperty]
  set newValue RoutingProfile {..}
    = RoutingProfile {queueConfigs = Prelude.pure newValue, ..}
instance Property "Tags" RoutingProfile where
  type PropertyType "Tags" RoutingProfile = [Tag]
  set newValue RoutingProfile {..}
    = RoutingProfile {tags = Prelude.pure newValue, ..}