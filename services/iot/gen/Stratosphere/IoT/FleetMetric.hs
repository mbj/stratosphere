module Stratosphere.IoT.FleetMetric (
        module Exports, FleetMetric(..), mkFleetMetric
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.FleetMetric.AggregationTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FleetMetric
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-fleetmetric.html>
    FleetMetric {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-fleetmetric.html#cfn-iot-fleetmetric-aggregationfield>
                 aggregationField :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-fleetmetric.html#cfn-iot-fleetmetric-aggregationtype>
                 aggregationType :: (Prelude.Maybe AggregationTypeProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-fleetmetric.html#cfn-iot-fleetmetric-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-fleetmetric.html#cfn-iot-fleetmetric-indexname>
                 indexName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-fleetmetric.html#cfn-iot-fleetmetric-metricname>
                 metricName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-fleetmetric.html#cfn-iot-fleetmetric-period>
                 period :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-fleetmetric.html#cfn-iot-fleetmetric-querystring>
                 queryString :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-fleetmetric.html#cfn-iot-fleetmetric-queryversion>
                 queryVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-fleetmetric.html#cfn-iot-fleetmetric-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-fleetmetric.html#cfn-iot-fleetmetric-unit>
                 unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleetMetric :: Value Prelude.Text -> FleetMetric
mkFleetMetric metricName
  = FleetMetric
      {haddock_workaround_ = (), metricName = metricName,
       aggregationField = Prelude.Nothing,
       aggregationType = Prelude.Nothing, description = Prelude.Nothing,
       indexName = Prelude.Nothing, period = Prelude.Nothing,
       queryString = Prelude.Nothing, queryVersion = Prelude.Nothing,
       tags = Prelude.Nothing, unit = Prelude.Nothing}
instance ToResourceProperties FleetMetric where
  toResourceProperties FleetMetric {..}
    = ResourceProperties
        {awsType = "AWS::IoT::FleetMetric", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricName" JSON..= metricName]
                           (Prelude.catMaybes
                              [(JSON..=) "AggregationField" Prelude.<$> aggregationField,
                               (JSON..=) "AggregationType" Prelude.<$> aggregationType,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "IndexName" Prelude.<$> indexName,
                               (JSON..=) "Period" Prelude.<$> period,
                               (JSON..=) "QueryString" Prelude.<$> queryString,
                               (JSON..=) "QueryVersion" Prelude.<$> queryVersion,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON FleetMetric where
  toJSON FleetMetric {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricName" JSON..= metricName]
              (Prelude.catMaybes
                 [(JSON..=) "AggregationField" Prelude.<$> aggregationField,
                  (JSON..=) "AggregationType" Prelude.<$> aggregationType,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "IndexName" Prelude.<$> indexName,
                  (JSON..=) "Period" Prelude.<$> period,
                  (JSON..=) "QueryString" Prelude.<$> queryString,
                  (JSON..=) "QueryVersion" Prelude.<$> queryVersion,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "AggregationField" FleetMetric where
  type PropertyType "AggregationField" FleetMetric = Value Prelude.Text
  set newValue FleetMetric {..}
    = FleetMetric {aggregationField = Prelude.pure newValue, ..}
instance Property "AggregationType" FleetMetric where
  type PropertyType "AggregationType" FleetMetric = AggregationTypeProperty
  set newValue FleetMetric {..}
    = FleetMetric {aggregationType = Prelude.pure newValue, ..}
instance Property "Description" FleetMetric where
  type PropertyType "Description" FleetMetric = Value Prelude.Text
  set newValue FleetMetric {..}
    = FleetMetric {description = Prelude.pure newValue, ..}
instance Property "IndexName" FleetMetric where
  type PropertyType "IndexName" FleetMetric = Value Prelude.Text
  set newValue FleetMetric {..}
    = FleetMetric {indexName = Prelude.pure newValue, ..}
instance Property "MetricName" FleetMetric where
  type PropertyType "MetricName" FleetMetric = Value Prelude.Text
  set newValue FleetMetric {..}
    = FleetMetric {metricName = newValue, ..}
instance Property "Period" FleetMetric where
  type PropertyType "Period" FleetMetric = Value Prelude.Integer
  set newValue FleetMetric {..}
    = FleetMetric {period = Prelude.pure newValue, ..}
instance Property "QueryString" FleetMetric where
  type PropertyType "QueryString" FleetMetric = Value Prelude.Text
  set newValue FleetMetric {..}
    = FleetMetric {queryString = Prelude.pure newValue, ..}
instance Property "QueryVersion" FleetMetric where
  type PropertyType "QueryVersion" FleetMetric = Value Prelude.Text
  set newValue FleetMetric {..}
    = FleetMetric {queryVersion = Prelude.pure newValue, ..}
instance Property "Tags" FleetMetric where
  type PropertyType "Tags" FleetMetric = [Tag]
  set newValue FleetMetric {..}
    = FleetMetric {tags = Prelude.pure newValue, ..}
instance Property "Unit" FleetMetric where
  type PropertyType "Unit" FleetMetric = Value Prelude.Text
  set newValue FleetMetric {..}
    = FleetMetric {unit = Prelude.pure newValue, ..}