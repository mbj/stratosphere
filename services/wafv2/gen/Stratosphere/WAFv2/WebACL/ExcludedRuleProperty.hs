module Stratosphere.WAFv2.WebACL.ExcludedRuleProperty (
        ExcludedRuleProperty(..), mkExcludedRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExcludedRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrule.html>
    ExcludedRuleProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrule.html#cfn-wafv2-webacl-excludedrule-name>
                          name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExcludedRuleProperty ::
  Value Prelude.Text -> ExcludedRuleProperty
mkExcludedRuleProperty name
  = ExcludedRuleProperty {haddock_workaround_ = (), name = name}
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
  set newValue ExcludedRuleProperty {..}
    = ExcludedRuleProperty {name = newValue, ..}