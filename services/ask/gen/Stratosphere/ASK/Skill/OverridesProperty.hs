module Stratosphere.ASK.Skill.OverridesProperty (
        OverridesProperty(..), mkOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data OverridesProperty
  = OverridesProperty {manifest :: (Prelude.Maybe JSON.Object)}
mkOverridesProperty :: OverridesProperty
mkOverridesProperty
  = OverridesProperty {manifest = Prelude.Nothing}
instance ToResourceProperties OverridesProperty where
  toResourceProperties OverridesProperty {..}
    = ResourceProperties
        {awsType = "Alexa::ASK::Skill.Overrides",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Manifest" Prelude.<$> manifest])}
instance JSON.ToJSON OverridesProperty where
  toJSON OverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Manifest" Prelude.<$> manifest]))
instance Property "Manifest" OverridesProperty where
  type PropertyType "Manifest" OverridesProperty = JSON.Object
  set newValue OverridesProperty {}
    = OverridesProperty {manifest = Prelude.pure newValue, ..}