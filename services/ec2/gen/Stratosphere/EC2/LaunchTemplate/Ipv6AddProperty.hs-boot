module Stratosphere.EC2.LaunchTemplate.Ipv6AddProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data Ipv6AddProperty :: Prelude.Type
instance ToResourceProperties Ipv6AddProperty
instance Prelude.Eq Ipv6AddProperty
instance Prelude.Show Ipv6AddProperty
instance JSON.ToJSON Ipv6AddProperty