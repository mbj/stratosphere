module Stratosphere.QBusiness.DataSource.MediaExtractionConfigurationProperty (
        module Exports, MediaExtractionConfigurationProperty(..),
        mkMediaExtractionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataSource.AudioExtractionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.DataSource.ImageExtractionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.DataSource.VideoExtractionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data MediaExtractionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-mediaextractionconfiguration.html>
    MediaExtractionConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-mediaextractionconfiguration.html#cfn-qbusiness-datasource-mediaextractionconfiguration-audioextractionconfiguration>
                                          audioExtractionConfiguration :: (Prelude.Maybe AudioExtractionConfigurationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-mediaextractionconfiguration.html#cfn-qbusiness-datasource-mediaextractionconfiguration-imageextractionconfiguration>
                                          imageExtractionConfiguration :: (Prelude.Maybe ImageExtractionConfigurationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-mediaextractionconfiguration.html#cfn-qbusiness-datasource-mediaextractionconfiguration-videoextractionconfiguration>
                                          videoExtractionConfiguration :: (Prelude.Maybe VideoExtractionConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaExtractionConfigurationProperty ::
  MediaExtractionConfigurationProperty
mkMediaExtractionConfigurationProperty
  = MediaExtractionConfigurationProperty
      {haddock_workaround_ = (),
       audioExtractionConfiguration = Prelude.Nothing,
       imageExtractionConfiguration = Prelude.Nothing,
       videoExtractionConfiguration = Prelude.Nothing}
instance ToResourceProperties MediaExtractionConfigurationProperty where
  toResourceProperties MediaExtractionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataSource.MediaExtractionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioExtractionConfiguration"
                              Prelude.<$> audioExtractionConfiguration,
                            (JSON..=) "ImageExtractionConfiguration"
                              Prelude.<$> imageExtractionConfiguration,
                            (JSON..=) "VideoExtractionConfiguration"
                              Prelude.<$> videoExtractionConfiguration])}
instance JSON.ToJSON MediaExtractionConfigurationProperty where
  toJSON MediaExtractionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioExtractionConfiguration"
                 Prelude.<$> audioExtractionConfiguration,
               (JSON..=) "ImageExtractionConfiguration"
                 Prelude.<$> imageExtractionConfiguration,
               (JSON..=) "VideoExtractionConfiguration"
                 Prelude.<$> videoExtractionConfiguration]))
instance Property "AudioExtractionConfiguration" MediaExtractionConfigurationProperty where
  type PropertyType "AudioExtractionConfiguration" MediaExtractionConfigurationProperty = AudioExtractionConfigurationProperty
  set newValue MediaExtractionConfigurationProperty {..}
    = MediaExtractionConfigurationProperty
        {audioExtractionConfiguration = Prelude.pure newValue, ..}
instance Property "ImageExtractionConfiguration" MediaExtractionConfigurationProperty where
  type PropertyType "ImageExtractionConfiguration" MediaExtractionConfigurationProperty = ImageExtractionConfigurationProperty
  set newValue MediaExtractionConfigurationProperty {..}
    = MediaExtractionConfigurationProperty
        {imageExtractionConfiguration = Prelude.pure newValue, ..}
instance Property "VideoExtractionConfiguration" MediaExtractionConfigurationProperty where
  type PropertyType "VideoExtractionConfiguration" MediaExtractionConfigurationProperty = VideoExtractionConfigurationProperty
  set newValue MediaExtractionConfigurationProperty {..}
    = MediaExtractionConfigurationProperty
        {videoExtractionConfiguration = Prelude.pure newValue, ..}