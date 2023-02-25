module Stratosphere.DataBrew.Ruleset.SubstitutionValueProperty (
        SubstitutionValueProperty(..), mkSubstitutionValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubstitutionValueProperty
  = SubstitutionValueProperty {value :: (Value Prelude.Text),
                               valueReference :: (Value Prelude.Text)}
mkSubstitutionValueProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SubstitutionValueProperty
mkSubstitutionValueProperty value valueReference
  = SubstitutionValueProperty
      {value = value, valueReference = valueReference}
instance ToResourceProperties SubstitutionValueProperty where
  toResourceProperties SubstitutionValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Ruleset.SubstitutionValue",
         properties = ["Value" JSON..= value,
                       "ValueReference" JSON..= valueReference]}
instance JSON.ToJSON SubstitutionValueProperty where
  toJSON SubstitutionValueProperty {..}
    = JSON.object
        ["Value" JSON..= value, "ValueReference" JSON..= valueReference]
instance Property "Value" SubstitutionValueProperty where
  type PropertyType "Value" SubstitutionValueProperty = Value Prelude.Text
  set newValue SubstitutionValueProperty {..}
    = SubstitutionValueProperty {value = newValue, ..}
instance Property "ValueReference" SubstitutionValueProperty where
  type PropertyType "ValueReference" SubstitutionValueProperty = Value Prelude.Text
  set newValue SubstitutionValueProperty {..}
    = SubstitutionValueProperty {valueReference = newValue, ..}