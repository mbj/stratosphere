module Stratosphere.MediaLive.Channel.FecOutputSettingsProperty (
        FecOutputSettingsProperty(..), mkFecOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FecOutputSettingsProperty
  = FecOutputSettingsProperty {columnDepth :: (Prelude.Maybe (Value Prelude.Integer)),
                               includeFec :: (Prelude.Maybe (Value Prelude.Text)),
                               rowLength :: (Prelude.Maybe (Value Prelude.Integer))}
mkFecOutputSettingsProperty :: FecOutputSettingsProperty
mkFecOutputSettingsProperty
  = FecOutputSettingsProperty
      {columnDepth = Prelude.Nothing, includeFec = Prelude.Nothing,
       rowLength = Prelude.Nothing}
instance ToResourceProperties FecOutputSettingsProperty where
  toResourceProperties FecOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FecOutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnDepth" Prelude.<$> columnDepth,
                            (JSON..=) "IncludeFec" Prelude.<$> includeFec,
                            (JSON..=) "RowLength" Prelude.<$> rowLength])}
instance JSON.ToJSON FecOutputSettingsProperty where
  toJSON FecOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnDepth" Prelude.<$> columnDepth,
               (JSON..=) "IncludeFec" Prelude.<$> includeFec,
               (JSON..=) "RowLength" Prelude.<$> rowLength]))
instance Property "ColumnDepth" FecOutputSettingsProperty where
  type PropertyType "ColumnDepth" FecOutputSettingsProperty = Value Prelude.Integer
  set newValue FecOutputSettingsProperty {..}
    = FecOutputSettingsProperty
        {columnDepth = Prelude.pure newValue, ..}
instance Property "IncludeFec" FecOutputSettingsProperty where
  type PropertyType "IncludeFec" FecOutputSettingsProperty = Value Prelude.Text
  set newValue FecOutputSettingsProperty {..}
    = FecOutputSettingsProperty
        {includeFec = Prelude.pure newValue, ..}
instance Property "RowLength" FecOutputSettingsProperty where
  type PropertyType "RowLength" FecOutputSettingsProperty = Value Prelude.Integer
  set newValue FecOutputSettingsProperty {..}
    = FecOutputSettingsProperty {rowLength = Prelude.pure newValue, ..}