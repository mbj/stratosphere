module Stratosphere.MediaLive.Channel.CmafIngestOutputSettingsProperty (
        CmafIngestOutputSettingsProperty(..),
        mkCmafIngestOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CmafIngestOutputSettingsProperty
  = CmafIngestOutputSettingsProperty {nameModifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCmafIngestOutputSettingsProperty ::
  CmafIngestOutputSettingsProperty
mkCmafIngestOutputSettingsProperty
  = CmafIngestOutputSettingsProperty {nameModifier = Prelude.Nothing}
instance ToResourceProperties CmafIngestOutputSettingsProperty where
  toResourceProperties CmafIngestOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.CmafIngestOutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NameModifier" Prelude.<$> nameModifier])}
instance JSON.ToJSON CmafIngestOutputSettingsProperty where
  toJSON CmafIngestOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NameModifier" Prelude.<$> nameModifier]))
instance Property "NameModifier" CmafIngestOutputSettingsProperty where
  type PropertyType "NameModifier" CmafIngestOutputSettingsProperty = Value Prelude.Text
  set newValue CmafIngestOutputSettingsProperty {}
    = CmafIngestOutputSettingsProperty
        {nameModifier = Prelude.pure newValue, ..}