module Stratosphere.SSMIncidents.ResponsePlan.SsmParameterProperty (
        SsmParameterProperty(..), mkSsmParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SsmParameterProperty
  = SsmParameterProperty {key :: (Value Prelude.Text),
                          values :: (ValueList (Value Prelude.Text))}
mkSsmParameterProperty ::
  Value Prelude.Text
  -> ValueList (Value Prelude.Text) -> SsmParameterProperty
mkSsmParameterProperty key values
  = SsmParameterProperty {key = key, values = values}
instance ToResourceProperties SsmParameterProperty where
  toResourceProperties SsmParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.SsmParameter",
         properties = ["Key" JSON..= key, "Values" JSON..= values]}
instance JSON.ToJSON SsmParameterProperty where
  toJSON SsmParameterProperty {..}
    = JSON.object ["Key" JSON..= key, "Values" JSON..= values]
instance Property "Key" SsmParameterProperty where
  type PropertyType "Key" SsmParameterProperty = Value Prelude.Text
  set newValue SsmParameterProperty {..}
    = SsmParameterProperty {key = newValue, ..}
instance Property "Values" SsmParameterProperty where
  type PropertyType "Values" SsmParameterProperty = ValueList (Value Prelude.Text)
  set newValue SsmParameterProperty {..}
    = SsmParameterProperty {values = newValue, ..}