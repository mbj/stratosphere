module Stratosphere.ARCRegionSwitch.Plan.ParallelExecutionBlockConfigurationProperty (
        module Exports, ParallelExecutionBlockConfigurationProperty(..),
        mkParallelExecutionBlockConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ARCRegionSwitch.Plan.StepProperty as Exports
import Stratosphere.ResourceProperties
data ParallelExecutionBlockConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-parallelexecutionblockconfiguration.html>
    ParallelExecutionBlockConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-parallelexecutionblockconfiguration.html#cfn-arcregionswitch-plan-parallelexecutionblockconfiguration-steps>
                                                 steps :: [StepProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParallelExecutionBlockConfigurationProperty ::
  [StepProperty] -> ParallelExecutionBlockConfigurationProperty
mkParallelExecutionBlockConfigurationProperty steps
  = ParallelExecutionBlockConfigurationProperty
      {haddock_workaround_ = (), steps = steps}
instance ToResourceProperties ParallelExecutionBlockConfigurationProperty where
  toResourceProperties
    ParallelExecutionBlockConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.ParallelExecutionBlockConfiguration",
         supportsTags = Prelude.False, properties = ["Steps" JSON..= steps]}
instance JSON.ToJSON ParallelExecutionBlockConfigurationProperty where
  toJSON ParallelExecutionBlockConfigurationProperty {..}
    = JSON.object ["Steps" JSON..= steps]
instance Property "Steps" ParallelExecutionBlockConfigurationProperty where
  type PropertyType "Steps" ParallelExecutionBlockConfigurationProperty = [StepProperty]
  set newValue ParallelExecutionBlockConfigurationProperty {..}
    = ParallelExecutionBlockConfigurationProperty
        {steps = newValue, ..}