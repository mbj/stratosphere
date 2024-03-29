module Stratosphere.EC2.Instance.NoDeviceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NoDeviceProperty :: Prelude.Type
instance ToResourceProperties NoDeviceProperty
instance Prelude.Eq NoDeviceProperty
instance Prelude.Show NoDeviceProperty
instance JSON.ToJSON NoDeviceProperty