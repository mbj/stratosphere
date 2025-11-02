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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-imageconfigurationinput.html>
    ImageConfigurationInputProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-imageconfigurationinput.html#cfn-emrserverless-application-imageconfigurationinput-imageuri>
                                     imageUri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageConfigurationInputProperty ::
  ImageConfigurationInputProperty
mkImageConfigurationInputProperty
  = ImageConfigurationInputProperty
      {haddock_workaround_ = (), imageUri = Prelude.Nothing}
instance ToResourceProperties ImageConfigurationInputProperty where
  toResourceProperties ImageConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.ImageConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "ImageUri" Prelude.<$> imageUri])}
instance JSON.ToJSON ImageConfigurationInputProperty where
  toJSON ImageConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "ImageUri" Prelude.<$> imageUri]))
instance Property "ImageUri" ImageConfigurationInputProperty where
  type PropertyType "ImageUri" ImageConfigurationInputProperty = Value Prelude.Text
  set newValue ImageConfigurationInputProperty {..}
    = ImageConfigurationInputProperty
        {imageUri = Prelude.pure newValue, ..}