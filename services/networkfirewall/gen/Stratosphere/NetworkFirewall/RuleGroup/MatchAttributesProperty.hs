module Stratosphere.NetworkFirewall.RuleGroup.MatchAttributesProperty (
        module Exports, MatchAttributesProperty(..),
        mkMatchAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.AddressProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.PortRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.TCPFlagFieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatchAttributesProperty
  = MatchAttributesProperty {destinationPorts :: (Prelude.Maybe [PortRangeProperty]),
                             destinations :: (Prelude.Maybe [AddressProperty]),
                             protocols :: (Prelude.Maybe (ValueList (Value Prelude.Integer))),
                             sourcePorts :: (Prelude.Maybe [PortRangeProperty]),
                             sources :: (Prelude.Maybe [AddressProperty]),
                             tCPFlags :: (Prelude.Maybe [TCPFlagFieldProperty])}
mkMatchAttributesProperty :: MatchAttributesProperty
mkMatchAttributesProperty
  = MatchAttributesProperty
      {destinationPorts = Prelude.Nothing,
       destinations = Prelude.Nothing, protocols = Prelude.Nothing,
       sourcePorts = Prelude.Nothing, sources = Prelude.Nothing,
       tCPFlags = Prelude.Nothing}
instance ToResourceProperties MatchAttributesProperty where
  toResourceProperties MatchAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.MatchAttributes",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationPorts" Prelude.<$> destinationPorts,
                            (JSON..=) "Destinations" Prelude.<$> destinations,
                            (JSON..=) "Protocols" Prelude.<$> protocols,
                            (JSON..=) "SourcePorts" Prelude.<$> sourcePorts,
                            (JSON..=) "Sources" Prelude.<$> sources,
                            (JSON..=) "TCPFlags" Prelude.<$> tCPFlags])}
instance JSON.ToJSON MatchAttributesProperty where
  toJSON MatchAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationPorts" Prelude.<$> destinationPorts,
               (JSON..=) "Destinations" Prelude.<$> destinations,
               (JSON..=) "Protocols" Prelude.<$> protocols,
               (JSON..=) "SourcePorts" Prelude.<$> sourcePorts,
               (JSON..=) "Sources" Prelude.<$> sources,
               (JSON..=) "TCPFlags" Prelude.<$> tCPFlags]))
instance Property "DestinationPorts" MatchAttributesProperty where
  type PropertyType "DestinationPorts" MatchAttributesProperty = [PortRangeProperty]
  set newValue MatchAttributesProperty {..}
    = MatchAttributesProperty
        {destinationPorts = Prelude.pure newValue, ..}
instance Property "Destinations" MatchAttributesProperty where
  type PropertyType "Destinations" MatchAttributesProperty = [AddressProperty]
  set newValue MatchAttributesProperty {..}
    = MatchAttributesProperty
        {destinations = Prelude.pure newValue, ..}
instance Property "Protocols" MatchAttributesProperty where
  type PropertyType "Protocols" MatchAttributesProperty = ValueList (Value Prelude.Integer)
  set newValue MatchAttributesProperty {..}
    = MatchAttributesProperty {protocols = Prelude.pure newValue, ..}
instance Property "SourcePorts" MatchAttributesProperty where
  type PropertyType "SourcePorts" MatchAttributesProperty = [PortRangeProperty]
  set newValue MatchAttributesProperty {..}
    = MatchAttributesProperty {sourcePorts = Prelude.pure newValue, ..}
instance Property "Sources" MatchAttributesProperty where
  type PropertyType "Sources" MatchAttributesProperty = [AddressProperty]
  set newValue MatchAttributesProperty {..}
    = MatchAttributesProperty {sources = Prelude.pure newValue, ..}
instance Property "TCPFlags" MatchAttributesProperty where
  type PropertyType "TCPFlags" MatchAttributesProperty = [TCPFlagFieldProperty]
  set newValue MatchAttributesProperty {..}
    = MatchAttributesProperty {tCPFlags = Prelude.pure newValue, ..}