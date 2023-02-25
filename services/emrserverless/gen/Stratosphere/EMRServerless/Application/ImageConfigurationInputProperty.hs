module Stratosphere.EMRServerless.Application.ImageConfigurationInputProperty (
        ImageConfigurationInputProperty(..),
        mkImageConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageConfigurationInputProperty
  = ImageConfigurationInputProperty {imageUri :: (Prelude.Maybe (Value Prelude.Text))}
mkImageConfigurationInputProperty ::
  ImageConfigurationInputProperty
mkImageConfigurationInputProperty
  = ImageConfigurationInputProperty {imageUri = Prelude.Nothing}
instance ToResourceProperties ImageConfigurationInputProperty where
  toResourceProperties ImageConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.ImageConfigurationInput",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "ImageUri" Prelude.<$> imageUri])}
instance JSON.ToJSON ImageConfigurationInputProperty where
  toJSON ImageConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "ImageUri" Prelude.<$> imageUri]))
instance Property "ImageUri" ImageConfigurationInputProperty where
  type PropertyType "ImageUri" ImageConfigurationInputProperty = Value Prelude.Text
  set newValue ImageConfigurationInputProperty {}
    = ImageConfigurationInputProperty
        {imageUri = Prelude.pure newValue, ..}