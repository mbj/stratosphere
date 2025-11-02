module Stratosphere.LakeFormation.DataCellsFilter.RowFilterProperty (
        RowFilterProperty(..), mkRowFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RowFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datacellsfilter-rowfilter.html>
    RowFilterProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datacellsfilter-rowfilter.html#cfn-lakeformation-datacellsfilter-rowfilter-allrowswildcard>
                       allRowsWildcard :: (Prelude.Maybe JSON.Object),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datacellsfilter-rowfilter.html#cfn-lakeformation-datacellsfilter-rowfilter-filterexpression>
                       filterExpression :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRowFilterProperty :: RowFilterProperty
mkRowFilterProperty
  = RowFilterProperty
      {haddock_workaround_ = (), allRowsWildcard = Prelude.Nothing,
       filterExpression = Prelude.Nothing}
instance ToResourceProperties RowFilterProperty where
  toResourceProperties RowFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::DataCellsFilter.RowFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllRowsWildcard" Prelude.<$> allRowsWildcard,
                            (JSON..=) "FilterExpression" Prelude.<$> filterExpression])}
instance JSON.ToJSON RowFilterProperty where
  toJSON RowFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllRowsWildcard" Prelude.<$> allRowsWildcard,
               (JSON..=) "FilterExpression" Prelude.<$> filterExpression]))
instance Property "AllRowsWildcard" RowFilterProperty where
  type PropertyType "AllRowsWildcard" RowFilterProperty = JSON.Object
  set newValue RowFilterProperty {..}
    = RowFilterProperty {allRowsWildcard = Prelude.pure newValue, ..}
instance Property "FilterExpression" RowFilterProperty where
  type PropertyType "FilterExpression" RowFilterProperty = Value Prelude.Text
  set newValue RowFilterProperty {..}
    = RowFilterProperty {filterExpression = Prelude.pure newValue, ..}