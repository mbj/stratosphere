module Stratosphere.EC2.Subnet.PrivateDnsNameOptionsOnLaunchProperty (
        PrivateDnsNameOptionsOnLaunchProperty(..),
        mkPrivateDnsNameOptionsOnLaunchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrivateDnsNameOptionsOnLaunchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-subnet-privatednsnameoptionsonlaunch.html>
    PrivateDnsNameOptionsOnLaunchProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-subnet-privatednsnameoptionsonlaunch.html#cfn-ec2-subnet-privatednsnameoptionsonlaunch-enableresourcenamednsaaaarecord>
                                           enableResourceNameDnsAAAARecord :: (Prelude.Maybe (Value Prelude.Bool)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-subnet-privatednsnameoptionsonlaunch.html#cfn-ec2-subnet-privatednsnameoptionsonlaunch-enableresourcenamednsarecord>
                                           enableResourceNameDnsARecord :: (Prelude.Maybe (Value Prelude.Bool)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-subnet-privatednsnameoptionsonlaunch.html#cfn-ec2-subnet-privatednsnameoptionsonlaunch-hostnametype>
                                           hostnameType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateDnsNameOptionsOnLaunchProperty ::
  PrivateDnsNameOptionsOnLaunchProperty
mkPrivateDnsNameOptionsOnLaunchProperty
  = PrivateDnsNameOptionsOnLaunchProperty
      {haddock_workaround_ = (),
       enableResourceNameDnsAAAARecord = Prelude.Nothing,
       enableResourceNameDnsARecord = Prelude.Nothing,
       hostnameType = Prelude.Nothing}
instance ToResourceProperties PrivateDnsNameOptionsOnLaunchProperty where
  toResourceProperties PrivateDnsNameOptionsOnLaunchProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Subnet.PrivateDnsNameOptionsOnLaunch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableResourceNameDnsAAAARecord"
                              Prelude.<$> enableResourceNameDnsAAAARecord,
                            (JSON..=) "EnableResourceNameDnsARecord"
                              Prelude.<$> enableResourceNameDnsARecord,
                            (JSON..=) "HostnameType" Prelude.<$> hostnameType])}
instance JSON.ToJSON PrivateDnsNameOptionsOnLaunchProperty where
  toJSON PrivateDnsNameOptionsOnLaunchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableResourceNameDnsAAAARecord"
                 Prelude.<$> enableResourceNameDnsAAAARecord,
               (JSON..=) "EnableResourceNameDnsARecord"
                 Prelude.<$> enableResourceNameDnsARecord,
               (JSON..=) "HostnameType" Prelude.<$> hostnameType]))
instance Property "EnableResourceNameDnsAAAARecord" PrivateDnsNameOptionsOnLaunchProperty where
  type PropertyType "EnableResourceNameDnsAAAARecord" PrivateDnsNameOptionsOnLaunchProperty = Value Prelude.Bool
  set newValue PrivateDnsNameOptionsOnLaunchProperty {..}
    = PrivateDnsNameOptionsOnLaunchProperty
        {enableResourceNameDnsAAAARecord = Prelude.pure newValue, ..}
instance Property "EnableResourceNameDnsARecord" PrivateDnsNameOptionsOnLaunchProperty where
  type PropertyType "EnableResourceNameDnsARecord" PrivateDnsNameOptionsOnLaunchProperty = Value Prelude.Bool
  set newValue PrivateDnsNameOptionsOnLaunchProperty {..}
    = PrivateDnsNameOptionsOnLaunchProperty
        {enableResourceNameDnsARecord = Prelude.pure newValue, ..}
instance Property "HostnameType" PrivateDnsNameOptionsOnLaunchProperty where
  type PropertyType "HostnameType" PrivateDnsNameOptionsOnLaunchProperty = Value Prelude.Text
  set newValue PrivateDnsNameOptionsOnLaunchProperty {..}
    = PrivateDnsNameOptionsOnLaunchProperty
        {hostnameType = Prelude.pure newValue, ..}