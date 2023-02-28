module Stratosphere.KinesisFirehose.DeliveryStream.OpenXJsonSerDeProperty (
        OpenXJsonSerDeProperty(..), mkOpenXJsonSerDeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenXJsonSerDeProperty
  = OpenXJsonSerDeProperty {caseInsensitive :: (Prelude.Maybe (Value Prelude.Bool)),
                            columnToJsonKeyMappings :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                            convertDotsInJsonKeysToUnderscores :: (Prelude.Maybe (Value Prelude.Bool))}
mkOpenXJsonSerDeProperty :: OpenXJsonSerDeProperty
mkOpenXJsonSerDeProperty
  = OpenXJsonSerDeProperty
      {caseInsensitive = Prelude.Nothing,
       columnToJsonKeyMappings = Prelude.Nothing,
       convertDotsInJsonKeysToUnderscores = Prelude.Nothing}
instance ToResourceProperties OpenXJsonSerDeProperty where
  toResourceProperties OpenXJsonSerDeProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.OpenXJsonSerDe",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CaseInsensitive" Prelude.<$> caseInsensitive,
                            (JSON..=) "ColumnToJsonKeyMappings"
                              Prelude.<$> columnToJsonKeyMappings,
                            (JSON..=) "ConvertDotsInJsonKeysToUnderscores"
                              Prelude.<$> convertDotsInJsonKeysToUnderscores])}
instance JSON.ToJSON OpenXJsonSerDeProperty where
  toJSON OpenXJsonSerDeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CaseInsensitive" Prelude.<$> caseInsensitive,
               (JSON..=) "ColumnToJsonKeyMappings"
                 Prelude.<$> columnToJsonKeyMappings,
               (JSON..=) "ConvertDotsInJsonKeysToUnderscores"
                 Prelude.<$> convertDotsInJsonKeysToUnderscores]))
instance Property "CaseInsensitive" OpenXJsonSerDeProperty where
  type PropertyType "CaseInsensitive" OpenXJsonSerDeProperty = Value Prelude.Bool
  set newValue OpenXJsonSerDeProperty {..}
    = OpenXJsonSerDeProperty
        {caseInsensitive = Prelude.pure newValue, ..}
instance Property "ColumnToJsonKeyMappings" OpenXJsonSerDeProperty where
  type PropertyType "ColumnToJsonKeyMappings" OpenXJsonSerDeProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue OpenXJsonSerDeProperty {..}
    = OpenXJsonSerDeProperty
        {columnToJsonKeyMappings = Prelude.pure newValue, ..}
instance Property "ConvertDotsInJsonKeysToUnderscores" OpenXJsonSerDeProperty where
  type PropertyType "ConvertDotsInJsonKeysToUnderscores" OpenXJsonSerDeProperty = Value Prelude.Bool
  set newValue OpenXJsonSerDeProperty {..}
    = OpenXJsonSerDeProperty
        {convertDotsInJsonKeysToUnderscores = Prelude.pure newValue, ..}