module Stratosphere.AutoScalingPlans.ScalingPlan.PredefinedScalingMetricSpecificationProperty (
        PredefinedScalingMetricSpecificationProperty(..),
        mkPredefinedScalingMetricSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredefinedScalingMetricSpecificationProperty
  = PredefinedScalingMetricSpecificationProperty {predefinedScalingMetricType :: (Value Prelude.Text),
                                                  resourceLabel :: (Prelude.Maybe (Value Prelude.Text))}
mkPredefinedScalingMetricSpecificationProperty ::
  Value Prelude.Text -> PredefinedScalingMetricSpecificationProperty
mkPredefinedScalingMetricSpecificationProperty
  predefinedScalingMetricType
  = PredefinedScalingMetricSpecificationProperty
      {predefinedScalingMetricType = predefinedScalingMetricType,
       resourceLabel = Prelude.Nothing}
instance ToResourceProperties PredefinedScalingMetricSpecificationProperty where
  toResourceProperties
    PredefinedScalingMetricSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScalingPlans::ScalingPlan.PredefinedScalingMetricSpecification",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PredefinedScalingMetricType" JSON..= predefinedScalingMetricType]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceLabel" Prelude.<$> resourceLabel]))}
instance JSON.ToJSON PredefinedScalingMetricSpecificationProperty where
  toJSON PredefinedScalingMetricSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PredefinedScalingMetricType" JSON..= predefinedScalingMetricType]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceLabel" Prelude.<$> resourceLabel])))
instance Property "PredefinedScalingMetricType" PredefinedScalingMetricSpecificationProperty where
  type PropertyType "PredefinedScalingMetricType" PredefinedScalingMetricSpecificationProperty = Value Prelude.Text
  set newValue PredefinedScalingMetricSpecificationProperty {..}
    = PredefinedScalingMetricSpecificationProperty
        {predefinedScalingMetricType = newValue, ..}
instance Property "ResourceLabel" PredefinedScalingMetricSpecificationProperty where
  type PropertyType "ResourceLabel" PredefinedScalingMetricSpecificationProperty = Value Prelude.Text
  set newValue PredefinedScalingMetricSpecificationProperty {..}
    = PredefinedScalingMetricSpecificationProperty
        {resourceLabel = Prelude.pure newValue, ..}