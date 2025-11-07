module Stratosphere.QuickSight.Template.TransposedTableOptionProperty (
        TransposedTableOptionProperty(..), mkTransposedTableOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransposedTableOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-transposedtableoption.html>
    TransposedTableOptionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-transposedtableoption.html#cfn-quicksight-template-transposedtableoption-columnindex>
                                   columnIndex :: (Prelude.Maybe (Value Prelude.Double)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-transposedtableoption.html#cfn-quicksight-template-transposedtableoption-columntype>
                                   columnType :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-transposedtableoption.html#cfn-quicksight-template-transposedtableoption-columnwidth>
                                   columnWidth :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransposedTableOptionProperty ::
  Value Prelude.Text -> TransposedTableOptionProperty
mkTransposedTableOptionProperty columnType
  = TransposedTableOptionProperty
      {haddock_workaround_ = (), columnType = columnType,
       columnIndex = Prelude.Nothing, columnWidth = Prelude.Nothing}
instance ToResourceProperties TransposedTableOptionProperty where
  toResourceProperties TransposedTableOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TransposedTableOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ColumnType" JSON..= columnType]
                           (Prelude.catMaybes
                              [(JSON..=) "ColumnIndex" Prelude.<$> columnIndex,
                               (JSON..=) "ColumnWidth" Prelude.<$> columnWidth]))}
instance JSON.ToJSON TransposedTableOptionProperty where
  toJSON TransposedTableOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ColumnType" JSON..= columnType]
              (Prelude.catMaybes
                 [(JSON..=) "ColumnIndex" Prelude.<$> columnIndex,
                  (JSON..=) "ColumnWidth" Prelude.<$> columnWidth])))
instance Property "ColumnIndex" TransposedTableOptionProperty where
  type PropertyType "ColumnIndex" TransposedTableOptionProperty = Value Prelude.Double
  set newValue TransposedTableOptionProperty {..}
    = TransposedTableOptionProperty
        {columnIndex = Prelude.pure newValue, ..}
instance Property "ColumnType" TransposedTableOptionProperty where
  type PropertyType "ColumnType" TransposedTableOptionProperty = Value Prelude.Text
  set newValue TransposedTableOptionProperty {..}
    = TransposedTableOptionProperty {columnType = newValue, ..}
instance Property "ColumnWidth" TransposedTableOptionProperty where
  type PropertyType "ColumnWidth" TransposedTableOptionProperty = Value Prelude.Text
  set newValue TransposedTableOptionProperty {..}
    = TransposedTableOptionProperty
        {columnWidth = Prelude.pure newValue, ..}