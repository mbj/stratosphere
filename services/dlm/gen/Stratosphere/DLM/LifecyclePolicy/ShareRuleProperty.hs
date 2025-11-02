module Stratosphere.DLM.LifecyclePolicy.ShareRuleProperty (
        ShareRuleProperty(..), mkShareRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ShareRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-sharerule.html>
    ShareRuleProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-sharerule.html#cfn-dlm-lifecyclepolicy-sharerule-targetaccounts>
                       targetAccounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-sharerule.html#cfn-dlm-lifecyclepolicy-sharerule-unshareinterval>
                       unshareInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-sharerule.html#cfn-dlm-lifecyclepolicy-sharerule-unshareintervalunit>
                       unshareIntervalUnit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkShareRuleProperty :: ShareRuleProperty
mkShareRuleProperty
  = ShareRuleProperty
      {haddock_workaround_ = (), targetAccounts = Prelude.Nothing,
       unshareInterval = Prelude.Nothing,
       unshareIntervalUnit = Prelude.Nothing}
instance ToResourceProperties ShareRuleProperty where
  toResourceProperties ShareRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.ShareRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetAccounts" Prelude.<$> targetAccounts,
                            (JSON..=) "UnshareInterval" Prelude.<$> unshareInterval,
                            (JSON..=) "UnshareIntervalUnit" Prelude.<$> unshareIntervalUnit])}
instance JSON.ToJSON ShareRuleProperty where
  toJSON ShareRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetAccounts" Prelude.<$> targetAccounts,
               (JSON..=) "UnshareInterval" Prelude.<$> unshareInterval,
               (JSON..=) "UnshareIntervalUnit" Prelude.<$> unshareIntervalUnit]))
instance Property "TargetAccounts" ShareRuleProperty where
  type PropertyType "TargetAccounts" ShareRuleProperty = ValueList Prelude.Text
  set newValue ShareRuleProperty {..}
    = ShareRuleProperty {targetAccounts = Prelude.pure newValue, ..}
instance Property "UnshareInterval" ShareRuleProperty where
  type PropertyType "UnshareInterval" ShareRuleProperty = Value Prelude.Integer
  set newValue ShareRuleProperty {..}
    = ShareRuleProperty {unshareInterval = Prelude.pure newValue, ..}
instance Property "UnshareIntervalUnit" ShareRuleProperty where
  type PropertyType "UnshareIntervalUnit" ShareRuleProperty = Value Prelude.Text
  set newValue ShareRuleProperty {..}
    = ShareRuleProperty
        {unshareIntervalUnit = Prelude.pure newValue, ..}