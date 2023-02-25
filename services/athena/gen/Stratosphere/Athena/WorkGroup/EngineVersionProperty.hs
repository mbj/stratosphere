module Stratosphere.Athena.WorkGroup.EngineVersionProperty (
        EngineVersionProperty(..), mkEngineVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EngineVersionProperty
  = EngineVersionProperty {effectiveEngineVersion :: (Prelude.Maybe (Value Prelude.Text)),
                           selectedEngineVersion :: (Prelude.Maybe (Value Prelude.Text))}
mkEngineVersionProperty :: EngineVersionProperty
mkEngineVersionProperty
  = EngineVersionProperty
      {effectiveEngineVersion = Prelude.Nothing,
       selectedEngineVersion = Prelude.Nothing}
instance ToResourceProperties EngineVersionProperty where
  toResourceProperties EngineVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::WorkGroup.EngineVersion",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EffectiveEngineVersion"
                              Prelude.<$> effectiveEngineVersion,
                            (JSON..=) "SelectedEngineVersion"
                              Prelude.<$> selectedEngineVersion])}
instance JSON.ToJSON EngineVersionProperty where
  toJSON EngineVersionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EffectiveEngineVersion"
                 Prelude.<$> effectiveEngineVersion,
               (JSON..=) "SelectedEngineVersion"
                 Prelude.<$> selectedEngineVersion]))
instance Property "EffectiveEngineVersion" EngineVersionProperty where
  type PropertyType "EffectiveEngineVersion" EngineVersionProperty = Value Prelude.Text
  set newValue EngineVersionProperty {..}
    = EngineVersionProperty
        {effectiveEngineVersion = Prelude.pure newValue, ..}
instance Property "SelectedEngineVersion" EngineVersionProperty where
  type PropertyType "SelectedEngineVersion" EngineVersionProperty = Value Prelude.Text
  set newValue EngineVersionProperty {..}
    = EngineVersionProperty
        {selectedEngineVersion = Prelude.pure newValue, ..}