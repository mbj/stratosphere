module Stratosphere.SageMaker.InferenceComponent.DeployedImageProperty (
        DeployedImageProperty(..), mkDeployedImageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeployedImageProperty
  = DeployedImageProperty {resolutionTime :: (Prelude.Maybe (Value Prelude.Text)),
                           resolvedImage :: (Prelude.Maybe (Value Prelude.Text)),
                           specifiedImage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeployedImageProperty :: DeployedImageProperty
mkDeployedImageProperty
  = DeployedImageProperty
      {resolutionTime = Prelude.Nothing, resolvedImage = Prelude.Nothing,
       specifiedImage = Prelude.Nothing}
instance ToResourceProperties DeployedImageProperty where
  toResourceProperties DeployedImageProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceComponent.DeployedImage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ResolutionTime" Prelude.<$> resolutionTime,
                            (JSON..=) "ResolvedImage" Prelude.<$> resolvedImage,
                            (JSON..=) "SpecifiedImage" Prelude.<$> specifiedImage])}
instance JSON.ToJSON DeployedImageProperty where
  toJSON DeployedImageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ResolutionTime" Prelude.<$> resolutionTime,
               (JSON..=) "ResolvedImage" Prelude.<$> resolvedImage,
               (JSON..=) "SpecifiedImage" Prelude.<$> specifiedImage]))
instance Property "ResolutionTime" DeployedImageProperty where
  type PropertyType "ResolutionTime" DeployedImageProperty = Value Prelude.Text
  set newValue DeployedImageProperty {..}
    = DeployedImageProperty
        {resolutionTime = Prelude.pure newValue, ..}
instance Property "ResolvedImage" DeployedImageProperty where
  type PropertyType "ResolvedImage" DeployedImageProperty = Value Prelude.Text
  set newValue DeployedImageProperty {..}
    = DeployedImageProperty {resolvedImage = Prelude.pure newValue, ..}
instance Property "SpecifiedImage" DeployedImageProperty where
  type PropertyType "SpecifiedImage" DeployedImageProperty = Value Prelude.Text
  set newValue DeployedImageProperty {..}
    = DeployedImageProperty
        {specifiedImage = Prelude.pure newValue, ..}