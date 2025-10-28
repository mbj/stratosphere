module Stratosphere.AppSync.Api.DnsMapProperty (
        DnsMapProperty(..), mkDnsMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DnsMapProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-dnsmap.html>
    DnsMapProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-dnsmap.html#cfn-appsync-api-dnsmap-http>
                    http :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-api-dnsmap.html#cfn-appsync-api-dnsmap-realtime>
                    realtime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDnsMapProperty :: DnsMapProperty
mkDnsMapProperty
  = DnsMapProperty
      {haddock_workaround_ = (), http = Prelude.Nothing,
       realtime = Prelude.Nothing}
instance ToResourceProperties DnsMapProperty where
  toResourceProperties DnsMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::Api.DnsMap",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Http" Prelude.<$> http,
                            (JSON..=) "Realtime" Prelude.<$> realtime])}
instance JSON.ToJSON DnsMapProperty where
  toJSON DnsMapProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Http" Prelude.<$> http,
               (JSON..=) "Realtime" Prelude.<$> realtime]))
instance Property "Http" DnsMapProperty where
  type PropertyType "Http" DnsMapProperty = Value Prelude.Text
  set newValue DnsMapProperty {..}
    = DnsMapProperty {http = Prelude.pure newValue, ..}
instance Property "Realtime" DnsMapProperty where
  type PropertyType "Realtime" DnsMapProperty = Value Prelude.Text
  set newValue DnsMapProperty {..}
    = DnsMapProperty {realtime = Prelude.pure newValue, ..}