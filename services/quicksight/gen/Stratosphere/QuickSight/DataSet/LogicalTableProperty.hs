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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-logicaltable.html>
    LogicalTableProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-logicaltable.html#cfn-quicksight-dataset-logicaltable-alias>
                          alias :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-logicaltable.html#cfn-quicksight-dataset-logicaltable-datatransforms>
                          dataTransforms :: (Prelude.Maybe [TransformOperationProperty]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-logicaltable.html#cfn-quicksight-dataset-logicaltable-source>
                          source :: (Prelude.Maybe LogicalTableSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogicalTableProperty ::
  Value Prelude.Text -> LogicalTableProperty
mkLogicalTableProperty alias
  = LogicalTableProperty
      {haddock_workaround_ = (), alias = alias,
       dataTransforms = Prelude.Nothing, source = Prelude.Nothing}
instance ToResourceProperties LogicalTableProperty where
  toResourceProperties LogicalTableProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.LogicalTable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Alias" JSON..= alias]
                           (Prelude.catMaybes
                              [(JSON..=) "DataTransforms" Prelude.<$> dataTransforms,
                               (JSON..=) "Source" Prelude.<$> source]))}
instance JSON.ToJSON LogicalTableProperty where
  toJSON LogicalTableProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Alias" JSON..= alias]
              (Prelude.catMaybes
                 [(JSON..=) "DataTransforms" Prelude.<$> dataTransforms,
                  (JSON..=) "Source" Prelude.<$> source])))
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
    = LogicalTableProperty {source = Prelude.pure newValue, ..}