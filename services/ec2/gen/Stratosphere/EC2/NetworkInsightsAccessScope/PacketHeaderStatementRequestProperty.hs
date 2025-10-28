module Stratosphere.EC2.NetworkInsightsAccessScope.PacketHeaderStatementRequestProperty (
        PacketHeaderStatementRequestProperty(..),
        mkPacketHeaderStatementRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PacketHeaderStatementRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html>
    PacketHeaderStatementRequestProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-destinationaddresses>
                                          destinationAddresses :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-destinationports>
                                          destinationPorts :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-destinationprefixlists>
                                          destinationPrefixLists :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-protocols>
                                          protocols :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-sourceaddresses>
                                          sourceAddresses :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-sourceports>
                                          sourcePorts :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-sourceprefixlists>
                                          sourcePrefixLists :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPacketHeaderStatementRequestProperty ::
  PacketHeaderStatementRequestProperty
mkPacketHeaderStatementRequestProperty
  = PacketHeaderStatementRequestProperty
      {haddock_workaround_ = (), destinationAddresses = Prelude.Nothing,
       destinationPorts = Prelude.Nothing,
       destinationPrefixLists = Prelude.Nothing,
       protocols = Prelude.Nothing, sourceAddresses = Prelude.Nothing,
       sourcePorts = Prelude.Nothing, sourcePrefixLists = Prelude.Nothing}
instance ToResourceProperties PacketHeaderStatementRequestProperty where
  toResourceProperties PacketHeaderStatementRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAccessScope.PacketHeaderStatementRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationAddresses" Prelude.<$> destinationAddresses,
                            (JSON..=) "DestinationPorts" Prelude.<$> destinationPorts,
                            (JSON..=) "DestinationPrefixLists"
                              Prelude.<$> destinationPrefixLists,
                            (JSON..=) "Protocols" Prelude.<$> protocols,
                            (JSON..=) "SourceAddresses" Prelude.<$> sourceAddresses,
                            (JSON..=) "SourcePorts" Prelude.<$> sourcePorts,
                            (JSON..=) "SourcePrefixLists" Prelude.<$> sourcePrefixLists])}
instance JSON.ToJSON PacketHeaderStatementRequestProperty where
  toJSON PacketHeaderStatementRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationAddresses" Prelude.<$> destinationAddresses,
               (JSON..=) "DestinationPorts" Prelude.<$> destinationPorts,
               (JSON..=) "DestinationPrefixLists"
                 Prelude.<$> destinationPrefixLists,
               (JSON..=) "Protocols" Prelude.<$> protocols,
               (JSON..=) "SourceAddresses" Prelude.<$> sourceAddresses,
               (JSON..=) "SourcePorts" Prelude.<$> sourcePorts,
               (JSON..=) "SourcePrefixLists" Prelude.<$> sourcePrefixLists]))
instance Property "DestinationAddresses" PacketHeaderStatementRequestProperty where
  type PropertyType "DestinationAddresses" PacketHeaderStatementRequestProperty = ValueList Prelude.Text
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {destinationAddresses = Prelude.pure newValue, ..}
instance Property "DestinationPorts" PacketHeaderStatementRequestProperty where
  type PropertyType "DestinationPorts" PacketHeaderStatementRequestProperty = ValueList Prelude.Text
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {destinationPorts = Prelude.pure newValue, ..}
instance Property "DestinationPrefixLists" PacketHeaderStatementRequestProperty where
  type PropertyType "DestinationPrefixLists" PacketHeaderStatementRequestProperty = ValueList Prelude.Text
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {destinationPrefixLists = Prelude.pure newValue, ..}
instance Property "Protocols" PacketHeaderStatementRequestProperty where
  type PropertyType "Protocols" PacketHeaderStatementRequestProperty = ValueList Prelude.Text
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {protocols = Prelude.pure newValue, ..}
instance Property "SourceAddresses" PacketHeaderStatementRequestProperty where
  type PropertyType "SourceAddresses" PacketHeaderStatementRequestProperty = ValueList Prelude.Text
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {sourceAddresses = Prelude.pure newValue, ..}
instance Property "SourcePorts" PacketHeaderStatementRequestProperty where
  type PropertyType "SourcePorts" PacketHeaderStatementRequestProperty = ValueList Prelude.Text
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {sourcePorts = Prelude.pure newValue, ..}
instance Property "SourcePrefixLists" PacketHeaderStatementRequestProperty where
  type PropertyType "SourcePrefixLists" PacketHeaderStatementRequestProperty = ValueList Prelude.Text
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {sourcePrefixLists = Prelude.pure newValue, ..}