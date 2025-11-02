module Stratosphere.SecretsManager.Secret.ReplicaRegionProperty (
        ReplicaRegionProperty(..), mkReplicaRegionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicaRegionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-replicaregion.html>
    ReplicaRegionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-replicaregion.html#cfn-secretsmanager-secret-replicaregion-kmskeyid>
                           kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-replicaregion.html#cfn-secretsmanager-secret-replicaregion-region>
                           region :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicaRegionProperty ::
  Value Prelude.Text -> ReplicaRegionProperty
mkReplicaRegionProperty region
  = ReplicaRegionProperty
      {haddock_workaround_ = (), region = region,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties ReplicaRegionProperty where
  toResourceProperties ReplicaRegionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecretsManager::Secret.ReplicaRegion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Region" JSON..= region]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON ReplicaRegionProperty where
  toJSON ReplicaRegionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Region" JSON..= region]
              (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "KmsKeyId" ReplicaRegionProperty where
  type PropertyType "KmsKeyId" ReplicaRegionProperty = Value Prelude.Text
  set newValue ReplicaRegionProperty {..}
    = ReplicaRegionProperty {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Region" ReplicaRegionProperty where
  type PropertyType "Region" ReplicaRegionProperty = Value Prelude.Text
  set newValue ReplicaRegionProperty {..}
    = ReplicaRegionProperty {region = newValue, ..}