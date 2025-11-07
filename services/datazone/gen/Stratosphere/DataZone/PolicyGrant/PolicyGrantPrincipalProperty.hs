module Stratosphere.DataZone.PolicyGrant.PolicyGrantPrincipalProperty (
        module Exports, PolicyGrantPrincipalProperty(..),
        mkPolicyGrantPrincipalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.DomainUnitPolicyGrantPrincipalProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.GroupPolicyGrantPrincipalProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.ProjectPolicyGrantPrincipalProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.UserPolicyGrantPrincipalProperty as Exports
import Stratosphere.ResourceProperties
data PolicyGrantPrincipalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantprincipal.html>
    PolicyGrantPrincipalProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantprincipal.html#cfn-datazone-policygrant-policygrantprincipal-domainunit>
                                  domainUnit :: (Prelude.Maybe DomainUnitPolicyGrantPrincipalProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantprincipal.html#cfn-datazone-policygrant-policygrantprincipal-group>
                                  group :: (Prelude.Maybe GroupPolicyGrantPrincipalProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantprincipal.html#cfn-datazone-policygrant-policygrantprincipal-project>
                                  project :: (Prelude.Maybe ProjectPolicyGrantPrincipalProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantprincipal.html#cfn-datazone-policygrant-policygrantprincipal-user>
                                  user :: (Prelude.Maybe UserPolicyGrantPrincipalProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyGrantPrincipalProperty :: PolicyGrantPrincipalProperty
mkPolicyGrantPrincipalProperty
  = PolicyGrantPrincipalProperty
      {haddock_workaround_ = (), domainUnit = Prelude.Nothing,
       group = Prelude.Nothing, project = Prelude.Nothing,
       user = Prelude.Nothing}
instance ToResourceProperties PolicyGrantPrincipalProperty where
  toResourceProperties PolicyGrantPrincipalProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.PolicyGrantPrincipal",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainUnit" Prelude.<$> domainUnit,
                            (JSON..=) "Group" Prelude.<$> group,
                            (JSON..=) "Project" Prelude.<$> project,
                            (JSON..=) "User" Prelude.<$> user])}
instance JSON.ToJSON PolicyGrantPrincipalProperty where
  toJSON PolicyGrantPrincipalProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainUnit" Prelude.<$> domainUnit,
               (JSON..=) "Group" Prelude.<$> group,
               (JSON..=) "Project" Prelude.<$> project,
               (JSON..=) "User" Prelude.<$> user]))
instance Property "DomainUnit" PolicyGrantPrincipalProperty where
  type PropertyType "DomainUnit" PolicyGrantPrincipalProperty = DomainUnitPolicyGrantPrincipalProperty
  set newValue PolicyGrantPrincipalProperty {..}
    = PolicyGrantPrincipalProperty
        {domainUnit = Prelude.pure newValue, ..}
instance Property "Group" PolicyGrantPrincipalProperty where
  type PropertyType "Group" PolicyGrantPrincipalProperty = GroupPolicyGrantPrincipalProperty
  set newValue PolicyGrantPrincipalProperty {..}
    = PolicyGrantPrincipalProperty {group = Prelude.pure newValue, ..}
instance Property "Project" PolicyGrantPrincipalProperty where
  type PropertyType "Project" PolicyGrantPrincipalProperty = ProjectPolicyGrantPrincipalProperty
  set newValue PolicyGrantPrincipalProperty {..}
    = PolicyGrantPrincipalProperty
        {project = Prelude.pure newValue, ..}
instance Property "User" PolicyGrantPrincipalProperty where
  type PropertyType "User" PolicyGrantPrincipalProperty = UserPolicyGrantPrincipalProperty
  set newValue PolicyGrantPrincipalProperty {..}
    = PolicyGrantPrincipalProperty {user = Prelude.pure newValue, ..}