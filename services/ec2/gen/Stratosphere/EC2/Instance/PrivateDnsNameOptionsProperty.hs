module Stratosphere.EC2.Instance.PrivateDnsNameOptionsProperty (
        PrivateDnsNameOptionsProperty(..), mkPrivateDnsNameOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateDnsNameOptionsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-privatednsnameoptions.html>
    PrivateDnsNameOptionsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-privatednsnameoptions.html#cfn-ec2-instance-privatednsnameoptions-enableresourcenamednsaaaarecord>
                                   enableResourceNameDnsAAAARecord :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-privatednsnameoptions.html#cfn-ec2-instance-privatednsnameoptions-enableresourcenamednsarecord>
                                   enableResourceNameDnsARecord :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-privatednsnameoptions.html#cfn-ec2-instance-privatednsnameoptions-hostnametype>
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
        {awsType = "AWS::EC2::Instance.PrivateDnsNameOptions",
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