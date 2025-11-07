module Stratosphere.QuickSight.DataSet.CreateColumnsOperationProperty (
        module Exports, CreateColumnsOperationProperty(..),
        mkCreateColumnsOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.CalculatedColumnProperty as Exports
import Stratosphere.ResourceProperties
data CreateColumnsOperationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-createcolumnsoperation.html>
    CreateColumnsOperationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-createcolumnsoperation.html#cfn-quicksight-dataset-createcolumnsoperation-columns>
                                    columns :: (Prelude.Maybe [CalculatedColumnProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreateColumnsOperationProperty :: CreateColumnsOperationProperty
mkCreateColumnsOperationProperty
  = CreateColumnsOperationProperty
      {haddock_workaround_ = (), columns = Prelude.Nothing}
instance ToResourceProperties CreateColumnsOperationProperty where
  toResourceProperties CreateColumnsOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.CreateColumnsOperation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Columns" Prelude.<$> columns])}
instance JSON.ToJSON CreateColumnsOperationProperty where
  toJSON CreateColumnsOperationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Columns" Prelude.<$> columns]))
instance Property "Columns" CreateColumnsOperationProperty where
  type PropertyType "Columns" CreateColumnsOperationProperty = [CalculatedColumnProperty]
  set newValue CreateColumnsOperationProperty {..}
    = CreateColumnsOperationProperty
        {columns = Prelude.pure newValue, ..}