module Stratosphere.AutoScaling.LaunchConfiguration.BlockDeviceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BlockDeviceProperty :: Prelude.Type
instance ToResourceProperties BlockDeviceProperty
instance Prelude.Eq BlockDeviceProperty
instance Prelude.Show BlockDeviceProperty
instance JSON.ToJSON BlockDeviceProperty