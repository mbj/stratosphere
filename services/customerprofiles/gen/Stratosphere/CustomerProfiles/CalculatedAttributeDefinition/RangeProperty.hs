module Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.RangeProperty (
        RangeProperty(..), mkRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RangeProperty
  = RangeProperty {unit :: (Value Prelude.Text),
                   value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRangeProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> RangeProperty
mkRangeProperty unit value
  = RangeProperty {unit = unit, value = value}
instance ToResourceProperties RangeProperty where
  toResourceProperties RangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::CalculatedAttributeDefinition.Range",
         supportsTags = Prelude.False,
         properties = ["Unit" JSON..= unit, "Value" JSON..= value]}
instance JSON.ToJSON RangeProperty where
  toJSON RangeProperty {..}
    = JSON.object ["Unit" JSON..= unit, "Value" JSON..= value]
instance Property "Unit" RangeProperty where
  type PropertyType "Unit" RangeProperty = Value Prelude.Text
  set newValue RangeProperty {..}
    = RangeProperty {unit = newValue, ..}
instance Property "Value" RangeProperty where
  type PropertyType "Value" RangeProperty = Value Prelude.Integer
  set newValue RangeProperty {..}
    = RangeProperty {value = newValue, ..}