module Stratosphere.QuickSight.RefreshSchedule.RefreshOnDayProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RefreshOnDayProperty :: Prelude.Type
instance ToResourceProperties RefreshOnDayProperty
instance JSON.ToJSON RefreshOnDayProperty