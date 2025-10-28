module Stratosphere.DLM.LifecyclePolicy.ArchiveRuleProperty (
        module Exports, ArchiveRuleProperty(..), mkArchiveRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ArchiveRetainRuleProperty as Exports
import Stratosphere.ResourceProperties
data ArchiveRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-archiverule.html>
    ArchiveRuleProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-archiverule.html#cfn-dlm-lifecyclepolicy-archiverule-retainrule>
                         retainRule :: ArchiveRetainRuleProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArchiveRuleProperty ::
  ArchiveRetainRuleProperty -> ArchiveRuleProperty
mkArchiveRuleProperty retainRule
  = ArchiveRuleProperty
      {haddock_workaround_ = (), retainRule = retainRule}
instance ToResourceProperties ArchiveRuleProperty where
  toResourceProperties ArchiveRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.ArchiveRule",
         supportsTags = Prelude.False,
         properties = ["RetainRule" JSON..= retainRule]}
instance JSON.ToJSON ArchiveRuleProperty where
  toJSON ArchiveRuleProperty {..}
    = JSON.object ["RetainRule" JSON..= retainRule]
instance Property "RetainRule" ArchiveRuleProperty where
  type PropertyType "RetainRule" ArchiveRuleProperty = ArchiveRetainRuleProperty
  set newValue ArchiveRuleProperty {..}
    = ArchiveRuleProperty {retainRule = newValue, ..}