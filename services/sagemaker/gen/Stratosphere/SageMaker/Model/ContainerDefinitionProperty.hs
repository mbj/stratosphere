module Stratosphere.SageMaker.Model.ContainerDefinitionProperty (
        module Exports, ContainerDefinitionProperty(..),
        mkContainerDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Model.ImageConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Model.MultiModelConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerDefinitionProperty
  = ContainerDefinitionProperty {containerHostname :: (Prelude.Maybe (Value Prelude.Text)),
                                 environment :: (Prelude.Maybe JSON.Object),
                                 image :: (Prelude.Maybe (Value Prelude.Text)),
                                 imageConfig :: (Prelude.Maybe ImageConfigProperty),
                                 inferenceSpecificationName :: (Prelude.Maybe (Value Prelude.Text)),
                                 mode :: (Prelude.Maybe (Value Prelude.Text)),
                                 modelDataUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                 modelPackageName :: (Prelude.Maybe (Value Prelude.Text)),
                                 multiModelConfig :: (Prelude.Maybe MultiModelConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerDefinitionProperty :: ContainerDefinitionProperty
mkContainerDefinitionProperty
  = ContainerDefinitionProperty
      {containerHostname = Prelude.Nothing,
       environment = Prelude.Nothing, image = Prelude.Nothing,
       imageConfig = Prelude.Nothing,
       inferenceSpecificationName = Prelude.Nothing,
       mode = Prelude.Nothing, modelDataUrl = Prelude.Nothing,
       modelPackageName = Prelude.Nothing,
       multiModelConfig = Prelude.Nothing}
instance ToResourceProperties ContainerDefinitionProperty where
  toResourceProperties ContainerDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Model.ContainerDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerHostname" Prelude.<$> containerHostname,
                            (JSON..=) "Environment" Prelude.<$> environment,
                            (JSON..=) "Image" Prelude.<$> image,
                            (JSON..=) "ImageConfig" Prelude.<$> imageConfig,
                            (JSON..=) "InferenceSpecificationName"
                              Prelude.<$> inferenceSpecificationName,
                            (JSON..=) "Mode" Prelude.<$> mode,
                            (JSON..=) "ModelDataUrl" Prelude.<$> modelDataUrl,
                            (JSON..=) "ModelPackageName" Prelude.<$> modelPackageName,
                            (JSON..=) "MultiModelConfig" Prelude.<$> multiModelConfig])}
instance JSON.ToJSON ContainerDefinitionProperty where
  toJSON ContainerDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerHostname" Prelude.<$> containerHostname,
               (JSON..=) "Environment" Prelude.<$> environment,
               (JSON..=) "Image" Prelude.<$> image,
               (JSON..=) "ImageConfig" Prelude.<$> imageConfig,
               (JSON..=) "InferenceSpecificationName"
                 Prelude.<$> inferenceSpecificationName,
               (JSON..=) "Mode" Prelude.<$> mode,
               (JSON..=) "ModelDataUrl" Prelude.<$> modelDataUrl,
               (JSON..=) "ModelPackageName" Prelude.<$> modelPackageName,
               (JSON..=) "MultiModelConfig" Prelude.<$> multiModelConfig]))
instance Property "ContainerHostname" ContainerDefinitionProperty where
  type PropertyType "ContainerHostname" ContainerDefinitionProperty = Value Prelude.Text
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {containerHostname = Prelude.pure newValue, ..}
instance Property "Environment" ContainerDefinitionProperty where
  type PropertyType "Environment" ContainerDefinitionProperty = JSON.Object
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {environment = Prelude.pure newValue, ..}
instance Property "Image" ContainerDefinitionProperty where
  type PropertyType "Image" ContainerDefinitionProperty = Value Prelude.Text
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty {image = Prelude.pure newValue, ..}
instance Property "ImageConfig" ContainerDefinitionProperty where
  type PropertyType "ImageConfig" ContainerDefinitionProperty = ImageConfigProperty
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {imageConfig = Prelude.pure newValue, ..}
instance Property "InferenceSpecificationName" ContainerDefinitionProperty where
  type PropertyType "InferenceSpecificationName" ContainerDefinitionProperty = Value Prelude.Text
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {inferenceSpecificationName = Prelude.pure newValue, ..}
instance Property "Mode" ContainerDefinitionProperty where
  type PropertyType "Mode" ContainerDefinitionProperty = Value Prelude.Text
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty {mode = Prelude.pure newValue, ..}
instance Property "ModelDataUrl" ContainerDefinitionProperty where
  type PropertyType "ModelDataUrl" ContainerDefinitionProperty = Value Prelude.Text
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {modelDataUrl = Prelude.pure newValue, ..}
instance Property "ModelPackageName" ContainerDefinitionProperty where
  type PropertyType "ModelPackageName" ContainerDefinitionProperty = Value Prelude.Text
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {modelPackageName = Prelude.pure newValue, ..}
instance Property "MultiModelConfig" ContainerDefinitionProperty where
  type PropertyType "MultiModelConfig" ContainerDefinitionProperty = MultiModelConfigProperty
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {multiModelConfig = Prelude.pure newValue, ..}