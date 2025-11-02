module Stratosphere.VerifiedPermissions.Policy (
        module Exports, Policy(..), mkPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VerifiedPermissions.Policy.PolicyDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Policy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-verifiedpermissions-policy.html>
    Policy {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-verifiedpermissions-policy.html#cfn-verifiedpermissions-policy-definition>
            definition :: PolicyDefinitionProperty,
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-verifiedpermissions-policy.html#cfn-verifiedpermissions-policy-policystoreid>
            policyStoreId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicy ::
  PolicyDefinitionProperty -> Value Prelude.Text -> Policy
mkPolicy definition policyStoreId
  = Policy
      {haddock_workaround_ = (), definition = definition,
       policyStoreId = policyStoreId}
instance ToResourceProperties Policy where
  toResourceProperties Policy {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::Policy",
         supportsTags = Prelude.False,
         properties = ["Definition" JSON..= definition,
                       "PolicyStoreId" JSON..= policyStoreId]}
instance JSON.ToJSON Policy where
  toJSON Policy {..}
    = JSON.object
        ["Definition" JSON..= definition,
         "PolicyStoreId" JSON..= policyStoreId]
instance Property "Definition" Policy where
  type PropertyType "Definition" Policy = PolicyDefinitionProperty
  set newValue Policy {..} = Policy {definition = newValue, ..}
instance Property "PolicyStoreId" Policy where
  type PropertyType "PolicyStoreId" Policy = Value Prelude.Text
  set newValue Policy {..} = Policy {policyStoreId = newValue, ..}