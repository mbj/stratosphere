module Stratosphere.EC2.LaunchTemplate.ConnectionTrackingSpecificationProperty (
        ConnectionTrackingSpecificationProperty(..),
        mkConnectionTrackingSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionTrackingSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-connectiontrackingspecification.html>
    ConnectionTrackingSpecificationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-connectiontrackingspecification.html#cfn-ec2-launchtemplate-connectiontrackingspecification-tcpestablishedtimeout>
                                             tcpEstablishedTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-connectiontrackingspecification.html#cfn-ec2-launchtemplate-connectiontrackingspecification-udpstreamtimeout>
                                             udpStreamTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-connectiontrackingspecification.html#cfn-ec2-launchtemplate-connectiontrackingspecification-udptimeout>
                                             udpTimeout :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionTrackingSpecificationProperty ::
  ConnectionTrackingSpecificationProperty
mkConnectionTrackingSpecificationProperty
  = ConnectionTrackingSpecificationProperty
      {haddock_workaround_ = (), tcpEstablishedTimeout = Prelude.Nothing,
       udpStreamTimeout = Prelude.Nothing, udpTimeout = Prelude.Nothing}
instance ToResourceProperties ConnectionTrackingSpecificationProperty where
  toResourceProperties ConnectionTrackingSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.ConnectionTrackingSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TcpEstablishedTimeout"
                              Prelude.<$> tcpEstablishedTimeout,
                            (JSON..=) "UdpStreamTimeout" Prelude.<$> udpStreamTimeout,
                            (JSON..=) "UdpTimeout" Prelude.<$> udpTimeout])}
instance JSON.ToJSON ConnectionTrackingSpecificationProperty where
  toJSON ConnectionTrackingSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TcpEstablishedTimeout"
                 Prelude.<$> tcpEstablishedTimeout,
               (JSON..=) "UdpStreamTimeout" Prelude.<$> udpStreamTimeout,
               (JSON..=) "UdpTimeout" Prelude.<$> udpTimeout]))
instance Property "TcpEstablishedTimeout" ConnectionTrackingSpecificationProperty where
  type PropertyType "TcpEstablishedTimeout" ConnectionTrackingSpecificationProperty = Value Prelude.Integer
  set newValue ConnectionTrackingSpecificationProperty {..}
    = ConnectionTrackingSpecificationProperty
        {tcpEstablishedTimeout = Prelude.pure newValue, ..}
instance Property "UdpStreamTimeout" ConnectionTrackingSpecificationProperty where
  type PropertyType "UdpStreamTimeout" ConnectionTrackingSpecificationProperty = Value Prelude.Integer
  set newValue ConnectionTrackingSpecificationProperty {..}
    = ConnectionTrackingSpecificationProperty
        {udpStreamTimeout = Prelude.pure newValue, ..}
instance Property "UdpTimeout" ConnectionTrackingSpecificationProperty where
  type PropertyType "UdpTimeout" ConnectionTrackingSpecificationProperty = Value Prelude.Integer
  set newValue ConnectionTrackingSpecificationProperty {..}
    = ConnectionTrackingSpecificationProperty
        {udpTimeout = Prelude.pure newValue, ..}