module Stratosphere.EC2.NetworkInsightsPath (
        module Exports, NetworkInsightsPath(..), mkNetworkInsightsPath
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInsightsPath.PathFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data NetworkInsightsPath
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinsightspath.html>
    NetworkInsightsPath {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinsightspath.html#cfn-ec2-networkinsightspath-destination>
                         destination :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinsightspath.html#cfn-ec2-networkinsightspath-destinationip>
                         destinationIp :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinsightspath.html#cfn-ec2-networkinsightspath-destinationport>
                         destinationPort :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinsightspath.html#cfn-ec2-networkinsightspath-filteratdestination>
                         filterAtDestination :: (Prelude.Maybe PathFilterProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinsightspath.html#cfn-ec2-networkinsightspath-filteratsource>
                         filterAtSource :: (Prelude.Maybe PathFilterProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinsightspath.html#cfn-ec2-networkinsightspath-protocol>
                         protocol :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinsightspath.html#cfn-ec2-networkinsightspath-source>
                         source :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinsightspath.html#cfn-ec2-networkinsightspath-sourceip>
                         sourceIp :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinsightspath.html#cfn-ec2-networkinsightspath-tags>
                         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInsightsPath ::
  Value Prelude.Text -> Value Prelude.Text -> NetworkInsightsPath
mkNetworkInsightsPath protocol source
  = NetworkInsightsPath
      {haddock_workaround_ = (), protocol = protocol, source = source,
       destination = Prelude.Nothing, destinationIp = Prelude.Nothing,
       destinationPort = Prelude.Nothing,
       filterAtDestination = Prelude.Nothing,
       filterAtSource = Prelude.Nothing, sourceIp = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties NetworkInsightsPath where
  toResourceProperties NetworkInsightsPath {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInsightsPath",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Protocol" JSON..= protocol, "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "Destination" Prelude.<$> destination,
                               (JSON..=) "DestinationIp" Prelude.<$> destinationIp,
                               (JSON..=) "DestinationPort" Prelude.<$> destinationPort,
                               (JSON..=) "FilterAtDestination" Prelude.<$> filterAtDestination,
                               (JSON..=) "FilterAtSource" Prelude.<$> filterAtSource,
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
                  (JSON..=) "FilterAtDestination" Prelude.<$> filterAtDestination,
                  (JSON..=) "FilterAtSource" Prelude.<$> filterAtSource,
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
instance Property "FilterAtDestination" NetworkInsightsPath where
  type PropertyType "FilterAtDestination" NetworkInsightsPath = PathFilterProperty
  set newValue NetworkInsightsPath {..}
    = NetworkInsightsPath
        {filterAtDestination = Prelude.pure newValue, ..}
instance Property "FilterAtSource" NetworkInsightsPath where
  type PropertyType "FilterAtSource" NetworkInsightsPath = PathFilterProperty
  set newValue NetworkInsightsPath {..}
    = NetworkInsightsPath {filterAtSource = Prelude.pure newValue, ..}
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