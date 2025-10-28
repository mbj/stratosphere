module Stratosphere.SageMaker.ModelCard.InferenceSpecificationProperty (
        module Exports, InferenceSpecificationProperty(..),
        mkInferenceSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.ContainerProperty as Exports
import Stratosphere.ResourceProperties
data InferenceSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-inferencespecification.html>
    InferenceSpecificationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-inferencespecification.html#cfn-sagemaker-modelcard-inferencespecification-containers>
                                    containers :: [ContainerProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceSpecificationProperty ::
  [ContainerProperty] -> InferenceSpecificationProperty
mkInferenceSpecificationProperty containers
  = InferenceSpecificationProperty
      {haddock_workaround_ = (), containers = containers}
instance ToResourceProperties InferenceSpecificationProperty where
  toResourceProperties InferenceSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.InferenceSpecification",
         supportsTags = Prelude.False,
         properties = ["Containers" JSON..= containers]}
instance JSON.ToJSON InferenceSpecificationProperty where
  toJSON InferenceSpecificationProperty {..}
    = JSON.object ["Containers" JSON..= containers]
instance Property "Containers" InferenceSpecificationProperty where
  type PropertyType "Containers" InferenceSpecificationProperty = [ContainerProperty]
  set newValue InferenceSpecificationProperty {..}
    = InferenceSpecificationProperty {containers = newValue, ..}