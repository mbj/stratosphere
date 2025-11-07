module Stratosphere.QuickSight.Dashboard.VisibleRangeOptionsProperty (
        module Exports, VisibleRangeOptionsProperty(..),
        mkVisibleRangeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PercentVisibleRangeProperty as Exports
import Stratosphere.ResourceProperties
data VisibleRangeOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visiblerangeoptions.html>
    VisibleRangeOptionsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visiblerangeoptions.html#cfn-quicksight-dashboard-visiblerangeoptions-percentrange>
                                 percentRange :: (Prelude.Maybe PercentVisibleRangeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisibleRangeOptionsProperty :: VisibleRangeOptionsProperty
mkVisibleRangeOptionsProperty
  = VisibleRangeOptionsProperty
      {haddock_workaround_ = (), percentRange = Prelude.Nothing}
instance ToResourceProperties VisibleRangeOptionsProperty where
  toResourceProperties VisibleRangeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.VisibleRangeOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PercentRange" Prelude.<$> percentRange])}
instance JSON.ToJSON VisibleRangeOptionsProperty where
  toJSON VisibleRangeOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PercentRange" Prelude.<$> percentRange]))
instance Property "PercentRange" VisibleRangeOptionsProperty where
  type PropertyType "PercentRange" VisibleRangeOptionsProperty = PercentVisibleRangeProperty
  set newValue VisibleRangeOptionsProperty {..}
    = VisibleRangeOptionsProperty
        {percentRange = Prelude.pure newValue, ..}