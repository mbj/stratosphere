module Stratosphere.SecurityHub.AutomationRuleV2.BooleanFilterProperty (
        BooleanFilterProperty(..), mkBooleanFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BooleanFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-booleanfilter.html>
    BooleanFilterProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-booleanfilter.html#cfn-securityhub-automationrulev2-booleanfilter-value>
                           value :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBooleanFilterProperty ::
  Value Prelude.Bool -> BooleanFilterProperty
mkBooleanFilterProperty value
  = BooleanFilterProperty {haddock_workaround_ = (), value = value}
instance ToResourceProperties BooleanFilterProperty where
  toResourceProperties BooleanFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.BooleanFilter",
         supportsTags = Prelude.False, properties = ["Value" JSON..= value]}
instance JSON.ToJSON BooleanFilterProperty where
  toJSON BooleanFilterProperty {..}
    = JSON.object ["Value" JSON..= value]
instance Property "Value" BooleanFilterProperty where
  type PropertyType "Value" BooleanFilterProperty = Value Prelude.Bool
  set newValue BooleanFilterProperty {..}
    = BooleanFilterProperty {value = newValue, ..}