module Stratosphere.QuickSight.DataSet.TagColumnOperationProperty (
        module Exports, TagColumnOperationProperty(..),
        mkTagColumnOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.ColumnTagProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagColumnOperationProperty
  = TagColumnOperationProperty {columnName :: (Value Prelude.Text),
                                tags :: [ColumnTagProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagColumnOperationProperty ::
  Value Prelude.Text
  -> [ColumnTagProperty] -> TagColumnOperationProperty
mkTagColumnOperationProperty columnName tags
  = TagColumnOperationProperty {columnName = columnName, tags = tags}
instance ToResourceProperties TagColumnOperationProperty where
  toResourceProperties TagColumnOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.TagColumnOperation",
         supportsTags = Prelude.True,
         properties = ["ColumnName" JSON..= columnName,
                       "Tags" JSON..= tags]}
instance JSON.ToJSON TagColumnOperationProperty where
  toJSON TagColumnOperationProperty {..}
    = JSON.object
        ["ColumnName" JSON..= columnName, "Tags" JSON..= tags]
instance Property "ColumnName" TagColumnOperationProperty where
  type PropertyType "ColumnName" TagColumnOperationProperty = Value Prelude.Text
  set newValue TagColumnOperationProperty {..}
    = TagColumnOperationProperty {columnName = newValue, ..}
instance Property "Tags" TagColumnOperationProperty where
  type PropertyType "Tags" TagColumnOperationProperty = [ColumnTagProperty]
  set newValue TagColumnOperationProperty {..}
    = TagColumnOperationProperty {tags = newValue, ..}