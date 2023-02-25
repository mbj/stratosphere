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
  = PacketHeaderStatementRequestProperty {destinationAddresses :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                          destinationPorts :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                          destinationPrefixLists :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                          protocols :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                          sourceAddresses :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                          sourcePorts :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                          sourcePrefixLists :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkPacketHeaderStatementRequestProperty ::
  PacketHeaderStatementRequestProperty
mkPacketHeaderStatementRequestProperty
  = PacketHeaderStatementRequestProperty
      {destinationAddresses = Prelude.Nothing,
       destinationPorts = Prelude.Nothing,
       destinationPrefixLists = Prelude.Nothing,
       protocols = Prelude.Nothing, sourceAddresses = Prelude.Nothing,
       sourcePorts = Prelude.Nothing, sourcePrefixLists = Prelude.Nothing}
instance ToResourceProperties PacketHeaderStatementRequestProperty where
  toResourceProperties PacketHeaderStatementRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsAccessScope.PacketHeaderStatementRequest",
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
  type PropertyType "DestinationAddresses" PacketHeaderStatementRequestProperty = ValueList (Value Prelude.Text)
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {destinationAddresses = Prelude.pure newValue, ..}
instance Property "DestinationPorts" PacketHeaderStatementRequestProperty where
  type PropertyType "DestinationPorts" PacketHeaderStatementRequestProperty = ValueList (Value Prelude.Text)
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {destinationPorts = Prelude.pure newValue, ..}
instance Property "DestinationPrefixLists" PacketHeaderStatementRequestProperty where
  type PropertyType "DestinationPrefixLists" PacketHeaderStatementRequestProperty = ValueList (Value Prelude.Text)
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {destinationPrefixLists = Prelude.pure newValue, ..}
instance Property "Protocols" PacketHeaderStatementRequestProperty where
  type PropertyType "Protocols" PacketHeaderStatementRequestProperty = ValueList (Value Prelude.Text)
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {protocols = Prelude.pure newValue, ..}
instance Property "SourceAddresses" PacketHeaderStatementRequestProperty where
  type PropertyType "SourceAddresses" PacketHeaderStatementRequestProperty = ValueList (Value Prelude.Text)
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {sourceAddresses = Prelude.pure newValue, ..}
instance Property "SourcePorts" PacketHeaderStatementRequestProperty where
  type PropertyType "SourcePorts" PacketHeaderStatementRequestProperty = ValueList (Value Prelude.Text)
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {sourcePorts = Prelude.pure newValue, ..}
instance Property "SourcePrefixLists" PacketHeaderStatementRequestProperty where
  type PropertyType "SourcePrefixLists" PacketHeaderStatementRequestProperty = ValueList (Value Prelude.Text)
  set newValue PacketHeaderStatementRequestProperty {..}
    = PacketHeaderStatementRequestProperty
        {sourcePrefixLists = Prelude.pure newValue, ..}