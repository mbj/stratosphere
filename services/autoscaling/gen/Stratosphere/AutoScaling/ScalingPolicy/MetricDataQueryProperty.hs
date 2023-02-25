module Stratosphere.AutoScaling.ScalingPolicy.MetricDataQueryProperty (
        module Exports, MetricDataQueryProperty(..),
        mkMetricDataQueryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.MetricStatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDataQueryProperty
  = MetricDataQueryProperty {expression :: (Prelude.Maybe (Value Prelude.Text)),
                             id :: (Value Prelude.Text),
                             label :: (Prelude.Maybe (Value Prelude.Text)),
                             metricStat :: (Prelude.Maybe MetricStatProperty),
                             returnData :: (Prelude.Maybe (Value Prelude.Bool))}
mkMetricDataQueryProperty ::
  Value Prelude.Text -> MetricDataQueryProperty
mkMetricDataQueryProperty id
  = MetricDataQueryProperty
      {id = id, expression = Prelude.Nothing, label = Prelude.Nothing,
       metricStat = Prelude.Nothing, returnData = Prelude.Nothing}
instance ToResourceProperties MetricDataQueryProperty where
  toResourceProperties MetricDataQueryProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.MetricDataQuery",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "Expression" Prelude.<$> expression,
                               (JSON..=) "Label" Prelude.<$> label,
                               (JSON..=) "MetricStat" Prelude.<$> metricStat,
                               (JSON..=) "ReturnData" Prelude.<$> returnData]))}
instance JSON.ToJSON MetricDataQueryProperty where
  toJSON MetricDataQueryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "Expression" Prelude.<$> expression,
                  (JSON..=) "Label" Prelude.<$> label,
                  (JSON..=) "MetricStat" Prelude.<$> metricStat,
                  (JSON..=) "ReturnData" Prelude.<$> returnData])))
instance Property "Expression" MetricDataQueryProperty where
  type PropertyType "Expression" MetricDataQueryProperty = Value Prelude.Text
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {expression = Prelude.pure newValue, ..}
instance Property "Id" MetricDataQueryProperty where
  type PropertyType "Id" MetricDataQueryProperty = Value Prelude.Text
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {id = newValue, ..}
instance Property "Label" MetricDataQueryProperty where
  type PropertyType "Label" MetricDataQueryProperty = Value Prelude.Text
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {label = Prelude.pure newValue, ..}
instance Property "MetricStat" MetricDataQueryProperty where
  type PropertyType "MetricStat" MetricDataQueryProperty = MetricStatProperty
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {metricStat = Prelude.pure newValue, ..}
instance Property "ReturnData" MetricDataQueryProperty where
  type PropertyType "ReturnData" MetricDataQueryProperty = Value Prelude.Bool
  set newValue MetricDataQueryProperty {..}
    = MetricDataQueryProperty {returnData = Prelude.pure newValue, ..}