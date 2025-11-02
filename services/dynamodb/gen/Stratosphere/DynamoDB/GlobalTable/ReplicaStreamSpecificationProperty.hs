module Stratosphere.DynamoDB.GlobalTable.ReplicaStreamSpecificationProperty (
        module Exports, ReplicaStreamSpecificationProperty(..),
        mkReplicaStreamSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ResourcePolicyProperty as Exports
import Stratosphere.ResourceProperties
data ReplicaStreamSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicastreamspecification.html>
    ReplicaStreamSpecificationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicastreamspecification.html#cfn-dynamodb-globaltable-replicastreamspecification-resourcepolicy>
                                        resourcePolicy :: ResourcePolicyProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicaStreamSpecificationProperty ::
  ResourcePolicyProperty -> ReplicaStreamSpecificationProperty
mkReplicaStreamSpecificationProperty resourcePolicy
  = ReplicaStreamSpecificationProperty
      {haddock_workaround_ = (), resourcePolicy = resourcePolicy}
instance ToResourceProperties ReplicaStreamSpecificationProperty where
  toResourceProperties ReplicaStreamSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.ReplicaStreamSpecification",
         supportsTags = Prelude.False,
         properties = ["ResourcePolicy" JSON..= resourcePolicy]}
instance JSON.ToJSON ReplicaStreamSpecificationProperty where
  toJSON ReplicaStreamSpecificationProperty {..}
    = JSON.object ["ResourcePolicy" JSON..= resourcePolicy]
instance Property "ResourcePolicy" ReplicaStreamSpecificationProperty where
  type PropertyType "ResourcePolicy" ReplicaStreamSpecificationProperty = ResourcePolicyProperty
  set newValue ReplicaStreamSpecificationProperty {..}
    = ReplicaStreamSpecificationProperty
        {resourcePolicy = newValue, ..}