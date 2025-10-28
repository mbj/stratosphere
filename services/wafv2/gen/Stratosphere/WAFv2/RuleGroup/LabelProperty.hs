module Stratosphere.WAFv2.RuleGroup.LabelProperty (
        LabelProperty(..), mkLabelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LabelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-label.html>
    LabelProperty {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-label.html#cfn-wafv2-rulegroup-label-name>
                   name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLabelProperty :: Value Prelude.Text -> LabelProperty
mkLabelProperty name
  = LabelProperty {haddock_workaround_ = (), name = name}
instance ToResourceProperties LabelProperty where
  toResourceProperties LabelProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.Label",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON LabelProperty where
  toJSON LabelProperty {..} = JSON.object ["Name" JSON..= name]
instance Property "Name" LabelProperty where
  type PropertyType "Name" LabelProperty = Value Prelude.Text
  set newValue LabelProperty {..}
    = LabelProperty {name = newValue, ..}