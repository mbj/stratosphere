module Stratosphere.QuickSight.DataSet.LogicalTableSourceProperty (
        module Exports, LogicalTableSourceProperty(..),
        mkLogicalTableSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.JoinInstructionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogicalTableSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-logicaltablesource.html>
    LogicalTableSourceProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-logicaltablesource.html#cfn-quicksight-dataset-logicaltablesource-datasetarn>
                                dataSetArn :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-logicaltablesource.html#cfn-quicksight-dataset-logicaltablesource-joininstruction>
                                joinInstruction :: (Prelude.Maybe JoinInstructionProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-logicaltablesource.html#cfn-quicksight-dataset-logicaltablesource-physicaltableid>
                                physicalTableId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogicalTableSourceProperty :: LogicalTableSourceProperty
mkLogicalTableSourceProperty
  = LogicalTableSourceProperty
      {haddock_workaround_ = (), dataSetArn = Prelude.Nothing,
       joinInstruction = Prelude.Nothing,
       physicalTableId = Prelude.Nothing}
instance ToResourceProperties LogicalTableSourceProperty where
  toResourceProperties LogicalTableSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.LogicalTableSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataSetArn" Prelude.<$> dataSetArn,
                            (JSON..=) "JoinInstruction" Prelude.<$> joinInstruction,
                            (JSON..=) "PhysicalTableId" Prelude.<$> physicalTableId])}
instance JSON.ToJSON LogicalTableSourceProperty where
  toJSON LogicalTableSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataSetArn" Prelude.<$> dataSetArn,
               (JSON..=) "JoinInstruction" Prelude.<$> joinInstruction,
               (JSON..=) "PhysicalTableId" Prelude.<$> physicalTableId]))
instance Property "DataSetArn" LogicalTableSourceProperty where
  type PropertyType "DataSetArn" LogicalTableSourceProperty = Value Prelude.Text
  set newValue LogicalTableSourceProperty {..}
    = LogicalTableSourceProperty
        {dataSetArn = Prelude.pure newValue, ..}
instance Property "JoinInstruction" LogicalTableSourceProperty where
  type PropertyType "JoinInstruction" LogicalTableSourceProperty = JoinInstructionProperty
  set newValue LogicalTableSourceProperty {..}
    = LogicalTableSourceProperty
        {joinInstruction = Prelude.pure newValue, ..}
instance Property "PhysicalTableId" LogicalTableSourceProperty where
  type PropertyType "PhysicalTableId" LogicalTableSourceProperty = Value Prelude.Text
  set newValue LogicalTableSourceProperty {..}
    = LogicalTableSourceProperty
        {physicalTableId = Prelude.pure newValue, ..}