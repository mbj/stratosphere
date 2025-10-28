module Stratosphere.KendraRanking.ExecutionPlan (
        module Exports, ExecutionPlan(..), mkExecutionPlan
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KendraRanking.ExecutionPlan.CapacityUnitsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ExecutionPlan
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendraranking-executionplan.html>
    ExecutionPlan {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendraranking-executionplan.html#cfn-kendraranking-executionplan-capacityunits>
                   capacityUnits :: (Prelude.Maybe CapacityUnitsConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendraranking-executionplan.html#cfn-kendraranking-executionplan-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendraranking-executionplan.html#cfn-kendraranking-executionplan-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendraranking-executionplan.html#cfn-kendraranking-executionplan-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExecutionPlan :: Value Prelude.Text -> ExecutionPlan
mkExecutionPlan name
  = ExecutionPlan
      {haddock_workaround_ = (), name = name,
       capacityUnits = Prelude.Nothing, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ExecutionPlan where
  toResourceProperties ExecutionPlan {..}
    = ResourceProperties
        {awsType = "AWS::KendraRanking::ExecutionPlan",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CapacityUnits" Prelude.<$> capacityUnits,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ExecutionPlan where
  toJSON ExecutionPlan {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CapacityUnits" Prelude.<$> capacityUnits,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CapacityUnits" ExecutionPlan where
  type PropertyType "CapacityUnits" ExecutionPlan = CapacityUnitsConfigurationProperty
  set newValue ExecutionPlan {..}
    = ExecutionPlan {capacityUnits = Prelude.pure newValue, ..}
instance Property "Description" ExecutionPlan where
  type PropertyType "Description" ExecutionPlan = Value Prelude.Text
  set newValue ExecutionPlan {..}
    = ExecutionPlan {description = Prelude.pure newValue, ..}
instance Property "Name" ExecutionPlan where
  type PropertyType "Name" ExecutionPlan = Value Prelude.Text
  set newValue ExecutionPlan {..}
    = ExecutionPlan {name = newValue, ..}
instance Property "Tags" ExecutionPlan where
  type PropertyType "Tags" ExecutionPlan = [Tag]
  set newValue ExecutionPlan {..}
    = ExecutionPlan {tags = Prelude.pure newValue, ..}