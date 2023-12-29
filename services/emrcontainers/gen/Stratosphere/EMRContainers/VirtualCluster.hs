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
  = VirtualCluster {containerProvider :: ContainerProviderProperty,
                    name :: (Value Prelude.Text),
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualCluster ::
  ContainerProviderProperty -> Value Prelude.Text -> VirtualCluster
mkVirtualCluster containerProvider name
  = VirtualCluster
      {containerProvider = containerProvider, name = name,
       tags = Prelude.Nothing}
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