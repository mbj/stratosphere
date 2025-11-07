module Stratosphere.PCS.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCS.Cluster.NetworkingProperty as Exports
import {-# SOURCE #-} Stratosphere.PCS.Cluster.SchedulerProperty as Exports
import {-# SOURCE #-} Stratosphere.PCS.Cluster.SlurmConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Cluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-cluster.html>
    Cluster {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-cluster.html#cfn-pcs-cluster-name>
             name :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-cluster.html#cfn-pcs-cluster-networking>
             networking :: NetworkingProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-cluster.html#cfn-pcs-cluster-scheduler>
             scheduler :: SchedulerProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-cluster.html#cfn-pcs-cluster-size>
             size :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-cluster.html#cfn-pcs-cluster-slurmconfiguration>
             slurmConfiguration :: (Prelude.Maybe SlurmConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-cluster.html#cfn-pcs-cluster-tags>
             tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster ::
  NetworkingProperty
  -> SchedulerProperty -> Value Prelude.Text -> Cluster
mkCluster networking scheduler size
  = Cluster
      {haddock_workaround_ = (), networking = networking,
       scheduler = scheduler, size = size, name = Prelude.Nothing,
       slurmConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::PCS::Cluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Networking" JSON..= networking, "Scheduler" JSON..= scheduler,
                            "Size" JSON..= size]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "SlurmConfiguration" Prelude.<$> slurmConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Networking" JSON..= networking, "Scheduler" JSON..= scheduler,
               "Size" JSON..= size]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "SlurmConfiguration" Prelude.<$> slurmConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" Cluster where
  type PropertyType "Name" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {name = Prelude.pure newValue, ..}
instance Property "Networking" Cluster where
  type PropertyType "Networking" Cluster = NetworkingProperty
  set newValue Cluster {..} = Cluster {networking = newValue, ..}
instance Property "Scheduler" Cluster where
  type PropertyType "Scheduler" Cluster = SchedulerProperty
  set newValue Cluster {..} = Cluster {scheduler = newValue, ..}
instance Property "Size" Cluster where
  type PropertyType "Size" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {size = newValue, ..}
instance Property "SlurmConfiguration" Cluster where
  type PropertyType "SlurmConfiguration" Cluster = SlurmConfigurationProperty
  set newValue Cluster {..}
    = Cluster {slurmConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}