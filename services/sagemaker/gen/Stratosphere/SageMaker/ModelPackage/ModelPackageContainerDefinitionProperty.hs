module Stratosphere.SageMaker.ModelPackage.ModelPackageContainerDefinitionProperty (
        module Exports, ModelPackageContainerDefinitionProperty(..),
        mkModelPackageContainerDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.ModelInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelPackageContainerDefinitionProperty
  = ModelPackageContainerDefinitionProperty {containerHostname :: (Prelude.Maybe (Value Prelude.Text)),
                                             environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                             framework :: (Prelude.Maybe (Value Prelude.Text)),
                                             frameworkVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                             image :: (Value Prelude.Text),
                                             imageDigest :: (Prelude.Maybe (Value Prelude.Text)),
                                             modelDataUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                             modelInput :: (Prelude.Maybe ModelInputProperty),
                                             nearestModelName :: (Prelude.Maybe (Value Prelude.Text)),
                                             productId :: (Prelude.Maybe (Value Prelude.Text))}
mkModelPackageContainerDefinitionProperty ::
  Value Prelude.Text -> ModelPackageContainerDefinitionProperty
mkModelPackageContainerDefinitionProperty image
  = ModelPackageContainerDefinitionProperty
      {image = image, containerHostname = Prelude.Nothing,
       environment = Prelude.Nothing, framework = Prelude.Nothing,
       frameworkVersion = Prelude.Nothing, imageDigest = Prelude.Nothing,
       modelDataUrl = Prelude.Nothing, modelInput = Prelude.Nothing,
       nearestModelName = Prelude.Nothing, productId = Prelude.Nothing}
instance ToResourceProperties ModelPackageContainerDefinitionProperty where
  toResourceProperties ModelPackageContainerDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ModelPackageContainerDefinition",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Image" JSON..= image]
                           (Prelude.catMaybes
                              [(JSON..=) "ContainerHostname" Prelude.<$> containerHostname,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "Framework" Prelude.<$> framework,
                               (JSON..=) "FrameworkVersion" Prelude.<$> frameworkVersion,
                               (JSON..=) "ImageDigest" Prelude.<$> imageDigest,
                               (JSON..=) "ModelDataUrl" Prelude.<$> modelDataUrl,
                               (JSON..=) "ModelInput" Prelude.<$> modelInput,
                               (JSON..=) "NearestModelName" Prelude.<$> nearestModelName,
                               (JSON..=) "ProductId" Prelude.<$> productId]))}
instance JSON.ToJSON ModelPackageContainerDefinitionProperty where
  toJSON ModelPackageContainerDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Image" JSON..= image]
              (Prelude.catMaybes
                 [(JSON..=) "ContainerHostname" Prelude.<$> containerHostname,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "Framework" Prelude.<$> framework,
                  (JSON..=) "FrameworkVersion" Prelude.<$> frameworkVersion,
                  (JSON..=) "ImageDigest" Prelude.<$> imageDigest,
                  (JSON..=) "ModelDataUrl" Prelude.<$> modelDataUrl,
                  (JSON..=) "ModelInput" Prelude.<$> modelInput,
                  (JSON..=) "NearestModelName" Prelude.<$> nearestModelName,
                  (JSON..=) "ProductId" Prelude.<$> productId])))
instance Property "ContainerHostname" ModelPackageContainerDefinitionProperty where
  type PropertyType "ContainerHostname" ModelPackageContainerDefinitionProperty = Value Prelude.Text
  set newValue ModelPackageContainerDefinitionProperty {..}
    = ModelPackageContainerDefinitionProperty
        {containerHostname = Prelude.pure newValue, ..}
instance Property "Environment" ModelPackageContainerDefinitionProperty where
  type PropertyType "Environment" ModelPackageContainerDefinitionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ModelPackageContainerDefinitionProperty {..}
    = ModelPackageContainerDefinitionProperty
        {environment = Prelude.pure newValue, ..}
instance Property "Framework" ModelPackageContainerDefinitionProperty where
  type PropertyType "Framework" ModelPackageContainerDefinitionProperty = Value Prelude.Text
  set newValue ModelPackageContainerDefinitionProperty {..}
    = ModelPackageContainerDefinitionProperty
        {framework = Prelude.pure newValue, ..}
instance Property "FrameworkVersion" ModelPackageContainerDefinitionProperty where
  type PropertyType "FrameworkVersion" ModelPackageContainerDefinitionProperty = Value Prelude.Text
  set newValue ModelPackageContainerDefinitionProperty {..}
    = ModelPackageContainerDefinitionProperty
        {frameworkVersion = Prelude.pure newValue, ..}
instance Property "Image" ModelPackageContainerDefinitionProperty where
  type PropertyType "Image" ModelPackageContainerDefinitionProperty = Value Prelude.Text
  set newValue ModelPackageContainerDefinitionProperty {..}
    = ModelPackageContainerDefinitionProperty {image = newValue, ..}
instance Property "ImageDigest" ModelPackageContainerDefinitionProperty where
  type PropertyType "ImageDigest" ModelPackageContainerDefinitionProperty = Value Prelude.Text
  set newValue ModelPackageContainerDefinitionProperty {..}
    = ModelPackageContainerDefinitionProperty
        {imageDigest = Prelude.pure newValue, ..}
instance Property "ModelDataUrl" ModelPackageContainerDefinitionProperty where
  type PropertyType "ModelDataUrl" ModelPackageContainerDefinitionProperty = Value Prelude.Text
  set newValue ModelPackageContainerDefinitionProperty {..}
    = ModelPackageContainerDefinitionProperty
        {modelDataUrl = Prelude.pure newValue, ..}
instance Property "ModelInput" ModelPackageContainerDefinitionProperty where
  type PropertyType "ModelInput" ModelPackageContainerDefinitionProperty = ModelInputProperty
  set newValue ModelPackageContainerDefinitionProperty {..}
    = ModelPackageContainerDefinitionProperty
        {modelInput = Prelude.pure newValue, ..}
instance Property "NearestModelName" ModelPackageContainerDefinitionProperty where
  type PropertyType "NearestModelName" ModelPackageContainerDefinitionProperty = Value Prelude.Text
  set newValue ModelPackageContainerDefinitionProperty {..}
    = ModelPackageContainerDefinitionProperty
        {nearestModelName = Prelude.pure newValue, ..}
instance Property "ProductId" ModelPackageContainerDefinitionProperty where
  type PropertyType "ProductId" ModelPackageContainerDefinitionProperty = Value Prelude.Text
  set newValue ModelPackageContainerDefinitionProperty {..}
    = ModelPackageContainerDefinitionProperty
        {productId = Prelude.pure newValue, ..}