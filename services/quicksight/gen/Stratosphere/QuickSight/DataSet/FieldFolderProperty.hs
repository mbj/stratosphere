module Stratosphere.QuickSight.DataSet.FieldFolderProperty (
        FieldFolderProperty(..), mkFieldFolderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldFolderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-fieldfolder.html>
    FieldFolderProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-fieldfolder.html#cfn-quicksight-dataset-fieldfolder-columns>
                         columns :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-fieldfolder.html#cfn-quicksight-dataset-fieldfolder-description>
                         description :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldFolderProperty :: FieldFolderProperty
mkFieldFolderProperty
  = FieldFolderProperty
      {haddock_workaround_ = (), columns = Prelude.Nothing,
       description = Prelude.Nothing}
instance ToResourceProperties FieldFolderProperty where
  toResourceProperties FieldFolderProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.FieldFolder",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Columns" Prelude.<$> columns,
                            (JSON..=) "Description" Prelude.<$> description])}
instance JSON.ToJSON FieldFolderProperty where
  toJSON FieldFolderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Columns" Prelude.<$> columns,
               (JSON..=) "Description" Prelude.<$> description]))
instance Property "Columns" FieldFolderProperty where
  type PropertyType "Columns" FieldFolderProperty = ValueList Prelude.Text
  set newValue FieldFolderProperty {..}
    = FieldFolderProperty {columns = Prelude.pure newValue, ..}
instance Property "Description" FieldFolderProperty where
  type PropertyType "Description" FieldFolderProperty = Value Prelude.Text
  set newValue FieldFolderProperty {..}
    = FieldFolderProperty {description = Prelude.pure newValue, ..}