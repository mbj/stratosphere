module Stratosphere.EMRContainers.VirtualCluster (
        module Exports, VirtualCluster(..), mkVirtualCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMRContainers.VirtualCluster.ContainerProviderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VirtualCluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrcontainers-virtualcluster.html>
    VirtualCluster {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrcontainers-virtualcluster.html#cfn-emrcontainers-virtualcluster-containerprovider>
                    containerProvider :: ContainerProviderProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrcontainers-virtualcluster.html#cfn-emrcontainers-virtualcluster-name>
                    name :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrcontainers-virtualcluster.html#cfn-emrcontainers-virtualcluster-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualCluster ::
  ContainerProviderProperty -> Value Prelude.Text -> VirtualCluster
mkVirtualCluster containerProvider name
  = VirtualCluster
      {haddock_workaround_ = (), containerProvider = containerProvider,
       name = name, tags = Prelude.Nothing}
instance ToResourceProperties VirtualCluster where
  toResourceProperties VirtualCluster {..}
    = ResourceProperties
        {awsType = "AWS::EMRContainers::VirtualCluster",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContainerProvider" JSON..= containerProvider,
                            "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VirtualCluster where
  toJSON VirtualCluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContainerProvider" JSON..= containerProvider,
               "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ContainerProvider" VirtualCluster where
  type PropertyType "ContainerProvider" VirtualCluster = ContainerProviderProperty
  set newValue VirtualCluster {..}
    = VirtualCluster {containerProvider = newValue, ..}
instance Property "Name" VirtualCluster where
  type PropertyType "Name" VirtualCluster = Value Prelude.Text
  set newValue VirtualCluster {..}
    = VirtualCluster {name = newValue, ..}
instance Property "Tags" VirtualCluster where
  type PropertyType "Tags" VirtualCluster = [Tag]
  set newValue VirtualCluster {..}
    = VirtualCluster {tags = Prelude.pure newValue, ..}