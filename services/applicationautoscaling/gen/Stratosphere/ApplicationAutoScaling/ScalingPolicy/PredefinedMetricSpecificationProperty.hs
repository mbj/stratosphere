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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html>
    PredefinedMetricSpecificationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-predefinedmetricspecification-predefinedmetrictype>
                                           predefinedMetricType :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-predefinedmetricspecification-resourcelabel>
                                           resourceLabel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredefinedMetricSpecificationProperty ::
  Value Prelude.Text -> PredefinedMetricSpecificationProperty
mkPredefinedMetricSpecificationProperty predefinedMetricType
  = PredefinedMetricSpecificationProperty
      {haddock_workaround_ = (),
       predefinedMetricType = predefinedMetricType,
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