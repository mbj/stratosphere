module Stratosphere.EC2.SpotFleet.EbsBlockDeviceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EbsBlockDeviceProperty :: Prelude.Type
instance ToResourceProperties EbsBlockDeviceProperty
instance Prelude.Eq EbsBlockDeviceProperty
instance Prelude.Show EbsBlockDeviceProperty
instance JSON.ToJSON EbsBlockDeviceProperty