module Stratosphere.WAFv2.RuleGroup.SingleQueryArgumentProperty (
        SingleQueryArgumentProperty(..), mkSingleQueryArgumentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingleQueryArgumentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-singlequeryargument.html>
    SingleQueryArgumentProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-singlequeryargument.html#cfn-wafv2-rulegroup-singlequeryargument-name>
                                 name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingleQueryArgumentProperty ::
  Value Prelude.Text -> SingleQueryArgumentProperty
mkSingleQueryArgumentProperty name
  = SingleQueryArgumentProperty
      {haddock_workaround_ = (), name = name}
instance ToResourceProperties SingleQueryArgumentProperty where
  toResourceProperties SingleQueryArgumentProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.SingleQueryArgument",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON SingleQueryArgumentProperty where
  toJSON SingleQueryArgumentProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" SingleQueryArgumentProperty where
  type PropertyType "Name" SingleQueryArgumentProperty = Value Prelude.Text
  set newValue SingleQueryArgumentProperty {..}
    = SingleQueryArgumentProperty {name = newValue, ..}