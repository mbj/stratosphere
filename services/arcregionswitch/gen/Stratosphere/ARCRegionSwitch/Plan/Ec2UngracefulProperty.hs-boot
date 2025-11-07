module Stratosphere.ARCRegionSwitch.Plan.Ec2UngracefulProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data Ec2UngracefulProperty :: Prelude.Type
instance ToResourceProperties Ec2UngracefulProperty
instance Prelude.Eq Ec2UngracefulProperty
instance Prelude.Show Ec2UngracefulProperty
instance JSON.ToJSON Ec2UngracefulProperty