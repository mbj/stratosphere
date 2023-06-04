module Stratosphere.QuickSight.Dashboard.ShortFormatTextProperty (
        ShortFormatTextProperty(..), mkShortFormatTextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ShortFormatTextProperty
  = ShortFormatTextProperty {plainText :: (Prelude.Maybe (Value Prelude.Text)),
                             richText :: (Prelude.Maybe (Value Prelude.Text))}
mkShortFormatTextProperty :: ShortFormatTextProperty
mkShortFormatTextProperty
  = ShortFormatTextProperty
      {plainText = Prelude.Nothing, richText = Prelude.Nothing}
instance ToResourceProperties ShortFormatTextProperty where
  toResourceProperties ShortFormatTextProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ShortFormatText",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PlainText" Prelude.<$> plainText,
                            (JSON..=) "RichText" Prelude.<$> richText])}
instance JSON.ToJSON ShortFormatTextProperty where
  toJSON ShortFormatTextProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PlainText" Prelude.<$> plainText,
               (JSON..=) "RichText" Prelude.<$> richText]))
instance Property "PlainText" ShortFormatTextProperty where
  type PropertyType "PlainText" ShortFormatTextProperty = Value Prelude.Text
  set newValue ShortFormatTextProperty {..}
    = ShortFormatTextProperty {plainText = Prelude.pure newValue, ..}
instance Property "RichText" ShortFormatTextProperty where
  type PropertyType "RichText" ShortFormatTextProperty = Value Prelude.Text
  set newValue ShortFormatTextProperty {..}
    = ShortFormatTextProperty {richText = Prelude.pure newValue, ..}