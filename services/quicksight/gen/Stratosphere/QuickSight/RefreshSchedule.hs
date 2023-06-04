module Stratosphere.QuickSight.RefreshSchedule (
        module Exports, RefreshSchedule(..), mkRefreshSchedule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.RefreshSchedule.RefreshScheduleMapProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RefreshSchedule
  = RefreshSchedule {awsAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                     dataSetId :: (Prelude.Maybe (Value Prelude.Text)),
                     schedule :: (Prelude.Maybe RefreshScheduleMapProperty)}
mkRefreshSchedule :: RefreshSchedule
mkRefreshSchedule
  = RefreshSchedule
      {awsAccountId = Prelude.Nothing, dataSetId = Prelude.Nothing,
       schedule = Prelude.Nothing}
instance ToResourceProperties RefreshSchedule where
  toResourceProperties RefreshSchedule {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::RefreshSchedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
                            (JSON..=) "DataSetId" Prelude.<$> dataSetId,
                            (JSON..=) "Schedule" Prelude.<$> schedule])}
instance JSON.ToJSON RefreshSchedule where
  toJSON RefreshSchedule {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AwsAccountId" Prelude.<$> awsAccountId,
               (JSON..=) "DataSetId" Prelude.<$> dataSetId,
               (JSON..=) "Schedule" Prelude.<$> schedule]))
instance Property "AwsAccountId" RefreshSchedule where
  type PropertyType "AwsAccountId" RefreshSchedule = Value Prelude.Text
  set newValue RefreshSchedule {..}
    = RefreshSchedule {awsAccountId = Prelude.pure newValue, ..}
instance Property "DataSetId" RefreshSchedule where
  type PropertyType "DataSetId" RefreshSchedule = Value Prelude.Text
  set newValue RefreshSchedule {..}
    = RefreshSchedule {dataSetId = Prelude.pure newValue, ..}
instance Property "Schedule" RefreshSchedule where
  type PropertyType "Schedule" RefreshSchedule = RefreshScheduleMapProperty
  set newValue RefreshSchedule {..}
    = RefreshSchedule {schedule = Prelude.pure newValue, ..}