module Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredefinedMetricSpecificationProperty (
        PredefinedMetricSpecificationProperty(..),
        mkPredefinedMetricSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredefinedMetricSpecificationProperty
  = PredefinedMetricSpecificationProperty {predefinedMetricType :: (Value Prelude.Text),
                                           resourceLabel :: (Prelude.Maybe (Value Prelude.Text))}
mkPredefinedMetricSpecificationProperty ::
  Value Prelude.Text -> PredefinedMetricSpecificationProperty
mkPredefinedMetricSpecificationProperty predefinedMetricType
  = PredefinedMetricSpecificationProperty
      {predefinedMetricType = predefinedMetricType,
       resourceLabel = Prelude.Nothing}
instance ToResourceProperties PredefinedMetricSpecificationProperty where
  toResourceProperties PredefinedMetricSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.PredefinedMetricSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PredefinedMetricType" JSON..= predefinedMetricType]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceLabel" Prelude.<$> resourceLabel]))}
instance JSON.ToJSON PredefinedMetricSpecificationProperty where
  toJSON PredefinedMetricSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PredefinedMetricType" JSON..= predefinedMetricType]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceLabel" Prelude.<$> resourceLabel])))
instance Property "PredefinedMetricType" PredefinedMetricSpecificationProperty where
  type PropertyType "PredefinedMetricType" PredefinedMetricSpecificationProperty = Value Prelude.Text
  set newValue PredefinedMetricSpecificationProperty {..}
    = PredefinedMetricSpecificationProperty
        {predefinedMetricType = newValue, ..}
instance Property "ResourceLabel" PredefinedMetricSpecificationProperty where
  type PropertyType "ResourceLabel" PredefinedMetricSpecificationProperty = Value Prelude.Text
  set newValue PredefinedMetricSpecificationProperty {..}
    = PredefinedMetricSpecificationProperty
        {resourceLabel = Prelude.pure newValue, ..}