module Stratosphere.QuickSight.Dashboard.DataPathSortProperty (
        module Exports, DataPathSortProperty(..), mkDataPathSortProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataPathValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPathSortProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-datapathsort.html>
    DataPathSortProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-datapathsort.html#cfn-quicksight-dashboard-datapathsort-direction>
                          direction :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-datapathsort.html#cfn-quicksight-dashboard-datapathsort-sortpaths>
                          sortPaths :: [DataPathValueProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataPathSortProperty ::
  Value Prelude.Text
  -> [DataPathValueProperty] -> DataPathSortProperty
mkDataPathSortProperty direction sortPaths
  = DataPathSortProperty
      {haddock_workaround_ = (), direction = direction,
       sortPaths = sortPaths}
instance ToResourceProperties DataPathSortProperty where
  toResourceProperties DataPathSortProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DataPathSort",
         supportsTags = Prelude.False,
         properties = ["Direction" JSON..= direction,
                       "SortPaths" JSON..= sortPaths]}
instance JSON.ToJSON DataPathSortProperty where
  toJSON DataPathSortProperty {..}
    = JSON.object
        ["Direction" JSON..= direction, "SortPaths" JSON..= sortPaths]
instance Property "Direction" DataPathSortProperty where
  type PropertyType "Direction" DataPathSortProperty = Value Prelude.Text
  set newValue DataPathSortProperty {..}
    = DataPathSortProperty {direction = newValue, ..}
instance Property "SortPaths" DataPathSortProperty where
  type PropertyType "SortPaths" DataPathSortProperty = [DataPathValueProperty]
  set newValue DataPathSortProperty {..}
    = DataPathSortProperty {sortPaths = newValue, ..}