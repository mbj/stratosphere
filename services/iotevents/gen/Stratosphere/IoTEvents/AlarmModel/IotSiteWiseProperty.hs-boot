module Stratosphere.IoTEvents.AlarmModel.IotSiteWiseProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IotSiteWiseProperty :: Prelude.Type
instance ToResourceProperties IotSiteWiseProperty
instance JSON.ToJSON IotSiteWiseProperty