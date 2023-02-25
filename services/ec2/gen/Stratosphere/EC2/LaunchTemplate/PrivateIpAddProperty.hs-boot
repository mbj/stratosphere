module Stratosphere.EC2.LaunchTemplate.PrivateIpAddProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PrivateIpAddProperty :: Prelude.Type
instance ToResourceProperties PrivateIpAddProperty
instance JSON.ToJSON PrivateIpAddProperty