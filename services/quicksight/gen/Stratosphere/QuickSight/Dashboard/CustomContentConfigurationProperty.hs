module Stratosphere.QuickSight.Dashboard.CustomContentConfigurationProperty (
        CustomContentConfigurationProperty(..),
        mkCustomContentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomContentConfigurationProperty
  = CustomContentConfigurationProperty {contentType :: (Prelude.Maybe (Value Prelude.Text)),
                                        contentUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                        imageScaling :: (Prelude.Maybe (Value Prelude.Text))}
mkCustomContentConfigurationProperty ::
  CustomContentConfigurationProperty
mkCustomContentConfigurationProperty
  = CustomContentConfigurationProperty
      {contentType = Prelude.Nothing, contentUrl = Prelude.Nothing,
       imageScaling = Prelude.Nothing}
instance ToResourceProperties CustomContentConfigurationProperty where
  toResourceProperties CustomContentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CustomContentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContentType" Prelude.<$> contentType,
                            (JSON..=) "ContentUrl" Prelude.<$> contentUrl,
                            (JSON..=) "ImageScaling" Prelude.<$> imageScaling])}
instance JSON.ToJSON CustomContentConfigurationProperty where
  toJSON CustomContentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContentType" Prelude.<$> contentType,
               (JSON..=) "ContentUrl" Prelude.<$> contentUrl,
               (JSON..=) "ImageScaling" Prelude.<$> imageScaling]))
instance Property "ContentType" CustomContentConfigurationProperty where
  type PropertyType "ContentType" CustomContentConfigurationProperty = Value Prelude.Text
  set newValue CustomContentConfigurationProperty {..}
    = CustomContentConfigurationProperty
        {contentType = Prelude.pure newValue, ..}
instance Property "ContentUrl" CustomContentConfigurationProperty where
  type PropertyType "ContentUrl" CustomContentConfigurationProperty = Value Prelude.Text
  set newValue CustomContentConfigurationProperty {..}
    = CustomContentConfigurationProperty
        {contentUrl = Prelude.pure newValue, ..}
instance Property "ImageScaling" CustomContentConfigurationProperty where
  type PropertyType "ImageScaling" CustomContentConfigurationProperty = Value Prelude.Text
  set newValue CustomContentConfigurationProperty {..}
    = CustomContentConfigurationProperty
        {imageScaling = Prelude.pure newValue, ..}