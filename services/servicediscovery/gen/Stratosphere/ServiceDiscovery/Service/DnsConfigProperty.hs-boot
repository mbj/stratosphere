module Stratosphere.ServiceDiscovery.Service.DnsConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DnsConfigProperty :: Prelude.Type
instance ToResourceProperties DnsConfigProperty
instance Prelude.Eq DnsConfigProperty
instance Prelude.Show DnsConfigProperty
instance JSON.ToJSON DnsConfigProperty