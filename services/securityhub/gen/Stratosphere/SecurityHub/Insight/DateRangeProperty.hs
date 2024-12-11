module Stratosphere.SecurityHub.Insight.DateRangeProperty (
        DateRangeProperty(..), mkDateRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateRangeProperty
  = DateRangeProperty {unit :: (Value Prelude.Text),
                       value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateRangeProperty ::
  Value Prelude.Text -> Value Prelude.Double -> DateRangeProperty
mkDateRangeProperty unit value
  = DateRangeProperty {unit = unit, value = value}
instance ToResourceProperties DateRangeProperty where
  toResourceProperties DateRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::Insight.DateRange",
         supportsTags = Prelude.False,
         properties = ["Unit" JSON..= unit, "Value" JSON..= value]}
instance JSON.ToJSON DateRangeProperty where
  toJSON DateRangeProperty {..}
    = JSON.object ["Unit" JSON..= unit, "Value" JSON..= value]
instance Property "Unit" DateRangeProperty where
  type PropertyType "Unit" DateRangeProperty = Value Prelude.Text
  set newValue DateRangeProperty {..}
    = DateRangeProperty {unit = newValue, ..}
instance Property "Value" DateRangeProperty where
  type PropertyType "Value" DateRangeProperty = Value Prelude.Double
  set newValue DateRangeProperty {..}
    = DateRangeProperty {value = newValue, ..}