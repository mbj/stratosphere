module Stratosphere.SageMaker.UserProfile.CustomImageProperty (
        CustomImageProperty(..), mkCustomImageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomImageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-customimage.html>
    CustomImageProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-customimage.html#cfn-sagemaker-userprofile-customimage-appimageconfigname>
                         appImageConfigName :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-customimage.html#cfn-sagemaker-userprofile-customimage-imagename>
                         imageName :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-customimage.html#cfn-sagemaker-userprofile-customimage-imageversionnumber>
                         imageVersionNumber :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomImageProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CustomImageProperty
mkCustomImageProperty appImageConfigName imageName
  = CustomImageProperty
      {haddock_workaround_ = (), appImageConfigName = appImageConfigName,
       imageName = imageName, imageVersionNumber = Prelude.Nothing}
instance ToResourceProperties CustomImageProperty where
  toResourceProperties CustomImageProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.CustomImage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppImageConfigName" JSON..= appImageConfigName,
                            "ImageName" JSON..= imageName]
                           (Prelude.catMaybes
                              [(JSON..=) "ImageVersionNumber" Prelude.<$> imageVersionNumber]))}
instance JSON.ToJSON CustomImageProperty where
  toJSON CustomImageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppImageConfigName" JSON..= appImageConfigName,
               "ImageName" JSON..= imageName]
              (Prelude.catMaybes
                 [(JSON..=) "ImageVersionNumber" Prelude.<$> imageVersionNumber])))
instance Property "AppImageConfigName" CustomImageProperty where
  type PropertyType "AppImageConfigName" CustomImageProperty = Value Prelude.Text
  set newValue CustomImageProperty {..}
    = CustomImageProperty {appImageConfigName = newValue, ..}
instance Property "ImageName" CustomImageProperty where
  type PropertyType "ImageName" CustomImageProperty = Value Prelude.Text
  set newValue CustomImageProperty {..}
    = CustomImageProperty {imageName = newValue, ..}
instance Property "ImageVersionNumber" CustomImageProperty where
  type PropertyType "ImageVersionNumber" CustomImageProperty = Value Prelude.Integer
  set newValue CustomImageProperty {..}
    = CustomImageProperty
        {imageVersionNumber = Prelude.pure newValue, ..}