module Stratosphere.AppConfig.Environment.MonitorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MonitorProperty :: Prelude.Type
instance ToResourceProperties MonitorProperty
instance Prelude.Eq MonitorProperty
instance Prelude.Show MonitorProperty
instance JSON.ToJSON MonitorProperty