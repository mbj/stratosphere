module Stratosphere.EC2.IPAMPool.ProvisionedCidrProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProvisionedCidrProperty :: Prelude.Type
instance ToResourceProperties ProvisionedCidrProperty
instance JSON.ToJSON ProvisionedCidrProperty