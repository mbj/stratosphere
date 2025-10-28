module Stratosphere.RUM.AppMonitor.MetricDestinationProperty (
        module Exports, MetricDestinationProperty(..),
        mkMetricDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RUM.AppMonitor.MetricDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-metricdestination.html>
    MetricDestinationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-metricdestination.html#cfn-rum-appmonitor-metricdestination-destination>
                               destination :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-metricdestination.html#cfn-rum-appmonitor-metricdestination-destinationarn>
                               destinationArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-metricdestination.html#cfn-rum-appmonitor-metricdestination-iamrolearn>
                               iamRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-metricdestination.html#cfn-rum-appmonitor-metricdestination-metricdefinitions>
                               metricDefinitions :: (Prelude.Maybe [MetricDefinitionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricDestinationProperty ::
  Value Prelude.Text -> MetricDestinationProperty
mkMetricDestinationProperty destination
  = MetricDestinationProperty
      {haddock_workaround_ = (), destination = destination,
       destinationArn = Prelude.Nothing, iamRoleArn = Prelude.Nothing,
       metricDefinitions = Prelude.Nothing}
instance ToResourceProperties MetricDestinationProperty where
  toResourceProperties MetricDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RUM::AppMonitor.MetricDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Destination" JSON..= destination]
                           (Prelude.catMaybes
                              [(JSON..=) "DestinationArn" Prelude.<$> destinationArn,
                               (JSON..=) "IamRoleArn" Prelude.<$> iamRoleArn,
                               (JSON..=) "MetricDefinitions" Prelude.<$> metricDefinitions]))}
instance JSON.ToJSON MetricDestinationProperty where
  toJSON MetricDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Destination" JSON..= destination]
              (Prelude.catMaybes
                 [(JSON..=) "DestinationArn" Prelude.<$> destinationArn,
                  (JSON..=) "IamRoleArn" Prelude.<$> iamRoleArn,
                  (JSON..=) "MetricDefinitions" Prelude.<$> metricDefinitions])))
instance Property "Destination" MetricDestinationProperty where
  type PropertyType "Destination" MetricDestinationProperty = Value Prelude.Text
  set newValue MetricDestinationProperty {..}
    = MetricDestinationProperty {destination = newValue, ..}
instance Property "DestinationArn" MetricDestinationProperty where
  type PropertyType "DestinationArn" MetricDestinationProperty = Value Prelude.Text
  set newValue MetricDestinationProperty {..}
    = MetricDestinationProperty
        {destinationArn = Prelude.pure newValue, ..}
instance Property "IamRoleArn" MetricDestinationProperty where
  type PropertyType "IamRoleArn" MetricDestinationProperty = Value Prelude.Text
  set newValue MetricDestinationProperty {..}
    = MetricDestinationProperty
        {iamRoleArn = Prelude.pure newValue, ..}
instance Property "MetricDefinitions" MetricDestinationProperty where
  type PropertyType "MetricDefinitions" MetricDestinationProperty = [MetricDefinitionProperty]
  set newValue MetricDestinationProperty {..}
    = MetricDestinationProperty
        {metricDefinitions = Prelude.pure newValue, ..}