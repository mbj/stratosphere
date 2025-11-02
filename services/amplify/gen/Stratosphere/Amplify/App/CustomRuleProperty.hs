module Stratosphere.Amplify.App.CustomRuleProperty (
        CustomRuleProperty(..), mkCustomRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html>
    CustomRuleProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html#cfn-amplify-app-customrule-condition>
                        condition :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html#cfn-amplify-app-customrule-source>
                        source :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html#cfn-amplify-app-customrule-status>
                        status :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-app-customrule.html#cfn-amplify-app-customrule-target>
                        target :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomRuleProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CustomRuleProperty
mkCustomRuleProperty source target
  = CustomRuleProperty
      {haddock_workaround_ = (), source = source, target = target,
       condition = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties CustomRuleProperty where
  toResourceProperties CustomRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::App.CustomRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Source" JSON..= source, "Target" JSON..= target]
                           (Prelude.catMaybes
                              [(JSON..=) "Condition" Prelude.<$> condition,
                               (JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON CustomRuleProperty where
  toJSON CustomRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Source" JSON..= source, "Target" JSON..= target]
              (Prelude.catMaybes
                 [(JSON..=) "Condition" Prelude.<$> condition,
                  (JSON..=) "Status" Prelude.<$> status])))
instance Property "Condition" CustomRuleProperty where
  type PropertyType "Condition" CustomRuleProperty = Value Prelude.Text
  set newValue CustomRuleProperty {..}
    = CustomRuleProperty {condition = Prelude.pure newValue, ..}
instance Property "Source" CustomRuleProperty where
  type PropertyType "Source" CustomRuleProperty = Value Prelude.Text
  set newValue CustomRuleProperty {..}
    = CustomRuleProperty {source = newValue, ..}
instance Property "Status" CustomRuleProperty where
  type PropertyType "Status" CustomRuleProperty = Value Prelude.Text
  set newValue CustomRuleProperty {..}
    = CustomRuleProperty {status = Prelude.pure newValue, ..}
instance Property "Target" CustomRuleProperty where
  type PropertyType "Target" CustomRuleProperty = Value Prelude.Text
  set newValue CustomRuleProperty {..}
    = CustomRuleProperty {target = newValue, ..}