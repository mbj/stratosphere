module Stratosphere.QuickSight.DataSet.UniqueKeyProperty (
        UniqueKeyProperty(..), mkUniqueKeyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UniqueKeyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-uniquekey.html>
    UniqueKeyProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-uniquekey.html#cfn-quicksight-dataset-uniquekey-columnnames>
                       columnNames :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUniqueKeyProperty :: UniqueKeyProperty
mkUniqueKeyProperty
  = UniqueKeyProperty
      {haddock_workaround_ = (), columnNames = Prelude.Nothing}
instance ToResourceProperties UniqueKeyProperty where
  toResourceProperties UniqueKeyProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.UniqueKey",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnNames" Prelude.<$> columnNames])}
instance JSON.ToJSON UniqueKeyProperty where
  toJSON UniqueKeyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnNames" Prelude.<$> columnNames]))
instance Property "ColumnNames" UniqueKeyProperty where
  type PropertyType "ColumnNames" UniqueKeyProperty = ValueList Prelude.Text
  set newValue UniqueKeyProperty {..}
    = UniqueKeyProperty {columnNames = Prelude.pure newValue, ..}