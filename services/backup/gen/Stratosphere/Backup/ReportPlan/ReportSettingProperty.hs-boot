module Stratosphere.Backup.ReportPlan.ReportSettingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReportSettingProperty :: Prelude.Type
instance ToResourceProperties ReportSettingProperty
instance Prelude.Eq ReportSettingProperty
instance Prelude.Show ReportSettingProperty
instance JSON.ToJSON ReportSettingProperty