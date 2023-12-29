module Stratosphere.MediaLive.Channel.MsSmoothOutputSettingsProperty (
        MsSmoothOutputSettingsProperty(..),
        mkMsSmoothOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MsSmoothOutputSettingsProperty
  = MsSmoothOutputSettingsProperty {h265PackagingType :: (Prelude.Maybe (Value Prelude.Text)),
                                    nameModifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMsSmoothOutputSettingsProperty :: MsSmoothOutputSettingsProperty
mkMsSmoothOutputSettingsProperty
  = MsSmoothOutputSettingsProperty
      {h265PackagingType = Prelude.Nothing,
       nameModifier = Prelude.Nothing}
instance ToResourceProperties MsSmoothOutputSettingsProperty where
  toResourceProperties MsSmoothOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MsSmoothOutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "H265PackagingType" Prelude.<$> h265PackagingType,
                            (JSON..=) "NameModifier" Prelude.<$> nameModifier])}
instance JSON.ToJSON MsSmoothOutputSettingsProperty where
  toJSON MsSmoothOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "H265PackagingType" Prelude.<$> h265PackagingType,
               (JSON..=) "NameModifier" Prelude.<$> nameModifier]))
instance Property "H265PackagingType" MsSmoothOutputSettingsProperty where
  type PropertyType "H265PackagingType" MsSmoothOutputSettingsProperty = Value Prelude.Text
  set newValue MsSmoothOutputSettingsProperty {..}
    = MsSmoothOutputSettingsProperty
        {h265PackagingType = Prelude.pure newValue, ..}
instance Property "NameModifier" MsSmoothOutputSettingsProperty where
  type PropertyType "NameModifier" MsSmoothOutputSettingsProperty = Value Prelude.Text
  set newValue MsSmoothOutputSettingsProperty {..}
    = MsSmoothOutputSettingsProperty
        {nameModifier = Prelude.pure newValue, ..}