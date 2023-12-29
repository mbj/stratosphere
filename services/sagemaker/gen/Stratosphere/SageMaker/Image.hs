module Stratosphere.SageMaker.Image (
        Image(..), mkImage
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Image
  = Image {imageDescription :: (Prelude.Maybe (Value Prelude.Text)),
           imageDisplayName :: (Prelude.Maybe (Value Prelude.Text)),
           imageName :: (Value Prelude.Text),
           imageRoleArn :: (Value Prelude.Text),
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImage :: Value Prelude.Text -> Value Prelude.Text -> Image
mkImage imageName imageRoleArn
  = Image
      {imageName = imageName, imageRoleArn = imageRoleArn,
       imageDescription = Prelude.Nothing,
       imageDisplayName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Image where
  toResourceProperties Image {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Image", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ImageName" JSON..= imageName,
                            "ImageRoleArn" JSON..= imageRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ImageDescription" Prelude.<$> imageDescription,
                               (JSON..=) "ImageDisplayName" Prelude.<$> imageDisplayName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Image where
  toJSON Image {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ImageName" JSON..= imageName,
               "ImageRoleArn" JSON..= imageRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ImageDescription" Prelude.<$> imageDescription,
                  (JSON..=) "ImageDisplayName" Prelude.<$> imageDisplayName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ImageDescription" Image where
  type PropertyType "ImageDescription" Image = Value Prelude.Text
  set newValue Image {..}
    = Image {imageDescription = Prelude.pure newValue, ..}
instance Property "ImageDisplayName" Image where
  type PropertyType "ImageDisplayName" Image = Value Prelude.Text
  set newValue Image {..}
    = Image {imageDisplayName = Prelude.pure newValue, ..}
instance Property "ImageName" Image where
  type PropertyType "ImageName" Image = Value Prelude.Text
  set newValue Image {..} = Image {imageName = newValue, ..}
instance Property "ImageRoleArn" Image where
  type PropertyType "ImageRoleArn" Image = Value Prelude.Text
  set newValue Image {..} = Image {imageRoleArn = newValue, ..}
instance Property "Tags" Image where
  type PropertyType "Tags" Image = [Tag]
  set newValue Image {..} = Image {tags = Prelude.pure newValue, ..}