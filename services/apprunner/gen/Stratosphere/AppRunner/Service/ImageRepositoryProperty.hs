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
  = ImageRepositoryProperty {imageConfiguration :: (Prelude.Maybe ImageConfigurationProperty),
                             imageIdentifier :: (Value Prelude.Text),
                             imageRepositoryType :: (Value Prelude.Text)}
mkImageRepositoryProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ImageRepositoryProperty
mkImageRepositoryProperty imageIdentifier imageRepositoryType
  = ImageRepositoryProperty
      {imageIdentifier = imageIdentifier,
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