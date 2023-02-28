module Stratosphere.Evidently.Feature.EntityOverrideProperty (
        EntityOverrideProperty(..), mkEntityOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EntityOverrideProperty
  = EntityOverrideProperty {entityId :: (Prelude.Maybe (Value Prelude.Text)),
                            variation :: (Prelude.Maybe (Value Prelude.Text))}
mkEntityOverrideProperty :: EntityOverrideProperty
mkEntityOverrideProperty
  = EntityOverrideProperty
      {entityId = Prelude.Nothing, variation = Prelude.Nothing}
instance ToResourceProperties EntityOverrideProperty where
  toResourceProperties EntityOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Feature.EntityOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EntityId" Prelude.<$> entityId,
                            (JSON..=) "Variation" Prelude.<$> variation])}
instance JSON.ToJSON EntityOverrideProperty where
  toJSON EntityOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EntityId" Prelude.<$> entityId,
               (JSON..=) "Variation" Prelude.<$> variation]))
instance Property "EntityId" EntityOverrideProperty where
  type PropertyType "EntityId" EntityOverrideProperty = Value Prelude.Text
  set newValue EntityOverrideProperty {..}
    = EntityOverrideProperty {entityId = Prelude.pure newValue, ..}
instance Property "Variation" EntityOverrideProperty where
  type PropertyType "Variation" EntityOverrideProperty = Value Prelude.Text
  set newValue EntityOverrideProperty {..}
    = EntityOverrideProperty {variation = Prelude.pure newValue, ..}