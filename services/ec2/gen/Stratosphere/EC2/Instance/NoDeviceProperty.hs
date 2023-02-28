module Stratosphere.EC2.Instance.NoDeviceProperty (
        NoDeviceProperty(..), mkNoDeviceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NoDeviceProperty = NoDeviceProperty {}
mkNoDeviceProperty :: NoDeviceProperty
mkNoDeviceProperty = NoDeviceProperty {}
instance ToResourceProperties NoDeviceProperty where
  toResourceProperties NoDeviceProperty {}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.NoDevice",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON NoDeviceProperty where
  toJSON NoDeviceProperty {} = JSON.object []