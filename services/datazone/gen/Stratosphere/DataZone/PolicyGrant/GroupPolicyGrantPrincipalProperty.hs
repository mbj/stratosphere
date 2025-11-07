module Stratosphere.DataZone.PolicyGrant.GroupPolicyGrantPrincipalProperty (
        GroupPolicyGrantPrincipalProperty(..),
        mkGroupPolicyGrantPrincipalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupPolicyGrantPrincipalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-grouppolicygrantprincipal.html>
    GroupPolicyGrantPrincipalProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-grouppolicygrantprincipal.html#cfn-datazone-policygrant-grouppolicygrantprincipal-groupidentifier>
                                       groupIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupPolicyGrantPrincipalProperty ::
  Value Prelude.Text -> GroupPolicyGrantPrincipalProperty
mkGroupPolicyGrantPrincipalProperty groupIdentifier
  = GroupPolicyGrantPrincipalProperty
      {haddock_workaround_ = (), groupIdentifier = groupIdentifier}
instance ToResourceProperties GroupPolicyGrantPrincipalProperty where
  toResourceProperties GroupPolicyGrantPrincipalProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.GroupPolicyGrantPrincipal",
         supportsTags = Prelude.False,
         properties = ["GroupIdentifier" JSON..= groupIdentifier]}
instance JSON.ToJSON GroupPolicyGrantPrincipalProperty where
  toJSON GroupPolicyGrantPrincipalProperty {..}
    = JSON.object ["GroupIdentifier" JSON..= groupIdentifier]
instance Property "GroupIdentifier" GroupPolicyGrantPrincipalProperty where
  type PropertyType "GroupIdentifier" GroupPolicyGrantPrincipalProperty = Value Prelude.Text
  set newValue GroupPolicyGrantPrincipalProperty {..}
    = GroupPolicyGrantPrincipalProperty
        {groupIdentifier = newValue, ..}