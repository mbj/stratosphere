module Stratosphere.QuickSight.Dashboard.AssetOptionsProperty (
        AssetOptionsProperty(..), mkAssetOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssetOptionsProperty
  = AssetOptionsProperty {timezone :: (Prelude.Maybe (Value Prelude.Text)),
                          weekStart :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssetOptionsProperty :: AssetOptionsProperty
mkAssetOptionsProperty
  = AssetOptionsProperty
      {timezone = Prelude.Nothing, weekStart = Prelude.Nothing}
instance ToResourceProperties AssetOptionsProperty where
  toResourceProperties AssetOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AssetOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Timezone" Prelude.<$> timezone,
                            (JSON..=) "WeekStart" Prelude.<$> weekStart])}
instance JSON.ToJSON AssetOptionsProperty where
  toJSON AssetOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Timezone" Prelude.<$> timezone,
               (JSON..=) "WeekStart" Prelude.<$> weekStart]))
instance Property "Timezone" AssetOptionsProperty where
  type PropertyType "Timezone" AssetOptionsProperty = Value Prelude.Text
  set newValue AssetOptionsProperty {..}
    = AssetOptionsProperty {timezone = Prelude.pure newValue, ..}
instance Property "WeekStart" AssetOptionsProperty where
  type PropertyType "WeekStart" AssetOptionsProperty = Value Prelude.Text
  set newValue AssetOptionsProperty {..}
    = AssetOptionsProperty {weekStart = Prelude.pure newValue, ..}