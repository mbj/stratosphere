module Stratosphere.AutoScalingPlans.ScalingPlan.PredefinedLoadMetricSpecificationProperty (
        PredefinedLoadMetricSpecificationProperty(..),
        mkPredefinedLoadMetricSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredefinedLoadMetricSpecificationProperty
  = PredefinedLoadMetricSpecificationProperty {predefinedLoadMetricType :: (Value Prelude.Text),
                                               resourceLabel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredefinedLoadMetricSpecificationProperty ::
  Value Prelude.Text -> PredefinedLoadMetricSpecificationProperty
mkPredefinedLoadMetricSpecificationProperty
  predefinedLoadMetricType
  = PredefinedLoadMetricSpecificationProperty
      {predefinedLoadMetricType = predefinedLoadMetricType,
       resourceLabel = Prelude.Nothing}
instance ToResourceProperties PredefinedLoadMetricSpecificationProperty where
  toResourceProperties PredefinedLoadMetricSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScalingPlans::ScalingPlan.PredefinedLoadMetricSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PredefinedLoadMetricType" JSON..= predefinedLoadMetricType]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceLabel" Prelude.<$> resourceLabel]))}
instance JSON.ToJSON PredefinedLoadMetricSpecificationProperty where
  toJSON PredefinedLoadMetricSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PredefinedLoadMetricType" JSON..= predefinedLoadMetricType]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceLabel" Prelude.<$> resourceLabel])))
instance Property "PredefinedLoadMetricType" PredefinedLoadMetricSpecificationProperty where
  type PropertyType "PredefinedLoadMetricType" PredefinedLoadMetricSpecificationProperty = Value Prelude.Text
  set newValue PredefinedLoadMetricSpecificationProperty {..}
    = PredefinedLoadMetricSpecificationProperty
        {predefinedLoadMetricType = newValue, ..}
instance Property "ResourceLabel" PredefinedLoadMetricSpecificationProperty where
  type PropertyType "ResourceLabel" PredefinedLoadMetricSpecificationProperty = Value Prelude.Text
  set newValue PredefinedLoadMetricSpecificationProperty {..}
    = PredefinedLoadMetricSpecificationProperty
        {resourceLabel = Prelude.pure newValue, ..}