module Stratosphere.QuickSight.Theme.ThemeErrorProperty (
        ThemeErrorProperty(..), mkThemeErrorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThemeErrorProperty
  = ThemeErrorProperty {message :: (Prelude.Maybe (Value Prelude.Text)),
                        type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThemeErrorProperty :: ThemeErrorProperty
mkThemeErrorProperty
  = ThemeErrorProperty
      {message = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties ThemeErrorProperty where
  toResourceProperties ThemeErrorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.ThemeError",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Message" Prelude.<$> message,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON ThemeErrorProperty where
  toJSON ThemeErrorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Message" Prelude.<$> message,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Message" ThemeErrorProperty where
  type PropertyType "Message" ThemeErrorProperty = Value Prelude.Text
  set newValue ThemeErrorProperty {..}
    = ThemeErrorProperty {message = Prelude.pure newValue, ..}
instance Property "Type" ThemeErrorProperty where
  type PropertyType "Type" ThemeErrorProperty = Value Prelude.Text
  set newValue ThemeErrorProperty {..}
    = ThemeErrorProperty {type' = Prelude.pure newValue, ..}