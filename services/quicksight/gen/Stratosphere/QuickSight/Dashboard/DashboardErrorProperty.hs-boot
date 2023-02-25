module Stratosphere.QuickSight.Dashboard.DashboardErrorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DashboardErrorProperty :: Prelude.Type
instance ToResourceProperties DashboardErrorProperty
instance JSON.ToJSON DashboardErrorProperty