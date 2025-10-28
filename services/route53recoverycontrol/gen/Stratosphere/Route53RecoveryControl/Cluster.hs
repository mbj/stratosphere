module Stratosphere.Route53RecoveryControl.Cluster (
        Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Cluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoverycontrol-cluster.html>
    Cluster {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoverycontrol-cluster.html#cfn-route53recoverycontrol-cluster-name>
             name :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53recoverycontrol-cluster.html#cfn-route53recoverycontrol-cluster-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster :: Value Prelude.Text -> Cluster
mkCluster name
  = Cluster
      {haddock_workaround_ = (), name = name, tags = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryControl::Cluster",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" Cluster where
  type PropertyType "Name" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {name = newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = [Tag]
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}