module Stratosphere.GameLift.Fleet.IpPermissionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IpPermissionProperty :: Prelude.Type
instance ToResourceProperties IpPermissionProperty
instance JSON.ToJSON IpPermissionProperty