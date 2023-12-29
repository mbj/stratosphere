module Stratosphere.QuickSight.Dashboard.LongFormatTextProperty (
        LongFormatTextProperty(..), mkLongFormatTextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LongFormatTextProperty
  = LongFormatTextProperty {plainText :: (Prelude.Maybe (Value Prelude.Text)),
                            richText :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLongFormatTextProperty :: LongFormatTextProperty
mkLongFormatTextProperty
  = LongFormatTextProperty
      {plainText = Prelude.Nothing, richText = Prelude.Nothing}
instance ToResourceProperties LongFormatTextProperty where
  toResourceProperties LongFormatTextProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.LongFormatText",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PlainText" Prelude.<$> plainText,
                            (JSON..=) "RichText" Prelude.<$> richText])}
instance JSON.ToJSON LongFormatTextProperty where
  toJSON LongFormatTextProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PlainText" Prelude.<$> plainText,
               (JSON..=) "RichText" Prelude.<$> richText]))
instance Property "PlainText" LongFormatTextProperty where
  type PropertyType "PlainText" LongFormatTextProperty = Value Prelude.Text
  set newValue LongFormatTextProperty {..}
    = LongFormatTextProperty {plainText = Prelude.pure newValue, ..}
instance Property "RichText" LongFormatTextProperty where
  type PropertyType "RichText" LongFormatTextProperty = Value Prelude.Text
  set newValue LongFormatTextProperty {..}
    = LongFormatTextProperty {richText = Prelude.pure newValue, ..}