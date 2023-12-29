module Stratosphere.QuickSight.Topic.NegativeFormatProperty (
        NegativeFormatProperty(..), mkNegativeFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NegativeFormatProperty
  = NegativeFormatProperty {prefix :: (Prelude.Maybe (Value Prelude.Text)),
                            suffix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNegativeFormatProperty :: NegativeFormatProperty
mkNegativeFormatProperty
  = NegativeFormatProperty
      {prefix = Prelude.Nothing, suffix = Prelude.Nothing}
instance ToResourceProperties NegativeFormatProperty where
  toResourceProperties NegativeFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.NegativeFormat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "Suffix" Prelude.<$> suffix])}
instance JSON.ToJSON NegativeFormatProperty where
  toJSON NegativeFormatProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "Suffix" Prelude.<$> suffix]))
instance Property "Prefix" NegativeFormatProperty where
  type PropertyType "Prefix" NegativeFormatProperty = Value Prelude.Text
  set newValue NegativeFormatProperty {..}
    = NegativeFormatProperty {prefix = Prelude.pure newValue, ..}
instance Property "Suffix" NegativeFormatProperty where
  type PropertyType "Suffix" NegativeFormatProperty = Value Prelude.Text
  set newValue NegativeFormatProperty {..}
    = NegativeFormatProperty {suffix = Prelude.pure newValue, ..}