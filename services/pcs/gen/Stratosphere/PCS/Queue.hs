module Stratosphere.PCS.Queue (
        module Exports, Queue(..), mkQueue
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCS.Queue.ComputeNodeGroupConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.PCS.Queue.SlurmConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Queue
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-queue.html>
    Queue {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-queue.html#cfn-pcs-queue-clusterid>
           clusterId :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-queue.html#cfn-pcs-queue-computenodegroupconfigurations>
           computeNodeGroupConfigurations :: (Prelude.Maybe [ComputeNodeGroupConfigurationProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-queue.html#cfn-pcs-queue-name>
           name :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-queue.html#cfn-pcs-queue-slurmconfiguration>
           slurmConfiguration :: (Prelude.Maybe SlurmConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcs-queue.html#cfn-pcs-queue-tags>
           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueue :: Value Prelude.Text -> Queue
mkQueue clusterId
  = Queue
      {haddock_workaround_ = (), clusterId = clusterId,
       computeNodeGroupConfigurations = Prelude.Nothing,
       name = Prelude.Nothing, slurmConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Queue where
  toResourceProperties Queue {..}
    = ResourceProperties
        {awsType = "AWS::PCS::Queue", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterId" JSON..= clusterId]
                           (Prelude.catMaybes
                              [(JSON..=) "ComputeNodeGroupConfigurations"
                                 Prelude.<$> computeNodeGroupConfigurations,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "SlurmConfiguration" Prelude.<$> slurmConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Queue where
  toJSON Queue {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterId" JSON..= clusterId]
              (Prelude.catMaybes
                 [(JSON..=) "ComputeNodeGroupConfigurations"
                    Prelude.<$> computeNodeGroupConfigurations,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "SlurmConfiguration" Prelude.<$> slurmConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ClusterId" Queue where
  type PropertyType "ClusterId" Queue = Value Prelude.Text
  set newValue Queue {..} = Queue {clusterId = newValue, ..}
instance Property "ComputeNodeGroupConfigurations" Queue where
  type PropertyType "ComputeNodeGroupConfigurations" Queue = [ComputeNodeGroupConfigurationProperty]
  set newValue Queue {..}
    = Queue
        {computeNodeGroupConfigurations = Prelude.pure newValue, ..}
instance Property "Name" Queue where
  type PropertyType "Name" Queue = Value Prelude.Text
  set newValue Queue {..} = Queue {name = Prelude.pure newValue, ..}
instance Property "SlurmConfiguration" Queue where
  type PropertyType "SlurmConfiguration" Queue = SlurmConfigurationProperty
  set newValue Queue {..}
    = Queue {slurmConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Queue where
  type PropertyType "Tags" Queue = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Queue {..} = Queue {tags = Prelude.pure newValue, ..}