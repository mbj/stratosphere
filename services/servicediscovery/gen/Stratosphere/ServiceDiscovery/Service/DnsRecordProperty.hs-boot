module Stratosphere.ServiceDiscovery.Service.DnsRecordProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DnsRecordProperty :: Prelude.Type
instance ToResourceProperties DnsRecordProperty
instance Prelude.Eq DnsRecordProperty
instance Prelude.Show DnsRecordProperty
instance JSON.ToJSON DnsRecordProperty