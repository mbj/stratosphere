module Stratosphere.DynamoDB.GlobalTable.ReplicaSSESpecificationProperty (
        ReplicaSSESpecificationProperty(..),
        mkReplicaSSESpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicaSSESpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicassespecification.html>
    ReplicaSSESpecificationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicassespecification.html#cfn-dynamodb-globaltable-replicassespecification-kmsmasterkeyid>
                                     kMSMasterKeyId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicaSSESpecificationProperty ::
  Value Prelude.Text -> ReplicaSSESpecificationProperty
mkReplicaSSESpecificationProperty kMSMasterKeyId
  = ReplicaSSESpecificationProperty
      {haddock_workaround_ = (), kMSMasterKeyId = kMSMasterKeyId}
instance ToResourceProperties ReplicaSSESpecificationProperty where
  toResourceProperties ReplicaSSESpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.ReplicaSSESpecification",
         supportsTags = Prelude.False,
         properties = ["KMSMasterKeyId" JSON..= kMSMasterKeyId]}
instance JSON.ToJSON ReplicaSSESpecificationProperty where
  toJSON ReplicaSSESpecificationProperty {..}
    = JSON.object ["KMSMasterKeyId" JSON..= kMSMasterKeyId]
instance Property "KMSMasterKeyId" ReplicaSSESpecificationProperty where
  type PropertyType "KMSMasterKeyId" ReplicaSSESpecificationProperty = Value Prelude.Text
  set newValue ReplicaSSESpecificationProperty {..}
    = ReplicaSSESpecificationProperty {kMSMasterKeyId = newValue, ..}