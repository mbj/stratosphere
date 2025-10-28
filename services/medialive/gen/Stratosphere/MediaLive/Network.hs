module Stratosphere.MediaLive.Network (
        module Exports, Network(..), mkNetwork
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Network.IpPoolProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Network.RouteProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Network.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Network
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-network.html>
    Network {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-network.html#cfn-medialive-network-ippools>
             ipPools :: [IpPoolProperty],
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-network.html#cfn-medialive-network-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-network.html#cfn-medialive-network-routes>
             routes :: (Prelude.Maybe [RouteProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-network.html#cfn-medialive-network-tags>
             tags :: (Prelude.Maybe [TagsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetwork :: [IpPoolProperty] -> Value Prelude.Text -> Network
mkNetwork ipPools name
  = Network
      {haddock_workaround_ = (), ipPools = ipPools, name = name,
       routes = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Network where
  toResourceProperties Network {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Network", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpPools" JSON..= ipPools, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Routes" Prelude.<$> routes,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Network where
  toJSON Network {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpPools" JSON..= ipPools, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Routes" Prelude.<$> routes,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "IpPools" Network where
  type PropertyType "IpPools" Network = [IpPoolProperty]
  set newValue Network {..} = Network {ipPools = newValue, ..}
instance Property "Name" Network where
  type PropertyType "Name" Network = Value Prelude.Text
  set newValue Network {..} = Network {name = newValue, ..}
instance Property "Routes" Network where
  type PropertyType "Routes" Network = [RouteProperty]
  set newValue Network {..}
    = Network {routes = Prelude.pure newValue, ..}
instance Property "Tags" Network where
  type PropertyType "Tags" Network = [TagsProperty]
  set newValue Network {..}
    = Network {tags = Prelude.pure newValue, ..}