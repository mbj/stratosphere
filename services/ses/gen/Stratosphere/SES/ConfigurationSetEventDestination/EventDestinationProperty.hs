module Stratosphere.SES.ConfigurationSetEventDestination.EventDestinationProperty (
        module Exports, EventDestinationProperty(..),
        mkEventDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSetEventDestination.CloudWatchDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSetEventDestination.EventBridgeDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSetEventDestination.KinesisFirehoseDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.ConfigurationSetEventDestination.SnsDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html>
    EventDestinationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-cloudwatchdestination>
                              cloudWatchDestination :: (Prelude.Maybe CloudWatchDestinationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-enabled>
                              enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-eventbridgedestination>
                              eventBridgeDestination :: (Prelude.Maybe EventBridgeDestinationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-kinesisfirehosedestination>
                              kinesisFirehoseDestination :: (Prelude.Maybe KinesisFirehoseDestinationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-matchingeventtypes>
                              matchingEventTypes :: (ValueList Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-name>
                              name :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-snsdestination>
                              snsDestination :: (Prelude.Maybe SnsDestinationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventDestinationProperty ::
  ValueList Prelude.Text -> EventDestinationProperty
mkEventDestinationProperty matchingEventTypes
  = EventDestinationProperty
      {haddock_workaround_ = (), matchingEventTypes = matchingEventTypes,
       cloudWatchDestination = Prelude.Nothing, enabled = Prelude.Nothing,
       eventBridgeDestination = Prelude.Nothing,
       kinesisFirehoseDestination = Prelude.Nothing,
       name = Prelude.Nothing, snsDestination = Prelude.Nothing}
instance ToResourceProperties EventDestinationProperty where
  toResourceProperties EventDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSetEventDestination.EventDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MatchingEventTypes" JSON..= matchingEventTypes]
                           (Prelude.catMaybes
                              [(JSON..=) "CloudWatchDestination"
                                 Prelude.<$> cloudWatchDestination,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "EventBridgeDestination"
                                 Prelude.<$> eventBridgeDestination,
                               (JSON..=) "KinesisFirehoseDestination"
                                 Prelude.<$> kinesisFirehoseDestination,
                               (JSON..=) "Name" Prelude.<$> name,
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
                  (JSON..=) "EventBridgeDestination"
                    Prelude.<$> eventBridgeDestination,
                  (JSON..=) "KinesisFirehoseDestination"
                    Prelude.<$> kinesisFirehoseDestination,
                  (JSON..=) "Name" Prelude.<$> name,
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
instance Property "EventBridgeDestination" EventDestinationProperty where
  type PropertyType "EventBridgeDestination" EventDestinationProperty = EventBridgeDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {eventBridgeDestination = Prelude.pure newValue, ..}
instance Property "KinesisFirehoseDestination" EventDestinationProperty where
  type PropertyType "KinesisFirehoseDestination" EventDestinationProperty = KinesisFirehoseDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {kinesisFirehoseDestination = Prelude.pure newValue, ..}
instance Property "MatchingEventTypes" EventDestinationProperty where
  type PropertyType "MatchingEventTypes" EventDestinationProperty = ValueList Prelude.Text
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty {matchingEventTypes = newValue, ..}
instance Property "Name" EventDestinationProperty where
  type PropertyType "Name" EventDestinationProperty = Value Prelude.Text
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty {name = Prelude.pure newValue, ..}
instance Property "SnsDestination" EventDestinationProperty where
  type PropertyType "SnsDestination" EventDestinationProperty = SnsDestinationProperty
  set newValue EventDestinationProperty {..}
    = EventDestinationProperty
        {snsDestination = Prelude.pure newValue, ..}