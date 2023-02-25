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
  = LogicalTableSourceProperty {dataSetArn :: (Prelude.Maybe (Value Prelude.Text)),
                                joinInstruction :: (Prelude.Maybe JoinInstructionProperty),
                                physicalTableId :: (Prelude.Maybe (Value Prelude.Text))}
mkLogicalTableSourceProperty :: LogicalTableSourceProperty
mkLogicalTableSourceProperty
  = LogicalTableSourceProperty
      {dataSetArn = Prelude.Nothing, joinInstruction = Prelude.Nothing,
       physicalTableId = Prelude.Nothing}
instance ToResourceProperties LogicalTableSourceProperty where
  toResourceProperties LogicalTableSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.LogicalTableSource",
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