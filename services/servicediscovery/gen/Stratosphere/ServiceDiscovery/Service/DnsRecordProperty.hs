module Stratosphere.ServiceDiscovery.Service.DnsRecordProperty (
        DnsRecordProperty(..), mkDnsRecordProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DnsRecordProperty
  = DnsRecordProperty {tTL :: (Value Prelude.Double),
                       type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDnsRecordProperty ::
  Value Prelude.Double -> Value Prelude.Text -> DnsRecordProperty
mkDnsRecordProperty tTL type'
  = DnsRecordProperty {tTL = tTL, type' = type'}
instance ToResourceProperties DnsRecordProperty where
  toResourceProperties DnsRecordProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::Service.DnsRecord",
         supportsTags = Prelude.False,
         properties = ["TTL" JSON..= tTL, "Type" JSON..= type']}
instance JSON.ToJSON DnsRecordProperty where
  toJSON DnsRecordProperty {..}
    = JSON.object ["TTL" JSON..= tTL, "Type" JSON..= type']
instance Property "TTL" DnsRecordProperty where
  type PropertyType "TTL" DnsRecordProperty = Value Prelude.Double
  set newValue DnsRecordProperty {..}
    = DnsRecordProperty {tTL = newValue, ..}
instance Property "Type" DnsRecordProperty where
  type PropertyType "Type" DnsRecordProperty = Value Prelude.Text
  set newValue DnsRecordProperty {..}
    = DnsRecordProperty {type' = newValue, ..}