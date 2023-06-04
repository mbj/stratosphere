module Stratosphere.QuickSight.Template.ThousandSeparatorOptionsProperty (
        ThousandSeparatorOptionsProperty(..),
        mkThousandSeparatorOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThousandSeparatorOptionsProperty
  = ThousandSeparatorOptionsProperty {symbol :: (Prelude.Maybe (Value Prelude.Text)),
                                      visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkThousandSeparatorOptionsProperty ::
  ThousandSeparatorOptionsProperty
mkThousandSeparatorOptionsProperty
  = ThousandSeparatorOptionsProperty
      {symbol = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties ThousandSeparatorOptionsProperty where
  toResourceProperties ThousandSeparatorOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ThousandSeparatorOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Symbol" Prelude.<$> symbol,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON ThousandSeparatorOptionsProperty where
  toJSON ThousandSeparatorOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Symbol" Prelude.<$> symbol,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Symbol" ThousandSeparatorOptionsProperty where
  type PropertyType "Symbol" ThousandSeparatorOptionsProperty = Value Prelude.Text
  set newValue ThousandSeparatorOptionsProperty {..}
    = ThousandSeparatorOptionsProperty
        {symbol = Prelude.pure newValue, ..}
instance Property "Visibility" ThousandSeparatorOptionsProperty where
  type PropertyType "Visibility" ThousandSeparatorOptionsProperty = Value Prelude.Text
  set newValue ThousandSeparatorOptionsProperty {..}
    = ThousandSeparatorOptionsProperty
        {visibility = Prelude.pure newValue, ..}