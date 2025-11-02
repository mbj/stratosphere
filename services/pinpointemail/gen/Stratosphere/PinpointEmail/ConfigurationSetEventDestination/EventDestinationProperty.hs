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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html>
    EventDestinationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-cloudwatchdestination>
                              cloudWatchDestination :: (Prelude.Maybe CloudWatchDestinationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-enabled>
                              enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-kinesisfirehosedestination>
                              kinesisFirehoseDestination :: (Prelude.Maybe KinesisFirehoseDestinationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-matchingeventtypes>
                              matchingEventTypes :: (ValueList Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-pinpointdestination>
                              pinpointDestination :: (Prelude.Maybe PinpointDestinationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-snsdestination>
                              snsDestination :: (Prelude.Maybe SnsDestinationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventDestinationProperty ::
  ValueList Prelude.Text -> EventDestinationProperty
mkEventDestinationProperty matchingEventTypes
  = EventDestinationProperty
      {haddock_workaround_ = (), matchingEventTypes = matchingEventTypes,
       cloudWatchDestination = Prelude.Nothing, enabled = Prelude.Nothing,
       kinesisFirehoseDestination = Prelude.Nothing,
       pinpointDestination = Prelude.Nothing,
       snsDestination = Prelude.Nothing}
instance ToResourceProperties EventDestinationProperty where
  toResourceProperties EventDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::ConfigurationSetEventDestination.EventDestination",
         supportsTags = Prelude.False,
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
  type PropertyType "MatchingEventTypes" EventDestinationProperty = ValueList Prelude.Text
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