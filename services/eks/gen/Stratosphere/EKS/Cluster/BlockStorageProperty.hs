module Stratosphere.EKS.Cluster.BlockStorageProperty (
        BlockStorageProperty(..), mkBlockStorageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlockStorageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-blockstorage.html>
    BlockStorageProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-blockstorage.html#cfn-eks-cluster-blockstorage-enabled>
                          enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBlockStorageProperty :: BlockStorageProperty
mkBlockStorageProperty
  = BlockStorageProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties BlockStorageProperty where
  toResourceProperties BlockStorageProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.BlockStorage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON BlockStorageProperty where
  toJSON BlockStorageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" BlockStorageProperty where
  type PropertyType "Enabled" BlockStorageProperty = Value Prelude.Bool
  set newValue BlockStorageProperty {..}
    = BlockStorageProperty {enabled = Prelude.pure newValue, ..}