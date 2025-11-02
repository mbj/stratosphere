module Stratosphere.AppRunner.Service.ImageRepositoryProperty (
        module Exports, ImageRepositoryProperty(..),
        mkImageRepositoryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppRunner.Service.ImageConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImageRepositoryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-imagerepository.html>
    ImageRepositoryProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-imagerepository.html#cfn-apprunner-service-imagerepository-imageconfiguration>
                             imageConfiguration :: (Prelude.Maybe ImageConfigurationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-imagerepository.html#cfn-apprunner-service-imagerepository-imageidentifier>
                             imageIdentifier :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-imagerepository.html#cfn-apprunner-service-imagerepository-imagerepositorytype>
                             imageRepositoryType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageRepositoryProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ImageRepositoryProperty
mkImageRepositoryProperty imageIdentifier imageRepositoryType
  = ImageRepositoryProperty
      {haddock_workaround_ = (), imageIdentifier = imageIdentifier,
       imageRepositoryType = imageRepositoryType,
       imageConfiguration = Prelude.Nothing}
instance ToResourceProperties ImageRepositoryProperty where
  toResourceProperties ImageRepositoryProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service.ImageRepository",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ImageIdentifier" JSON..= imageIdentifier,
                            "ImageRepositoryType" JSON..= imageRepositoryType]
                           (Prelude.catMaybes
                              [(JSON..=) "ImageConfiguration" Prelude.<$> imageConfiguration]))}
instance JSON.ToJSON ImageRepositoryProperty where
  toJSON ImageRepositoryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ImageIdentifier" JSON..= imageIdentifier,
               "ImageRepositoryType" JSON..= imageRepositoryType]
              (Prelude.catMaybes
                 [(JSON..=) "ImageConfiguration" Prelude.<$> imageConfiguration])))
instance Property "ImageConfiguration" ImageRepositoryProperty where
  type PropertyType "ImageConfiguration" ImageRepositoryProperty = ImageConfigurationProperty
  set newValue ImageRepositoryProperty {..}
    = ImageRepositoryProperty
        {imageConfiguration = Prelude.pure newValue, ..}
instance Property "ImageIdentifier" ImageRepositoryProperty where
  type PropertyType "ImageIdentifier" ImageRepositoryProperty = Value Prelude.Text
  set newValue ImageRepositoryProperty {..}
    = ImageRepositoryProperty {imageIdentifier = newValue, ..}
instance Property "ImageRepositoryType" ImageRepositoryProperty where
  type PropertyType "ImageRepositoryType" ImageRepositoryProperty = Value Prelude.Text
  set newValue ImageRepositoryProperty {..}
    = ImageRepositoryProperty {imageRepositoryType = newValue, ..}