module Stratosphere.OpsWorks.Instance.EbsBlockDeviceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EbsBlockDeviceProperty :: Prelude.Type
instance ToResourceProperties EbsBlockDeviceProperty
instance JSON.ToJSON EbsBlockDeviceProperty