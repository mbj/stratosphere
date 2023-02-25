module Stratosphere.QuickSight.DataSet.UploadSettingsProperty (
        UploadSettingsProperty(..), mkUploadSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UploadSettingsProperty
  = UploadSettingsProperty {containsHeader :: (Prelude.Maybe (Value Prelude.Bool)),
                            delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                            format :: (Prelude.Maybe (Value Prelude.Text)),
                            startFromRow :: (Prelude.Maybe (Value Prelude.Double)),
                            textQualifier :: (Prelude.Maybe (Value Prelude.Text))}
mkUploadSettingsProperty :: UploadSettingsProperty
mkUploadSettingsProperty
  = UploadSettingsProperty
      {containsHeader = Prelude.Nothing, delimiter = Prelude.Nothing,
       format = Prelude.Nothing, startFromRow = Prelude.Nothing,
       textQualifier = Prelude.Nothing}
instance ToResourceProperties UploadSettingsProperty where
  toResourceProperties UploadSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.UploadSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainsHeader" Prelude.<$> containsHeader,
                            (JSON..=) "Delimiter" Prelude.<$> delimiter,
                            (JSON..=) "Format" Prelude.<$> format,
                            (JSON..=) "StartFromRow" Prelude.<$> startFromRow,
                            (JSON..=) "TextQualifier" Prelude.<$> textQualifier])}
instance JSON.ToJSON UploadSettingsProperty where
  toJSON UploadSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainsHeader" Prelude.<$> containsHeader,
               (JSON..=) "Delimiter" Prelude.<$> delimiter,
               (JSON..=) "Format" Prelude.<$> format,
               (JSON..=) "StartFromRow" Prelude.<$> startFromRow,
               (JSON..=) "TextQualifier" Prelude.<$> textQualifier]))
instance Property "ContainsHeader" UploadSettingsProperty where
  type PropertyType "ContainsHeader" UploadSettingsProperty = Value Prelude.Bool
  set newValue UploadSettingsProperty {..}
    = UploadSettingsProperty
        {containsHeader = Prelude.pure newValue, ..}
instance Property "Delimiter" UploadSettingsProperty where
  type PropertyType "Delimiter" UploadSettingsProperty = Value Prelude.Text
  set newValue UploadSettingsProperty {..}
    = UploadSettingsProperty {delimiter = Prelude.pure newValue, ..}
instance Property "Format" UploadSettingsProperty where
  type PropertyType "Format" UploadSettingsProperty = Value Prelude.Text
  set newValue UploadSettingsProperty {..}
    = UploadSettingsProperty {format = Prelude.pure newValue, ..}
instance Property "StartFromRow" UploadSettingsProperty where
  type PropertyType "StartFromRow" UploadSettingsProperty = Value Prelude.Double
  set newValue UploadSettingsProperty {..}
    = UploadSettingsProperty {startFromRow = Prelude.pure newValue, ..}
instance Property "TextQualifier" UploadSettingsProperty where
  type PropertyType "TextQualifier" UploadSettingsProperty = Value Prelude.Text
  set newValue UploadSettingsProperty {..}
    = UploadSettingsProperty
        {textQualifier = Prelude.pure newValue, ..}