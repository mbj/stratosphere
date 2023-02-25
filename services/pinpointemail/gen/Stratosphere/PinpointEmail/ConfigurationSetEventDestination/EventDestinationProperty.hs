module Stratosphere.PinpointEmail.ConfigurationSetEventDestination.EventDestinationProperty (
        module Exports, EventDestinationProperty(..),
        mkEventDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PinpointEmail.ConfigurationSetEventDestination.CloudWatchDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.PinpointEmail.ConfigurationSetEventDestination.KinesisFirehoseDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.PinpointEmail.ConfigurationSetEventDestination.PinpointDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.PinpointEmail.ConfigurationSetEventDestination.SnsDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventDestinationProperty
  = EventDestinationProperty {cloudWatchDestination :: (Prelude.Maybe CloudWatchDestinationProperty),
                              enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                              kinesisFirehoseDestination :: (Prelude.Maybe KinesisFirehoseDestinationProperty),
                              matchingEventTypes :: (ValueList (Value Prelude.Text)),
                              pinpointDestination :: (Prelude.Maybe PinpointDestinationProperty),
                              snsDestination :: (Prelude.Maybe SnsDestinationProperty)}
mkEventDestinationProperty ::
  ValueList (Value Prelude.Text) -> EventDestinationProperty
mkEventDestinationProperty matchingEventTypes
  = EventDestinationProperty
      {matchingEventTypes = matchingEventTypes,
       cloudWatchDestination = Prelude.Nothing, enabled = Prelude.Nothing,
       kinesisFirehoseDestination = Prelude.Nothing,
       pinpointDestination = Prelude.Nothing,
       snsDestination = Prelude.Nothing}
instance ToResourceProperties EventDestinationProperty where
  toResourceProperties EventDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::ConfigurationSetEventDestination.EventDestination",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MatchingEventTypes" JSON..= matchingEventTypes]
                           (Prelude.catMaybes
                              [(JSON..=) "CloudWatchDestination"
                                 Prelude.<$> cloudWatchDestination,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "KinesisFirehoseDestination"
                                 Prelude.<$> kinesisFirehoseDestination,
                               (JSON..=) "PinpointDestination" Prelude.<$> pinpointDestination,
                               (JSON..=) "SnsDestination" Prelude.<$> snsDestination]))}
instance JSON.ToJSON EventDestinationProperty where
  toJSON EventDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MatchingEventTypes" JSON..= matchingEventTypes]
              (Prelude.catMaybes
                 [(JSON..=) "CloudWatchDestination"
                    Prelude.<$> cloudWatchDestination,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "KinesisFirehoseDestination"
                    Prelude.<$> kinesisFirehoseDestination,
                  (JSON..=) "PinpointDestination" Prelude.<$> pinpointDestination,
                  (JSON..=) "SnsDestination" Prelude.<$> snsDestination])))
instance Property "CloudWatchDestination" EventDestinationProperty where
  type PropertyType "CloudWatchDestination" EventDestinationProperty = CloudWatchDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {cloudWatchDestination = Prelude.pure newValue, ..}
instance Property "Enabled" EventDestinationProperty where
  type PropertyType "Enabled" EventDestinationProperty = Value Prelude.Bool
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty {enabled = Prelude.pure newValue, ..}
instance Property "KinesisFirehoseDestination" EventDestinationProperty where
  type PropertyType "KinesisFirehoseDestination" EventDestinationProperty = KinesisFirehoseDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {kinesisFirehoseDestination = Prelude.pure newValue, ..}
instance Property "MatchingEventTypes" EventDestinationProperty where
  type PropertyType "MatchingEventTypes" EventDestinationProperty = ValueList (Value Prelude.Text)
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty {matchingEventTypes = newValue, ..}
instance Property "PinpointDestination" EventDestinationProperty where
  type PropertyType "PinpointDestination" EventDestinationProperty = PinpointDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {pinpointDestination = Prelude.pure newValue, ..}
instance Property "SnsDestination" EventDestinationProperty where
  type PropertyType "SnsDestination" EventDestinationProperty = SnsDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {snsDestination = Prelude.pure newValue, ..}