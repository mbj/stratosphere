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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-matchattributes.html>
    MatchAttributesProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-matchattributes.html#cfn-networkfirewall-rulegroup-matchattributes-destinationports>
                             destinationPorts :: (Prelude.Maybe [PortRangeProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-matchattributes.html#cfn-networkfirewall-rulegroup-matchattributes-destinations>
                             destinations :: (Prelude.Maybe [AddressProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-matchattributes.html#cfn-networkfirewall-rulegroup-matchattributes-protocols>
                             protocols :: (Prelude.Maybe (ValueList Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-matchattributes.html#cfn-networkfirewall-rulegroup-matchattributes-sourceports>
                             sourcePorts :: (Prelude.Maybe [PortRangeProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-matchattributes.html#cfn-networkfirewall-rulegroup-matchattributes-sources>
                             sources :: (Prelude.Maybe [AddressProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-matchattributes.html#cfn-networkfirewall-rulegroup-matchattributes-tcpflags>
                             tCPFlags :: (Prelude.Maybe [TCPFlagFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchAttributesProperty :: MatchAttributesProperty
mkMatchAttributesProperty
  = MatchAttributesProperty
      {haddock_workaround_ = (), destinationPorts = Prelude.Nothing,
       destinations = Prelude.Nothing, protocols = Prelude.Nothing,
       sourcePorts = Prelude.Nothing, sources = Prelude.Nothing,
       tCPFlags = Prelude.Nothing}
instance ToResourceProperties MatchAttributesProperty where
  toResourceProperties MatchAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.MatchAttributes",
         supportsTags = Prelude.False,
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
  type PropertyType "Protocols" MatchAttributesProperty = ValueList Prelude.Integer
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