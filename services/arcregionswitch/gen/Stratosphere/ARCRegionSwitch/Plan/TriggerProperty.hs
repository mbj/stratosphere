module Stratosphere.ARCRegionSwitch.Plan.TriggerProperty (
        module Exports, TriggerProperty(..), mkTriggerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.TriggerConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TriggerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-trigger.html>
    TriggerProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-trigger.html#cfn-arcregionswitch-plan-trigger-action>
                     action :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-trigger.html#cfn-arcregionswitch-plan-trigger-conditions>
                     conditions :: [TriggerConditionProperty],
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-trigger.html#cfn-arcregionswitch-plan-trigger-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-trigger.html#cfn-arcregionswitch-plan-trigger-mindelayminutesbetweenexecutions>
                     minDelayMinutesBetweenExecutions :: (Value Prelude.Double),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-trigger.html#cfn-arcregionswitch-plan-trigger-targetregion>
                     targetRegion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTriggerProperty ::
  Value Prelude.Text
  -> [TriggerConditionProperty]
     -> Value Prelude.Double -> Value Prelude.Text -> TriggerProperty
mkTriggerProperty
  action
  conditions
  minDelayMinutesBetweenExecutions
  targetRegion
  = TriggerProperty
      {haddock_workaround_ = (), action = action,
       conditions = conditions,
       minDelayMinutesBetweenExecutions = minDelayMinutesBetweenExecutions,
       targetRegion = targetRegion, description = Prelude.Nothing}
instance ToResourceProperties TriggerProperty where
  toResourceProperties TriggerProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.Trigger",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Conditions" JSON..= conditions,
                            "MinDelayMinutesBetweenExecutions"
                              JSON..= minDelayMinutesBetweenExecutions,
                            "TargetRegion" JSON..= targetRegion]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON TriggerProperty where
  toJSON TriggerProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Conditions" JSON..= conditions,
               "MinDelayMinutesBetweenExecutions"
                 JSON..= minDelayMinutesBetweenExecutions,
               "TargetRegion" JSON..= targetRegion]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Action" TriggerProperty where
  type PropertyType "Action" TriggerProperty = Value Prelude.Text
  set newValue TriggerProperty {..}
    = TriggerProperty {action = newValue, ..}
instance Property "Conditions" TriggerProperty where
  type PropertyType "Conditions" TriggerProperty = [TriggerConditionProperty]
  set newValue TriggerProperty {..}
    = TriggerProperty {conditions = newValue, ..}
instance Property "Description" TriggerProperty where
  type PropertyType "Description" TriggerProperty = Value Prelude.Text
  set newValue TriggerProperty {..}
    = TriggerProperty {description = Prelude.pure newValue, ..}
instance Property "MinDelayMinutesBetweenExecutions" TriggerProperty where
  type PropertyType "MinDelayMinutesBetweenExecutions" TriggerProperty = Value Prelude.Double
  set newValue TriggerProperty {..}
    = TriggerProperty {minDelayMinutesBetweenExecutions = newValue, ..}
instance Property "TargetRegion" TriggerProperty where
  type PropertyType "TargetRegion" TriggerProperty = Value Prelude.Text
  set newValue TriggerProperty {..}
    = TriggerProperty {targetRegion = newValue, ..}