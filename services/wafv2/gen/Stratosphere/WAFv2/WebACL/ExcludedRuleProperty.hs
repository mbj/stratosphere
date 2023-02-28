module Stratosphere.WAFv2.WebACL.ExcludedRuleProperty (
        ExcludedRuleProperty(..), mkExcludedRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExcludedRuleProperty
  = ExcludedRuleProperty {name :: (Value Prelude.Text)}
mkExcludedRuleProperty ::
  Value Prelude.Text -> ExcludedRuleProperty
mkExcludedRuleProperty name = ExcludedRuleProperty {name = name}
instance ToResourceProperties ExcludedRuleProperty where
  toResourceProperties ExcludedRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ExcludedRule",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON ExcludedRuleProperty where
  toJSON ExcludedRuleProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" ExcludedRuleProperty where
  type PropertyType "Name" ExcludedRuleProperty = Value Prelude.Text
  set newValue ExcludedRuleProperty {}
    = ExcludedRuleProperty {name = newValue, ..}