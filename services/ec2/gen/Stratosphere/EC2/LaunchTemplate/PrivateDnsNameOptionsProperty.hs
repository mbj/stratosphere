module Stratosphere.EC2.LaunchTemplate.PrivateDnsNameOptionsProperty (
        PrivateDnsNameOptionsProperty(..), mkPrivateDnsNameOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateDnsNameOptionsProperty
  = PrivateDnsNameOptionsProperty {enableResourceNameDnsAAAARecord :: (Prelude.Maybe (Value Prelude.Bool)),
                                   enableResourceNameDnsARecord :: (Prelude.Maybe (Value Prelude.Bool)),
                                   hostnameType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateDnsNameOptionsProperty :: PrivateDnsNameOptionsProperty
mkPrivateDnsNameOptionsProperty
  = PrivateDnsNameOptionsProperty
      {enableResourceNameDnsAAAARecord = Prelude.Nothing,
       enableResourceNameDnsARecord = Prelude.Nothing,
       hostnameType = Prelude.Nothing}
instance ToResourceProperties PrivateDnsNameOptionsProperty where
  toResourceProperties PrivateDnsNameOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.PrivateDnsNameOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableResourceNameDnsAAAARecord"
                              Prelude.<$> enableResourceNameDnsAAAARecord,
                            (JSON..=) "EnableResourceNameDnsARecord"
                              Prelude.<$> enableResourceNameDnsARecord,
                            (JSON..=) "HostnameType" Prelude.<$> hostnameType])}
instance JSON.ToJSON PrivateDnsNameOptionsProperty where
  toJSON PrivateDnsNameOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableResourceNameDnsAAAARecord"
                 Prelude.<$> enableResourceNameDnsAAAARecord,
               (JSON..=) "EnableResourceNameDnsARecord"
                 Prelude.<$> enableResourceNameDnsARecord,
               (JSON..=) "HostnameType" Prelude.<$> hostnameType]))
instance Property "EnableResourceNameDnsAAAARecord" PrivateDnsNameOptionsProperty where
  type PropertyType "EnableResourceNameDnsAAAARecord" PrivateDnsNameOptionsProperty = Value Prelude.Bool
  set newValue PrivateDnsNameOptionsProperty {..}
    = PrivateDnsNameOptionsProperty
        {enableResourceNameDnsAAAARecord = Prelude.pure newValue, ..}
instance Property "EnableResourceNameDnsARecord" PrivateDnsNameOptionsProperty where
  type PropertyType "EnableResourceNameDnsARecord" PrivateDnsNameOptionsProperty = Value Prelude.Bool
  set newValue PrivateDnsNameOptionsProperty {..}
    = PrivateDnsNameOptionsProperty
        {enableResourceNameDnsARecord = Prelude.pure newValue, ..}
instance Property "HostnameType" PrivateDnsNameOptionsProperty where
  type PropertyType "HostnameType" PrivateDnsNameOptionsProperty = Value Prelude.Text
  set newValue PrivateDnsNameOptionsProperty {..}
    = PrivateDnsNameOptionsProperty
        {hostnameType = Prelude.pure newValue, ..}