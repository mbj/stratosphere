module Stratosphere.InspectorV2.Filter.StringFilterProperty (
        StringFilterProperty(..), mkStringFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringFilterProperty
  = StringFilterProperty {comparison :: (Value Prelude.Text),
                          value :: (Value Prelude.Text)}
mkStringFilterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> StringFilterProperty
mkStringFilterProperty comparison value
  = StringFilterProperty {comparison = comparison, value = value}
instance ToResourceProperties StringFilterProperty where
  toResourceProperties StringFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::Filter.StringFilter",
         properties = ["Comparison" JSON..= comparison,
                       "Value" JSON..= value]}
instance JSON.ToJSON StringFilterProperty where
  toJSON StringFilterProperty {..}
    = JSON.object
        ["Comparison" JSON..= comparison, "Value" JSON..= value]
instance Property "Comparison" StringFilterProperty where
  type PropertyType "Comparison" StringFilterProperty = Value Prelude.Text
  set newValue StringFilterProperty {..}
    = StringFilterProperty {comparison = newValue, ..}
instance Property "Value" StringFilterProperty where
  type PropertyType "Value" StringFilterProperty = Value Prelude.Text
  set newValue StringFilterProperty {..}
    = StringFilterProperty {value = newValue, ..}