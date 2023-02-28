module Stratosphere.QuickSight.DataSet.LogicalTableProperty (
        module Exports, LogicalTableProperty(..), mkLogicalTableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.LogicalTableSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.TransformOperationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogicalTableProperty
  = LogicalTableProperty {alias :: (Value Prelude.Text),
                          dataTransforms :: (Prelude.Maybe [TransformOperationProperty]),
                          source :: LogicalTableSourceProperty}
mkLogicalTableProperty ::
  Value Prelude.Text
  -> LogicalTableSourceProperty -> LogicalTableProperty
mkLogicalTableProperty alias source
  = LogicalTableProperty
      {alias = alias, source = source, dataTransforms = Prelude.Nothing}
instance ToResourceProperties LogicalTableProperty where
  toResourceProperties LogicalTableProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.LogicalTable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Alias" JSON..= alias, "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "DataTransforms" Prelude.<$> dataTransforms]))}
instance JSON.ToJSON LogicalTableProperty where
  toJSON LogicalTableProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Alias" JSON..= alias, "Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "DataTransforms" Prelude.<$> dataTransforms])))
instance Property "Alias" LogicalTableProperty where
  type PropertyType "Alias" LogicalTableProperty = Value Prelude.Text
  set newValue LogicalTableProperty {..}
    = LogicalTableProperty {alias = newValue, ..}
instance Property "DataTransforms" LogicalTableProperty where
  type PropertyType "DataTransforms" LogicalTableProperty = [TransformOperationProperty]
  set newValue LogicalTableProperty {..}
    = LogicalTableProperty {dataTransforms = Prelude.pure newValue, ..}
instance Property "Source" LogicalTableProperty where
  type PropertyType "Source" LogicalTableProperty = LogicalTableSourceProperty
  set newValue LogicalTableProperty {..}
    = LogicalTableProperty {source = newValue, ..}