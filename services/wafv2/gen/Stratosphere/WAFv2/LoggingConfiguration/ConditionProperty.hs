module Stratosphere.WAFv2.LoggingConfiguration.ConditionProperty (
        module Exports, ConditionProperty(..), mkConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.LoggingConfiguration.ActionConditionProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.LoggingConfiguration.LabelNameConditionProperty as Exports
import Stratosphere.ResourceProperties
data ConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-condition.html>
    ConditionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-condition.html#cfn-wafv2-loggingconfiguration-condition-actioncondition>
                       actionCondition :: (Prelude.Maybe ActionConditionProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-condition.html#cfn-wafv2-loggingconfiguration-condition-labelnamecondition>
                       labelNameCondition :: (Prelude.Maybe LabelNameConditionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionProperty :: ConditionProperty
mkConditionProperty
  = ConditionProperty
      {haddock_workaround_ = (), actionCondition = Prelude.Nothing,
       labelNameCondition = Prelude.Nothing}
instance ToResourceProperties ConditionProperty where
  toResourceProperties ConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::LoggingConfiguration.Condition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ActionCondition" Prelude.<$> actionCondition,
                            (JSON..=) "LabelNameCondition" Prelude.<$> labelNameCondition])}
instance JSON.ToJSON ConditionProperty where
  toJSON ConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ActionCondition" Prelude.<$> actionCondition,
               (JSON..=) "LabelNameCondition" Prelude.<$> labelNameCondition]))
instance Property "ActionCondition" ConditionProperty where
  type PropertyType "ActionCondition" ConditionProperty = ActionConditionProperty
  set newValue ConditionProperty {..}
    = ConditionProperty {actionCondition = Prelude.pure newValue, ..}
instance Property "LabelNameCondition" ConditionProperty where
  type PropertyType "LabelNameCondition" ConditionProperty = LabelNameConditionProperty
  set newValue ConditionProperty {..}
    = ConditionProperty
        {labelNameCondition = Prelude.pure newValue, ..}