module Stratosphere.QuickSight.DataSet.IncrementalRefreshProperty (
        module Exports, IncrementalRefreshProperty(..),
        mkIncrementalRefreshProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.LookbackWindowProperty as Exports
import Stratosphere.ResourceProperties
data IncrementalRefreshProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-incrementalrefresh.html>
    IncrementalRefreshProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-incrementalrefresh.html#cfn-quicksight-dataset-incrementalrefresh-lookbackwindow>
                                lookbackWindow :: LookbackWindowProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIncrementalRefreshProperty ::
  LookbackWindowProperty -> IncrementalRefreshProperty
mkIncrementalRefreshProperty lookbackWindow
  = IncrementalRefreshProperty
      {haddock_workaround_ = (), lookbackWindow = lookbackWindow}
instance ToResourceProperties IncrementalRefreshProperty where
  toResourceProperties IncrementalRefreshProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.IncrementalRefresh",
         supportsTags = Prelude.False,
         properties = ["LookbackWindow" JSON..= lookbackWindow]}
instance JSON.ToJSON IncrementalRefreshProperty where
  toJSON IncrementalRefreshProperty {..}
    = JSON.object ["LookbackWindow" JSON..= lookbackWindow]
instance Property "LookbackWindow" IncrementalRefreshProperty where
  type PropertyType "LookbackWindow" IncrementalRefreshProperty = LookbackWindowProperty
  set newValue IncrementalRefreshProperty {..}
    = IncrementalRefreshProperty {lookbackWindow = newValue, ..}