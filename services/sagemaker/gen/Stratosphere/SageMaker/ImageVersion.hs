module Stratosphere.SageMaker.ImageVersion (
        ImageVersion(..), mkImageVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageVersion
  = ImageVersion {baseImage :: (Value Prelude.Text),
                  imageName :: (Value Prelude.Text)}
mkImageVersion ::
  Value Prelude.Text -> Value Prelude.Text -> ImageVersion
mkImageVersion baseImage imageName
  = ImageVersion {baseImage = baseImage, imageName = imageName}
instance ToResourceProperties ImageVersion where
  toResourceProperties ImageVersion {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ImageVersion",
         properties = ["BaseImage" JSON..= baseImage,
                       "ImageName" JSON..= imageName]}
instance JSON.ToJSON ImageVersion where
  toJSON ImageVersion {..}
    = JSON.object
        ["BaseImage" JSON..= baseImage, "ImageName" JSON..= imageName]
instance Property "BaseImage" ImageVersion where
  type PropertyType "BaseImage" ImageVersion = Value Prelude.Text
  set newValue ImageVersion {..}
    = ImageVersion {baseImage = newValue, ..}
instance Property "ImageName" ImageVersion where
  type PropertyType "ImageName" ImageVersion = Value Prelude.Text
  set newValue ImageVersion {..}
    = ImageVersion {imageName = newValue, ..}