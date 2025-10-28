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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html>
    PredefinedScalingMetricSpecificationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedscalingmetricspecification-predefinedscalingmetrictype>
                                                  predefinedScalingMetricType :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedscalingmetricspecification-resourcelabel>
                                                  resourceLabel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredefinedScalingMetricSpecificationProperty ::
  Value Prelude.Text -> PredefinedScalingMetricSpecificationProperty
mkPredefinedScalingMetricSpecificationProperty
  predefinedScalingMetricType
  = PredefinedScalingMetricSpecificationProperty
      {haddock_workaround_ = (),
       predefinedScalingMetricType = predefinedScalingMetricType,
       resourceLabel = Prelude.Nothing}
instance ToResourceProperties PredefinedScalingMetricSpecificationProperty where
  toResourceProperties
    PredefinedScalingMetricSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScalingPlans::ScalingPlan.PredefinedScalingMetricSpecification",
         supportsTags = Prelude.False,
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