module Stratosphere.Rbin.Rule.UnlockDelayProperty (
        UnlockDelayProperty(..), mkUnlockDelayProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UnlockDelayProperty
  = UnlockDelayProperty {unlockDelayUnit :: (Prelude.Maybe (Value Prelude.Text)),
                         unlockDelayValue :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUnlockDelayProperty :: UnlockDelayProperty
mkUnlockDelayProperty
  = UnlockDelayProperty
      {unlockDelayUnit = Prelude.Nothing,
       unlockDelayValue = Prelude.Nothing}
instance ToResourceProperties UnlockDelayProperty where
  toResourceProperties UnlockDelayProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rbin::Rule.UnlockDelay",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "UnlockDelayUnit" Prelude.<$> unlockDelayUnit,
                            (JSON..=) "UnlockDelayValue" Prelude.<$> unlockDelayValue])}
instance JSON.ToJSON UnlockDelayProperty where
  toJSON UnlockDelayProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "UnlockDelayUnit" Prelude.<$> unlockDelayUnit,
               (JSON..=) "UnlockDelayValue" Prelude.<$> unlockDelayValue]))
instance Property "UnlockDelayUnit" UnlockDelayProperty where
  type PropertyType "UnlockDelayUnit" UnlockDelayProperty = Value Prelude.Text
  set newValue UnlockDelayProperty {..}
    = UnlockDelayProperty {unlockDelayUnit = Prelude.pure newValue, ..}
instance Property "UnlockDelayValue" UnlockDelayProperty where
  type PropertyType "UnlockDelayValue" UnlockDelayProperty = Value Prelude.Integer
  set newValue UnlockDelayProperty {..}
    = UnlockDelayProperty
        {unlockDelayValue = Prelude.pure newValue, ..}