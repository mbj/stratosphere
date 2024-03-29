module Stratosphere.Connect.HoursOfOperation.HoursOfOperationTimeSliceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HoursOfOperationTimeSliceProperty :: Prelude.Type
instance ToResourceProperties HoursOfOperationTimeSliceProperty
instance Prelude.Eq HoursOfOperationTimeSliceProperty
instance Prelude.Show HoursOfOperationTimeSliceProperty
instance JSON.ToJSON HoursOfOperationTimeSliceProperty