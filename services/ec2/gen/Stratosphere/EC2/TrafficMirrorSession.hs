module Stratosphere.EC2.TrafficMirrorSession (
        TrafficMirrorSession(..), mkTrafficMirrorSession
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TrafficMirrorSession
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html>
    TrafficMirrorSession {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-description>
                          description :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-networkinterfaceid>
                          networkInterfaceId :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-packetlength>
                          packetLength :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-sessionnumber>
                          sessionNumber :: (Value Prelude.Integer),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-tags>
                          tags :: (Prelude.Maybe [Tag]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-trafficmirrorfilterid>
                          trafficMirrorFilterId :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-trafficmirrortargetid>
                          trafficMirrorTargetId :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-virtualnetworkid>
                          virtualNetworkId :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrafficMirrorSession ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text -> Value Prelude.Text -> TrafficMirrorSession
mkTrafficMirrorSession
  networkInterfaceId
  sessionNumber
  trafficMirrorFilterId
  trafficMirrorTargetId
  = TrafficMirrorSession
      {haddock_workaround_ = (), networkInterfaceId = networkInterfaceId,
       sessionNumber = sessionNumber,
       trafficMirrorFilterId = trafficMirrorFilterId,
       trafficMirrorTargetId = trafficMirrorTargetId,
       description = Prelude.Nothing, packetLength = Prelude.Nothing,
       tags = Prelude.Nothing, virtualNetworkId = Prelude.Nothing}
instance ToResourceProperties TrafficMirrorSession where
  toResourceProperties TrafficMirrorSession {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TrafficMirrorSession",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NetworkInterfaceId" JSON..= networkInterfaceId,
                            "SessionNumber" JSON..= sessionNumber,
                            "TrafficMirrorFilterId" JSON..= trafficMirrorFilterId,
                            "TrafficMirrorTargetId" JSON..= trafficMirrorTargetId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "PacketLength" Prelude.<$> packetLength,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VirtualNetworkId" Prelude.<$> virtualNetworkId]))}
instance JSON.ToJSON TrafficMirrorSession where
  toJSON TrafficMirrorSession {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NetworkInterfaceId" JSON..= networkInterfaceId,
               "SessionNumber" JSON..= sessionNumber,
               "TrafficMirrorFilterId" JSON..= trafficMirrorFilterId,
               "TrafficMirrorTargetId" JSON..= trafficMirrorTargetId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "PacketLength" Prelude.<$> packetLength,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VirtualNetworkId" Prelude.<$> virtualNetworkId])))
instance Property "Description" TrafficMirrorSession where
  type PropertyType "Description" TrafficMirrorSession = Value Prelude.Text
  set newValue TrafficMirrorSession {..}
    = TrafficMirrorSession {description = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceId" TrafficMirrorSession where
  type PropertyType "NetworkInterfaceId" TrafficMirrorSession = Value Prelude.Text
  set newValue TrafficMirrorSession {..}
    = TrafficMirrorSession {networkInterfaceId = newValue, ..}
instance Property "PacketLength" TrafficMirrorSession where
  type PropertyType "PacketLength" TrafficMirrorSession = Value Prelude.Integer
  set newValue TrafficMirrorSession {..}
    = TrafficMirrorSession {packetLength = Prelude.pure newValue, ..}
instance Property "SessionNumber" TrafficMirrorSession where
  type PropertyType "SessionNumber" TrafficMirrorSession = Value Prelude.Integer
  set newValue TrafficMirrorSession {..}
    = TrafficMirrorSession {sessionNumber = newValue, ..}
instance Property "Tags" TrafficMirrorSession where
  type PropertyType "Tags" TrafficMirrorSession = [Tag]
  set newValue TrafficMirrorSession {..}
    = TrafficMirrorSession {tags = Prelude.pure newValue, ..}
instance Property "TrafficMirrorFilterId" TrafficMirrorSession where
  type PropertyType "TrafficMirrorFilterId" TrafficMirrorSession = Value Prelude.Text
  set newValue TrafficMirrorSession {..}
    = TrafficMirrorSession {trafficMirrorFilterId = newValue, ..}
instance Property "TrafficMirrorTargetId" TrafficMirrorSession where
  type PropertyType "TrafficMirrorTargetId" TrafficMirrorSession = Value Prelude.Text
  set newValue TrafficMirrorSession {..}
    = TrafficMirrorSession {trafficMirrorTargetId = newValue, ..}
instance Property "VirtualNetworkId" TrafficMirrorSession where
  type PropertyType "VirtualNetworkId" TrafficMirrorSession = Value Prelude.Integer
  set newValue TrafficMirrorSession {..}
    = TrafficMirrorSession
        {virtualNetworkId = Prelude.pure newValue, ..}