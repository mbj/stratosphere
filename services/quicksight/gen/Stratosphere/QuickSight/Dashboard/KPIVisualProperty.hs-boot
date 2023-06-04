module Stratosphere.QuickSight.Dashboard.KPIVisualProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KPIVisualProperty :: Prelude.Type
instance ToResourceProperties KPIVisualProperty
instance JSON.ToJSON KPIVisualProperty