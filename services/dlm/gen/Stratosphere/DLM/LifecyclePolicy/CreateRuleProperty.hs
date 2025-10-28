module Stratosphere.DLM.LifecyclePolicy.CreateRuleProperty (
        module Exports, CreateRuleProperty(..), mkCreateRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DLM.LifecyclePolicy.ScriptProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreateRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html>
    CreateRuleProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-cronexpression>
                        cronExpression :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-interval>
                        interval :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-intervalunit>
                        intervalUnit :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-location>
                        location :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-scripts>
                        scripts :: (Prelude.Maybe [ScriptProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-times>
                        times :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreateRuleProperty :: CreateRuleProperty
mkCreateRuleProperty
  = CreateRuleProperty
      {haddock_workaround_ = (), cronExpression = Prelude.Nothing,
       interval = Prelude.Nothing, intervalUnit = Prelude.Nothing,
       location = Prelude.Nothing, scripts = Prelude.Nothing,
       times = Prelude.Nothing}
instance ToResourceProperties CreateRuleProperty where
  toResourceProperties CreateRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.CreateRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CronExpression" Prelude.<$> cronExpression,
                            (JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit,
                            (JSON..=) "Location" Prelude.<$> location,
                            (JSON..=) "Scripts" Prelude.<$> scripts,
                            (JSON..=) "Times" Prelude.<$> times])}
instance JSON.ToJSON CreateRuleProperty where
  toJSON CreateRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CronExpression" Prelude.<$> cronExpression,
               (JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit,
               (JSON..=) "Location" Prelude.<$> location,
               (JSON..=) "Scripts" Prelude.<$> scripts,
               (JSON..=) "Times" Prelude.<$> times]))
instance Property "CronExpression" CreateRuleProperty where
  type PropertyType "CronExpression" CreateRuleProperty = Value Prelude.Text
  set newValue CreateRuleProperty {..}
    = CreateRuleProperty {cronExpression = Prelude.pure newValue, ..}
instance Property "Interval" CreateRuleProperty where
  type PropertyType "Interval" CreateRuleProperty = Value Prelude.Integer
  set newValue CreateRuleProperty {..}
    = CreateRuleProperty {interval = Prelude.pure newValue, ..}
instance Property "IntervalUnit" CreateRuleProperty where
  type PropertyType "IntervalUnit" CreateRuleProperty = Value Prelude.Text
  set newValue CreateRuleProperty {..}
    = CreateRuleProperty {intervalUnit = Prelude.pure newValue, ..}
instance Property "Location" CreateRuleProperty where
  type PropertyType "Location" CreateRuleProperty = Value Prelude.Text
  set newValue CreateRuleProperty {..}
    = CreateRuleProperty {location = Prelude.pure newValue, ..}
instance Property "Scripts" CreateRuleProperty where
  type PropertyType "Scripts" CreateRuleProperty = [ScriptProperty]
  set newValue CreateRuleProperty {..}
    = CreateRuleProperty {scripts = Prelude.pure newValue, ..}
instance Property "Times" CreateRuleProperty where
  type PropertyType "Times" CreateRuleProperty = ValueList Prelude.Text
  set newValue CreateRuleProperty {..}
    = CreateRuleProperty {times = Prelude.pure newValue, ..}