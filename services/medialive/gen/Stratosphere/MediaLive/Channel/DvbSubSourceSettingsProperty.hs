module Stratosphere.MediaLive.Channel.DvbSubSourceSettingsProperty (
        DvbSubSourceSettingsProperty(..), mkDvbSubSourceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DvbSubSourceSettingsProperty
  = DvbSubSourceSettingsProperty {ocrLanguage :: (Prelude.Maybe (Value Prelude.Text)),
                                  pid :: (Prelude.Maybe (Value Prelude.Integer))}
mkDvbSubSourceSettingsProperty :: DvbSubSourceSettingsProperty
mkDvbSubSourceSettingsProperty
  = DvbSubSourceSettingsProperty
      {ocrLanguage = Prelude.Nothing, pid = Prelude.Nothing}
instance ToResourceProperties DvbSubSourceSettingsProperty where
  toResourceProperties DvbSubSourceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.DvbSubSourceSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OcrLanguage" Prelude.<$> ocrLanguage,
                            (JSON..=) "Pid" Prelude.<$> pid])}
instance JSON.ToJSON DvbSubSourceSettingsProperty where
  toJSON DvbSubSourceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OcrLanguage" Prelude.<$> ocrLanguage,
               (JSON..=) "Pid" Prelude.<$> pid]))
instance Property "OcrLanguage" DvbSubSourceSettingsProperty where
  type PropertyType "OcrLanguage" DvbSubSourceSettingsProperty = Value Prelude.Text
  set newValue DvbSubSourceSettingsProperty {..}
    = DvbSubSourceSettingsProperty
        {ocrLanguage = Prelude.pure newValue, ..}
instance Property "Pid" DvbSubSourceSettingsProperty where
  type PropertyType "Pid" DvbSubSourceSettingsProperty = Value Prelude.Integer
  set newValue DvbSubSourceSettingsProperty {..}
    = DvbSubSourceSettingsProperty {pid = Prelude.pure newValue, ..}