module Stratosphere.ARCRegionSwitch.Plan.StepProperty (
        module Exports, StepProperty(..), mkStepProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.ExecutionBlockConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StepProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-step.html>
    StepProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-step.html#cfn-arcregionswitch-plan-step-description>
                  description :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-step.html#cfn-arcregionswitch-plan-step-executionblockconfiguration>
                  executionBlockConfiguration :: ExecutionBlockConfigurationProperty,
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-step.html#cfn-arcregionswitch-plan-step-executionblocktype>
                  executionBlockType :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-step.html#cfn-arcregionswitch-plan-step-name>
                  name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStepProperty ::
  ExecutionBlockConfigurationProperty
  -> Value Prelude.Text -> Value Prelude.Text -> StepProperty
mkStepProperty executionBlockConfiguration executionBlockType name
  = StepProperty
      {haddock_workaround_ = (),
       executionBlockConfiguration = executionBlockConfiguration,
       executionBlockType = executionBlockType, name = name,
       description = Prelude.Nothing}
instance ToResourceProperties StepProperty where
  toResourceProperties StepProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.Step",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExecutionBlockConfiguration" JSON..= executionBlockConfiguration,
                            "ExecutionBlockType" JSON..= executionBlockType,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON StepProperty where
  toJSON StepProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExecutionBlockConfiguration" JSON..= executionBlockConfiguration,
               "ExecutionBlockType" JSON..= executionBlockType,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" StepProperty where
  type PropertyType "Description" StepProperty = Value Prelude.Text
  set newValue StepProperty {..}
    = StepProperty {description = Prelude.pure newValue, ..}
instance Property "ExecutionBlockConfiguration" StepProperty where
  type PropertyType "ExecutionBlockConfiguration" StepProperty = ExecutionBlockConfigurationProperty
  set newValue StepProperty {..}
    = StepProperty {executionBlockConfiguration = newValue, ..}
instance Property "ExecutionBlockType" StepProperty where
  type PropertyType "ExecutionBlockType" StepProperty = Value Prelude.Text
  set newValue StepProperty {..}
    = StepProperty {executionBlockType = newValue, ..}
instance Property "Name" StepProperty where
  type PropertyType "Name" StepProperty = Value Prelude.Text
  set newValue StepProperty {..} = StepProperty {name = newValue, ..}