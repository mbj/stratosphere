module Stratosphere.NetworkFirewall.RuleGroup.HeaderProperty (
        HeaderProperty(..), mkHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-header.html>
    HeaderProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-header.html#cfn-networkfirewall-rulegroup-header-destination>
                    destination :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-header.html#cfn-networkfirewall-rulegroup-header-destinationport>
                    destinationPort :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-header.html#cfn-networkfirewall-rulegroup-header-direction>
                    direction :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-header.html#cfn-networkfirewall-rulegroup-header-protocol>
                    protocol :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-header.html#cfn-networkfirewall-rulegroup-header-source>
                    source :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-header.html#cfn-networkfirewall-rulegroup-header-sourceport>
                    sourcePort :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeaderProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> Value Prelude.Text -> HeaderProperty
mkHeaderProperty
  destination
  destinationPort
  direction
  protocol
  source
  sourcePort
  = HeaderProperty
      {haddock_workaround_ = (), destination = destination,
       destinationPort = destinationPort, direction = direction,
       protocol = protocol, source = source, sourcePort = sourcePort}
instance ToResourceProperties HeaderProperty where
  toResourceProperties HeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.Header",
         supportsTags = Prelude.False,
         properties = ["Destination" JSON..= destination,
                       "DestinationPort" JSON..= destinationPort,
                       "Direction" JSON..= direction, "Protocol" JSON..= protocol,
                       "Source" JSON..= source, "SourcePort" JSON..= sourcePort]}
instance JSON.ToJSON HeaderProperty where
  toJSON HeaderProperty {..}
    = JSON.object
        ["Destination" JSON..= destination,
         "DestinationPort" JSON..= destinationPort,
         "Direction" JSON..= direction, "Protocol" JSON..= protocol,
         "Source" JSON..= source, "SourcePort" JSON..= sourcePort]
instance Property "Destination" HeaderProperty where
  type PropertyType "Destination" HeaderProperty = Value Prelude.Text
  set newValue HeaderProperty {..}
    = HeaderProperty {destination = newValue, ..}
instance Property "DestinationPort" HeaderProperty where
  type PropertyType "DestinationPort" HeaderProperty = Value Prelude.Text
  set newValue HeaderProperty {..}
    = HeaderProperty {destinationPort = newValue, ..}
instance Property "Direction" HeaderProperty where
  type PropertyType "Direction" HeaderProperty = Value Prelude.Text
  set newValue HeaderProperty {..}
    = HeaderProperty {direction = newValue, ..}
instance Property "Protocol" HeaderProperty where
  type PropertyType "Protocol" HeaderProperty = Value Prelude.Text
  set newValue HeaderProperty {..}
    = HeaderProperty {protocol = newValue, ..}
instance Property "Source" HeaderProperty where
  type PropertyType "Source" HeaderProperty = Value Prelude.Text
  set newValue HeaderProperty {..}
    = HeaderProperty {source = newValue, ..}
instance Property "SourcePort" HeaderProperty where
  type PropertyType "SourcePort" HeaderProperty = Value Prelude.Text
  set newValue HeaderProperty {..}
    = HeaderProperty {sourcePort = newValue, ..}