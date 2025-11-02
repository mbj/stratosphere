module Stratosphere.EKS.AccessEntry.AccessPolicyProperty (
        module Exports, AccessPolicyProperty(..), mkAccessPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.AccessEntry.AccessScopeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccessPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-accessentry-accesspolicy.html>
    AccessPolicyProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-accessentry-accesspolicy.html#cfn-eks-accessentry-accesspolicy-accessscope>
                          accessScope :: AccessScopeProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-accessentry-accesspolicy.html#cfn-eks-accessentry-accesspolicy-policyarn>
                          policyArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessPolicyProperty ::
  AccessScopeProperty -> Value Prelude.Text -> AccessPolicyProperty
mkAccessPolicyProperty accessScope policyArn
  = AccessPolicyProperty
      {haddock_workaround_ = (), accessScope = accessScope,
       policyArn = policyArn}
instance ToResourceProperties AccessPolicyProperty where
  toResourceProperties AccessPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::AccessEntry.AccessPolicy",
         supportsTags = Prelude.False,
         properties = ["AccessScope" JSON..= accessScope,
                       "PolicyArn" JSON..= policyArn]}
instance JSON.ToJSON AccessPolicyProperty where
  toJSON AccessPolicyProperty {..}
    = JSON.object
        ["AccessScope" JSON..= accessScope, "PolicyArn" JSON..= policyArn]
instance Property "AccessScope" AccessPolicyProperty where
  type PropertyType "AccessScope" AccessPolicyProperty = AccessScopeProperty
  set newValue AccessPolicyProperty {..}
    = AccessPolicyProperty {accessScope = newValue, ..}
instance Property "PolicyArn" AccessPolicyProperty where
  type PropertyType "PolicyArn" AccessPolicyProperty = Value Prelude.Text
  set newValue AccessPolicyProperty {..}
    = AccessPolicyProperty {policyArn = newValue, ..}