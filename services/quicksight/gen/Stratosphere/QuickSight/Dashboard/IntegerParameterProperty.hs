module Stratosphere.QuickSight.Dashboard.IntegerParameterProperty (
        IntegerParameterProperty(..), mkIntegerParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegerParameterProperty
  = IntegerParameterProperty {name :: (Value Prelude.Text),
                              values :: (ValueList (Value Prelude.Double))}
mkIntegerParameterProperty ::
  Value Prelude.Text
  -> ValueList (Value Prelude.Double) -> IntegerParameterProperty
mkIntegerParameterProperty name values
  = IntegerParameterProperty {name = name, values = values}
instance ToResourceProperties IntegerParameterProperty where
  toResourceProperties IntegerParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.IntegerParameter",
         properties = ["Name" JSON..= name, "Values" JSON..= values]}
instance JSON.ToJSON IntegerParameterProperty where
  toJSON IntegerParameterProperty {..}
    = JSON.object ["Name" JSON..= name, "Values" JSON..= values]
instance Property "Name" IntegerParameterProperty where
  type PropertyType "Name" IntegerParameterProperty = Value Prelude.Text
  set newValue IntegerParameterProperty {..}
    = IntegerParameterProperty {name = newValue, ..}
instance Property "Values" IntegerParameterProperty where
  type PropertyType "Values" IntegerParameterProperty = ValueList (Value Prelude.Double)
  set newValue IntegerParameterProperty {..}
    = IntegerParameterProperty {values = newValue, ..}