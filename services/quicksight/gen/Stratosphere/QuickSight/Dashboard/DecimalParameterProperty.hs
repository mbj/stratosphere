module Stratosphere.QuickSight.Dashboard.DecimalParameterProperty (
        DecimalParameterProperty(..), mkDecimalParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DecimalParameterProperty
  = DecimalParameterProperty {name :: (Value Prelude.Text),
                              values :: (ValueList Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDecimalParameterProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Double -> DecimalParameterProperty
mkDecimalParameterProperty name values
  = DecimalParameterProperty {name = name, values = values}
instance ToResourceProperties DecimalParameterProperty where
  toResourceProperties DecimalParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DecimalParameter",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Values" JSON..= values]}
instance JSON.ToJSON DecimalParameterProperty where
  toJSON DecimalParameterProperty {..}
    = JSON.object ["Name" JSON..= name, "Values" JSON..= values]
instance Property "Name" DecimalParameterProperty where
  type PropertyType "Name" DecimalParameterProperty = Value Prelude.Text
  set newValue DecimalParameterProperty {..}
    = DecimalParameterProperty {name = newValue, ..}
instance Property "Values" DecimalParameterProperty where
  type PropertyType "Values" DecimalParameterProperty = ValueList Prelude.Double
  set newValue DecimalParameterProperty {..}
    = DecimalParameterProperty {values = newValue, ..}