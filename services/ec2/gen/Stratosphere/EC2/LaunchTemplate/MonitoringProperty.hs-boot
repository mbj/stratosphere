module Stratosphere.EC2.LaunchTemplate.MonitoringProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MonitoringProperty :: Prelude.Type
instance ToResourceProperties MonitoringProperty
instance Prelude.Eq MonitoringProperty
instance Prelude.Show MonitoringProperty
instance JSON.ToJSON MonitoringProperty