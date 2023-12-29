module Stratosphere.MediaLive.Channel.HlsOutputSettingsProperty (
        module Exports, HlsOutputSettingsProperty(..),
        mkHlsOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.HlsSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsOutputSettingsProperty
  = HlsOutputSettingsProperty {h265PackagingType :: (Prelude.Maybe (Value Prelude.Text)),
                               hlsSettings :: (Prelude.Maybe HlsSettingsProperty),
                               nameModifier :: (Prelude.Maybe (Value Prelude.Text)),
                               segmentModifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsOutputSettingsProperty :: HlsOutputSettingsProperty
mkHlsOutputSettingsProperty
  = HlsOutputSettingsProperty
      {h265PackagingType = Prelude.Nothing,
       hlsSettings = Prelude.Nothing, nameModifier = Prelude.Nothing,
       segmentModifier = Prelude.Nothing}
instance ToResourceProperties HlsOutputSettingsProperty where
  toResourceProperties HlsOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.HlsOutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "H265PackagingType" Prelude.<$> h265PackagingType,
                            (JSON..=) "HlsSettings" Prelude.<$> hlsSettings,
                            (JSON..=) "NameModifier" Prelude.<$> nameModifier,
                            (JSON..=) "SegmentModifier" Prelude.<$> segmentModifier])}
instance JSON.ToJSON HlsOutputSettingsProperty where
  toJSON HlsOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "H265PackagingType" Prelude.<$> h265PackagingType,
               (JSON..=) "HlsSettings" Prelude.<$> hlsSettings,
               (JSON..=) "NameModifier" Prelude.<$> nameModifier,
               (JSON..=) "SegmentModifier" Prelude.<$> segmentModifier]))
instance Property "H265PackagingType" HlsOutputSettingsProperty where
  type PropertyType "H265PackagingType" HlsOutputSettingsProperty = Value Prelude.Text
  set newValue HlsOutputSettingsProperty {..}
    = HlsOutputSettingsProperty
        {h265PackagingType = Prelude.pure newValue, ..}
instance Property "HlsSettings" HlsOutputSettingsProperty where
  type PropertyType "HlsSettings" HlsOutputSettingsProperty = HlsSettingsProperty
  set newValue HlsOutputSettingsProperty {..}
    = HlsOutputSettingsProperty
        {hlsSettings = Prelude.pure newValue, ..}
instance Property "NameModifier" HlsOutputSettingsProperty where
  type PropertyType "NameModifier" HlsOutputSettingsProperty = Value Prelude.Text
  set newValue HlsOutputSettingsProperty {..}
    = HlsOutputSettingsProperty
        {nameModifier = Prelude.pure newValue, ..}
instance Property "SegmentModifier" HlsOutputSettingsProperty where
  type PropertyType "SegmentModifier" HlsOutputSettingsProperty = Value Prelude.Text
  set newValue HlsOutputSettingsProperty {..}
    = HlsOutputSettingsProperty
        {segmentModifier = Prelude.pure newValue, ..}