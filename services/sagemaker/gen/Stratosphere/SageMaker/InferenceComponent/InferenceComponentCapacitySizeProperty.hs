module Stratosphere.SageMaker.InferenceComponent.InferenceComponentCapacitySizeProperty (
        InferenceComponentCapacitySizeProperty(..),
        mkInferenceComponentCapacitySizeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceComponentCapacitySizeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentcapacitysize.html>
    InferenceComponentCapacitySizeProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentcapacitysize.html#cfn-sagemaker-inferencecomponent-inferencecomponentcapacitysize-type>
                                            type' :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferencecomponent-inferencecomponentcapacitysize.html#cfn-sagemaker-inferencecomponent-inferencecomponentcapacitysize-value>
                                            value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceComponentCapacitySizeProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> InferenceComponentCapacitySizeProperty
mkInferenceComponentCapacitySizeProperty type' value
  = InferenceComponentCapacitySizeProperty
      {haddock_workaround_ = (), type' = type', value = value}
instance ToResourceProperties InferenceComponentCapacitySizeProperty where
  toResourceProperties InferenceComponentCapacitySizeProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceComponent.InferenceComponentCapacitySize",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON InferenceComponentCapacitySizeProperty where
  toJSON InferenceComponentCapacitySizeProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" InferenceComponentCapacitySizeProperty where
  type PropertyType "Type" InferenceComponentCapacitySizeProperty = Value Prelude.Text
  set newValue InferenceComponentCapacitySizeProperty {..}
    = InferenceComponentCapacitySizeProperty {type' = newValue, ..}
instance Property "Value" InferenceComponentCapacitySizeProperty where
  type PropertyType "Value" InferenceComponentCapacitySizeProperty = Value Prelude.Integer
  set newValue InferenceComponentCapacitySizeProperty {..}
    = InferenceComponentCapacitySizeProperty {value = newValue, ..}