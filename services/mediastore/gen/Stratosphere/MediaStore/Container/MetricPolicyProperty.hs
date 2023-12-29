module Stratosphere.MediaStore.Container.MetricPolicyProperty (
        module Exports, MetricPolicyProperty(..), mkMetricPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaStore.Container.MetricPolicyRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricPolicyProperty
  = MetricPolicyProperty {containerLevelMetrics :: (Value Prelude.Text),
                          metricPolicyRules :: (Prelude.Maybe [MetricPolicyRuleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricPolicyProperty ::
  Value Prelude.Text -> MetricPolicyProperty
mkMetricPolicyProperty containerLevelMetrics
  = MetricPolicyProperty
      {containerLevelMetrics = containerLevelMetrics,
       metricPolicyRules = Prelude.Nothing}
instance ToResourceProperties MetricPolicyProperty where
  toResourceProperties MetricPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaStore::Container.MetricPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContainerLevelMetrics" JSON..= containerLevelMetrics]
                           (Prelude.catMaybes
                              [(JSON..=) "MetricPolicyRules" Prelude.<$> metricPolicyRules]))}
instance JSON.ToJSON MetricPolicyProperty where
  toJSON MetricPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContainerLevelMetrics" JSON..= containerLevelMetrics]
              (Prelude.catMaybes
                 [(JSON..=) "MetricPolicyRules" Prelude.<$> metricPolicyRules])))
instance Property "ContainerLevelMetrics" MetricPolicyProperty where
  type PropertyType "ContainerLevelMetrics" MetricPolicyProperty = Value Prelude.Text
  set newValue MetricPolicyProperty {..}
    = MetricPolicyProperty {containerLevelMetrics = newValue, ..}
instance Property "MetricPolicyRules" MetricPolicyProperty where
  type PropertyType "MetricPolicyRules" MetricPolicyProperty = [MetricPolicyRuleProperty]
  set newValue MetricPolicyProperty {..}
    = MetricPolicyProperty
        {metricPolicyRules = Prelude.pure newValue, ..}