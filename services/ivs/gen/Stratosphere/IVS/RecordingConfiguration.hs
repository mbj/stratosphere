module Stratosphere.IVS.RecordingConfiguration (
        module Exports, RecordingConfiguration(..),
        mkRecordingConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IVS.RecordingConfiguration.DestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.IVS.RecordingConfiguration.RenditionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.IVS.RecordingConfiguration.ThumbnailConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RecordingConfiguration
  = RecordingConfiguration {destinationConfiguration :: DestinationConfigurationProperty,
                            name :: (Prelude.Maybe (Value Prelude.Text)),
                            recordingReconnectWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                            renditionConfiguration :: (Prelude.Maybe RenditionConfigurationProperty),
                            tags :: (Prelude.Maybe [Tag]),
                            thumbnailConfiguration :: (Prelude.Maybe ThumbnailConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordingConfiguration ::
  DestinationConfigurationProperty -> RecordingConfiguration
mkRecordingConfiguration destinationConfiguration
  = RecordingConfiguration
      {destinationConfiguration = destinationConfiguration,
       name = Prelude.Nothing,
       recordingReconnectWindowSeconds = Prelude.Nothing,
       renditionConfiguration = Prelude.Nothing, tags = Prelude.Nothing,
       thumbnailConfiguration = Prelude.Nothing}
instance ToResourceProperties RecordingConfiguration where
  toResourceProperties RecordingConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::IVS::RecordingConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationConfiguration" JSON..= destinationConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "RecordingReconnectWindowSeconds"
                                 Prelude.<$> recordingReconnectWindowSeconds,
                               (JSON..=) "RenditionConfiguration"
                                 Prelude.<$> renditionConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "ThumbnailConfiguration"
                                 Prelude.<$> thumbnailConfiguration]))}
instance JSON.ToJSON RecordingConfiguration where
  toJSON RecordingConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationConfiguration" JSON..= destinationConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "RecordingReconnectWindowSeconds"
                    Prelude.<$> recordingReconnectWindowSeconds,
                  (JSON..=) "RenditionConfiguration"
                    Prelude.<$> renditionConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "ThumbnailConfiguration"
                    Prelude.<$> thumbnailConfiguration])))
instance Property "DestinationConfiguration" RecordingConfiguration where
  type PropertyType "DestinationConfiguration" RecordingConfiguration = DestinationConfigurationProperty
  set newValue RecordingConfiguration {..}
    = RecordingConfiguration {destinationConfiguration = newValue, ..}
instance Property "Name" RecordingConfiguration where
  type PropertyType "Name" RecordingConfiguration = Value Prelude.Text
  set newValue RecordingConfiguration {..}
    = RecordingConfiguration {name = Prelude.pure newValue, ..}
instance Property "RecordingReconnectWindowSeconds" RecordingConfiguration where
  type PropertyType "RecordingReconnectWindowSeconds" RecordingConfiguration = Value Prelude.Integer
  set newValue RecordingConfiguration {..}
    = RecordingConfiguration
        {recordingReconnectWindowSeconds = Prelude.pure newValue, ..}
instance Property "RenditionConfiguration" RecordingConfiguration where
  type PropertyType "RenditionConfiguration" RecordingConfiguration = RenditionConfigurationProperty
  set newValue RecordingConfiguration {..}
    = RecordingConfiguration
        {renditionConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" RecordingConfiguration where
  type PropertyType "Tags" RecordingConfiguration = [Tag]
  set newValue RecordingConfiguration {..}
    = RecordingConfiguration {tags = Prelude.pure newValue, ..}
instance Property "ThumbnailConfiguration" RecordingConfiguration where
  type PropertyType "ThumbnailConfiguration" RecordingConfiguration = ThumbnailConfigurationProperty
  set newValue RecordingConfiguration {..}
    = RecordingConfiguration
        {thumbnailConfiguration = Prelude.pure newValue, ..}