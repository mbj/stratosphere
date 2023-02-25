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
  = FleetMetric {aggregationField :: (Prelude.Maybe (Value Prelude.Text)),
                 aggregationType :: (Prelude.Maybe AggregationTypeProperty),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 indexName :: (Prelude.Maybe (Value Prelude.Text)),
                 metricName :: (Value Prelude.Text),
                 period :: (Prelude.Maybe (Value Prelude.Integer)),
                 queryString :: (Prelude.Maybe (Value Prelude.Text)),
                 queryVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag]),
                 unit :: (Prelude.Maybe (Value Prelude.Text))}
mkFleetMetric :: Value Prelude.Text -> FleetMetric
mkFleetMetric metricName
  = FleetMetric
      {metricName = metricName, aggregationField = Prelude.Nothing,
       aggregationType = Prelude.Nothing, description = Prelude.Nothing,
       indexName = Prelude.Nothing, period = Prelude.Nothing,
       queryString = Prelude.Nothing, queryVersion = Prelude.Nothing,
       tags = Prelude.Nothing, unit = Prelude.Nothing}
instance ToResourceProperties FleetMetric where
  toResourceProperties FleetMetric {..}
    = ResourceProperties
        {awsType = "AWS::IoT::FleetMetric",
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