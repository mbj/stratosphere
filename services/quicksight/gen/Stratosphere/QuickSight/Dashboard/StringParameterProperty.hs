module Stratosphere.QuickSight.Dashboard.StringParameterProperty (
        StringParameterProperty(..), mkStringParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringParameterProperty
  = StringParameterProperty {name :: (Value Prelude.Text),
                             values :: (ValueList Prelude.Text)}
mkStringParameterProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> StringParameterProperty
mkStringParameterProperty name values
  = StringParameterProperty {name = name, values = values}
instance ToResourceProperties StringParameterProperty where
  toResourceProperties StringParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.StringParameter",
         properties = ["Name" JSON..= name, "Values" JSON..= values]}
instance JSON.ToJSON StringParameterProperty where
  toJSON StringParameterProperty {..}
    = JSON.object ["Name" JSON..= name, "Values" JSON..= values]
instance Property "Name" StringParameterProperty where
  type PropertyType "Name" StringParameterProperty = Value Prelude.Text
  set newValue StringParameterProperty {..}
    = StringParameterProperty {name = newValue, ..}
instance Property "Values" StringParameterProperty where
  type PropertyType "Values" StringParameterProperty = ValueList Prelude.Text
  set newValue StringParameterProperty {..}
    = StringParameterProperty {values = newValue, ..}