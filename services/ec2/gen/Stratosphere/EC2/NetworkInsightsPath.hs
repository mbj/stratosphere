module Stratosphere.EC2.NetworkInsightsPath (
        NetworkInsightsPath(..), mkNetworkInsightsPath
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data NetworkInsightsPath
  = NetworkInsightsPath {destination :: (Prelude.Maybe (Value Prelude.Text)),
                         destinationIp :: (Prelude.Maybe (Value Prelude.Text)),
                         destinationPort :: (Prelude.Maybe (Value Prelude.Integer)),
                         protocol :: (Value Prelude.Text),
                         source :: (Value Prelude.Text),
                         sourceIp :: (Prelude.Maybe (Value Prelude.Text)),
                         tags :: (Prelude.Maybe [Tag])}
mkNetworkInsightsPath ::
  Value Prelude.Text -> Value Prelude.Text -> NetworkInsightsPath
mkNetworkInsightsPath protocol source
  = NetworkInsightsPath
      {protocol = protocol, source = source,
       destination = Prelude.Nothing, destinationIp = Prelude.Nothing,
       destinationPort = Prelude.Nothing, sourceIp = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties NetworkInsightsPath where
  toResourceProperties NetworkInsightsPath {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsPath",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Protocol" JSON..= protocol, "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "Destination" Prelude.<$> destination,
                               (JSON..=) "DestinationIp" Prelude.<$> destinationIp,
                               (JSON..=) "DestinationPort" Prelude.<$> destinationPort,
                               (JSON..=) "SourceIp" Prelude.<$> sourceIp,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON NetworkInsightsPath where
  toJSON NetworkInsightsPath {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Protocol" JSON..= protocol, "Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "Destination" Prelude.<$> destination,
                  (JSON..=) "DestinationIp" Prelude.<$> destinationIp,
                  (JSON..=) "DestinationPort" Prelude.<$> destinationPort,
                  (JSON..=) "SourceIp" Prelude.<$> sourceIp,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Destination" NetworkInsightsPath where
  type PropertyType "Destination" NetworkInsightsPath = Value Prelude.Text
  set newValue NetworkInsightsPath {..}
    = NetworkInsightsPath {destination = Prelude.pure newValue, ..}
instance Property "DestinationIp" NetworkInsightsPath where
  type PropertyType "DestinationIp" NetworkInsightsPath = Value Prelude.Text
  set newValue NetworkInsightsPath {..}
    = NetworkInsightsPath {destinationIp = Prelude.pure newValue, ..}
instance Property "DestinationPort" NetworkInsightsPath where
  type PropertyType "DestinationPort" NetworkInsightsPath = Value Prelude.Integer
  set newValue NetworkInsightsPath {..}
    = NetworkInsightsPath {destinationPort = Prelude.pure newValue, ..}
instance Property "Protocol" NetworkInsightsPath where
  type PropertyType "Protocol" NetworkInsightsPath = Value Prelude.Text
  set newValue NetworkInsightsPath {..}
    = NetworkInsightsPath {protocol = newValue, ..}
instance Property "Source" NetworkInsightsPath where
  type PropertyType "Source" NetworkInsightsPath = Value Prelude.Text
  set newValue NetworkInsightsPath {..}
    = NetworkInsightsPath {source = newValue, ..}
instance Property "SourceIp" NetworkInsightsPath where
  type PropertyType "SourceIp" NetworkInsightsPath = Value Prelude.Text
  set newValue NetworkInsightsPath {..}
    = NetworkInsightsPath {sourceIp = Prelude.pure newValue, ..}
instance Property "Tags" NetworkInsightsPath where
  type PropertyType "Tags" NetworkInsightsPath = [Tag]
  set newValue NetworkInsightsPath {..}
    = NetworkInsightsPath {tags = Prelude.pure newValue, ..}