module Stratosphere.EC2.Instance.NetworkInterfaceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NetworkInterfaceProperty :: Prelude.Type
instance ToResourceProperties NetworkInterfaceProperty
instance JSON.ToJSON NetworkInterfaceProperty