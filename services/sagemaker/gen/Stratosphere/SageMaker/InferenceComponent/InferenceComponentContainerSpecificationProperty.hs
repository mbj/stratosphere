module Stratosphere.SageMaker.InferenceComponent.InferenceComponentContainerSpecificationProperty (
        module Exports,
        InferenceComponentContainerSpecificationProperty(..),
        mkInferenceComponentContainerSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceComponent.DeployedImageProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceComponentContainerSpecificationProperty
  = InferenceComponentContainerSpecificationProperty {artifactUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                                      deployedImage :: (Prelude.Maybe DeployedImageProperty),
                                                      environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                                      image :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceComponentContainerSpecificationProperty ::
  InferenceComponentContainerSpecificationProperty
mkInferenceComponentContainerSpecificationProperty
  = InferenceComponentContainerSpecificationProperty
      {artifactUrl = Prelude.Nothing, deployedImage = Prelude.Nothing,
       environment = Prelude.Nothing, image = Prelude.Nothing}
instance ToResourceProperties InferenceComponentContainerSpecificationProperty where
  toResourceProperties
    InferenceComponentContainerSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceComponent.InferenceComponentContainerSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArtifactUrl" Prelude.<$> artifactUrl,
                            (JSON..=) "DeployedImage" Prelude.<$> deployedImage,
                            (JSON..=) "Environment" Prelude.<$> environment,
                            (JSON..=) "Image" Prelude.<$> image])}
instance JSON.ToJSON InferenceComponentContainerSpecificationProperty where
  toJSON InferenceComponentContainerSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArtifactUrl" Prelude.<$> artifactUrl,
               (JSON..=) "DeployedImage" Prelude.<$> deployedImage,
               (JSON..=) "Environment" Prelude.<$> environment,
               (JSON..=) "Image" Prelude.<$> image]))
instance Property "ArtifactUrl" InferenceComponentContainerSpecificationProperty where
  type PropertyType "ArtifactUrl" InferenceComponentContainerSpecificationProperty = Value Prelude.Text
  set newValue InferenceComponentContainerSpecificationProperty {..}
    = InferenceComponentContainerSpecificationProperty
        {artifactUrl = Prelude.pure newValue, ..}
instance Property "DeployedImage" InferenceComponentContainerSpecificationProperty where
  type PropertyType "DeployedImage" InferenceComponentContainerSpecificationProperty = DeployedImageProperty
  set newValue InferenceComponentContainerSpecificationProperty {..}
    = InferenceComponentContainerSpecificationProperty
        {deployedImage = Prelude.pure newValue, ..}
instance Property "Environment" InferenceComponentContainerSpecificationProperty where
  type PropertyType "Environment" InferenceComponentContainerSpecificationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue InferenceComponentContainerSpecificationProperty {..}
    = InferenceComponentContainerSpecificationProperty
        {environment = Prelude.pure newValue, ..}
instance Property "Image" InferenceComponentContainerSpecificationProperty where
  type PropertyType "Image" InferenceComponentContainerSpecificationProperty = Value Prelude.Text
  set newValue InferenceComponentContainerSpecificationProperty {..}
    = InferenceComponentContainerSpecificationProperty
        {image = Prelude.pure newValue, ..}