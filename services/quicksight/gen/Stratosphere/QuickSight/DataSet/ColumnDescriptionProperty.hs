module Stratosphere.QuickSight.DataSet.ColumnDescriptionProperty (
        ColumnDescriptionProperty(..), mkColumnDescriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnDescriptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-columndescription.html>
    ColumnDescriptionProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-columndescription.html#cfn-quicksight-dataset-columndescription-text>
                               text :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnDescriptionProperty :: ColumnDescriptionProperty
mkColumnDescriptionProperty
  = ColumnDescriptionProperty
      {haddock_workaround_ = (), text = Prelude.Nothing}
instance ToResourceProperties ColumnDescriptionProperty where
  toResourceProperties ColumnDescriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.ColumnDescription",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Text" Prelude.<$> text])}
instance JSON.ToJSON ColumnDescriptionProperty where
  toJSON ColumnDescriptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Text" Prelude.<$> text]))
instance Property "Text" ColumnDescriptionProperty where
  type PropertyType "Text" ColumnDescriptionProperty = Value Prelude.Text
  set newValue ColumnDescriptionProperty {..}
    = ColumnDescriptionProperty {text = Prelude.pure newValue, ..}