module Stratosphere.IoTSiteWise.Gateway.GatewayPlatformProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GatewayPlatformProperty :: Prelude.Type
instance ToResourceProperties GatewayPlatformProperty
instance JSON.ToJSON GatewayPlatformProperty