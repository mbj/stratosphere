module Stratosphere.DataZone.PolicyGrant.PolicyGrantDetailProperty (
        module Exports, PolicyGrantDetailProperty(..),
        mkPolicyGrantDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.AddToProjectMemberPoolPolicyGrantDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.CreateAssetTypePolicyGrantDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.CreateDomainUnitPolicyGrantDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.CreateEnvironmentProfilePolicyGrantDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.CreateFormTypePolicyGrantDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.CreateGlossaryPolicyGrantDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.CreateProjectFromProjectProfilePolicyGrantDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.CreateProjectPolicyGrantDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.OverrideDomainUnitOwnersPolicyGrantDetailProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.PolicyGrant.OverrideProjectOwnersPolicyGrantDetailProperty as Exports
import Stratosphere.ResourceProperties
data PolicyGrantDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html>
    PolicyGrantDetailProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-addtoprojectmemberpool>
                               addToProjectMemberPool :: (Prelude.Maybe AddToProjectMemberPoolPolicyGrantDetailProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createassettype>
                               createAssetType :: (Prelude.Maybe CreateAssetTypePolicyGrantDetailProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createdomainunit>
                               createDomainUnit :: (Prelude.Maybe CreateDomainUnitPolicyGrantDetailProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createenvironment>
                               createEnvironment :: (Prelude.Maybe JSON.Object),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createenvironmentfromblueprint>
                               createEnvironmentFromBlueprint :: (Prelude.Maybe JSON.Object),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createenvironmentprofile>
                               createEnvironmentProfile :: (Prelude.Maybe CreateEnvironmentProfilePolicyGrantDetailProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createformtype>
                               createFormType :: (Prelude.Maybe CreateFormTypePolicyGrantDetailProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createglossary>
                               createGlossary :: (Prelude.Maybe CreateGlossaryPolicyGrantDetailProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createproject>
                               createProject :: (Prelude.Maybe CreateProjectPolicyGrantDetailProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createprojectfromprojectprofile>
                               createProjectFromProjectProfile :: (Prelude.Maybe CreateProjectFromProjectProfilePolicyGrantDetailProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-delegatecreateenvironmentprofile>
                               delegateCreateEnvironmentProfile :: (Prelude.Maybe JSON.Object),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-overridedomainunitowners>
                               overrideDomainUnitOwners :: (Prelude.Maybe OverrideDomainUnitOwnersPolicyGrantDetailProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-overrideprojectowners>
                               overrideProjectOwners :: (Prelude.Maybe OverrideProjectOwnersPolicyGrantDetailProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyGrantDetailProperty :: PolicyGrantDetailProperty
mkPolicyGrantDetailProperty
  = PolicyGrantDetailProperty
      {haddock_workaround_ = (),
       addToProjectMemberPool = Prelude.Nothing,
       createAssetType = Prelude.Nothing,
       createDomainUnit = Prelude.Nothing,
       createEnvironment = Prelude.Nothing,
       createEnvironmentFromBlueprint = Prelude.Nothing,
       createEnvironmentProfile = Prelude.Nothing,
       createFormType = Prelude.Nothing, createGlossary = Prelude.Nothing,
       createProject = Prelude.Nothing,
       createProjectFromProjectProfile = Prelude.Nothing,
       delegateCreateEnvironmentProfile = Prelude.Nothing,
       overrideDomainUnitOwners = Prelude.Nothing,
       overrideProjectOwners = Prelude.Nothing}
instance ToResourceProperties PolicyGrantDetailProperty where
  toResourceProperties PolicyGrantDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.PolicyGrantDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddToProjectMemberPool"
                              Prelude.<$> addToProjectMemberPool,
                            (JSON..=) "CreateAssetType" Prelude.<$> createAssetType,
                            (JSON..=) "CreateDomainUnit" Prelude.<$> createDomainUnit,
                            (JSON..=) "CreateEnvironment" Prelude.<$> createEnvironment,
                            (JSON..=) "CreateEnvironmentFromBlueprint"
                              Prelude.<$> createEnvironmentFromBlueprint,
                            (JSON..=) "CreateEnvironmentProfile"
                              Prelude.<$> createEnvironmentProfile,
                            (JSON..=) "CreateFormType" Prelude.<$> createFormType,
                            (JSON..=) "CreateGlossary" Prelude.<$> createGlossary,
                            (JSON..=) "CreateProject" Prelude.<$> createProject,
                            (JSON..=) "CreateProjectFromProjectProfile"
                              Prelude.<$> createProjectFromProjectProfile,
                            (JSON..=) "DelegateCreateEnvironmentProfile"
                              Prelude.<$> delegateCreateEnvironmentProfile,
                            (JSON..=) "OverrideDomainUnitOwners"
                              Prelude.<$> overrideDomainUnitOwners,
                            (JSON..=) "OverrideProjectOwners"
                              Prelude.<$> overrideProjectOwners])}
instance JSON.ToJSON PolicyGrantDetailProperty where
  toJSON PolicyGrantDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddToProjectMemberPool"
                 Prelude.<$> addToProjectMemberPool,
               (JSON..=) "CreateAssetType" Prelude.<$> createAssetType,
               (JSON..=) "CreateDomainUnit" Prelude.<$> createDomainUnit,
               (JSON..=) "CreateEnvironment" Prelude.<$> createEnvironment,
               (JSON..=) "CreateEnvironmentFromBlueprint"
                 Prelude.<$> createEnvironmentFromBlueprint,
               (JSON..=) "CreateEnvironmentProfile"
                 Prelude.<$> createEnvironmentProfile,
               (JSON..=) "CreateFormType" Prelude.<$> createFormType,
               (JSON..=) "CreateGlossary" Prelude.<$> createGlossary,
               (JSON..=) "CreateProject" Prelude.<$> createProject,
               (JSON..=) "CreateProjectFromProjectProfile"
                 Prelude.<$> createProjectFromProjectProfile,
               (JSON..=) "DelegateCreateEnvironmentProfile"
                 Prelude.<$> delegateCreateEnvironmentProfile,
               (JSON..=) "OverrideDomainUnitOwners"
                 Prelude.<$> overrideDomainUnitOwners,
               (JSON..=) "OverrideProjectOwners"
                 Prelude.<$> overrideProjectOwners]))
instance Property "AddToProjectMemberPool" PolicyGrantDetailProperty where
  type PropertyType "AddToProjectMemberPool" PolicyGrantDetailProperty = AddToProjectMemberPoolPolicyGrantDetailProperty
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {addToProjectMemberPool = Prelude.pure newValue, ..}
instance Property "CreateAssetType" PolicyGrantDetailProperty where
  type PropertyType "CreateAssetType" PolicyGrantDetailProperty = CreateAssetTypePolicyGrantDetailProperty
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {createAssetType = Prelude.pure newValue, ..}
instance Property "CreateDomainUnit" PolicyGrantDetailProperty where
  type PropertyType "CreateDomainUnit" PolicyGrantDetailProperty = CreateDomainUnitPolicyGrantDetailProperty
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {createDomainUnit = Prelude.pure newValue, ..}
instance Property "CreateEnvironment" PolicyGrantDetailProperty where
  type PropertyType "CreateEnvironment" PolicyGrantDetailProperty = JSON.Object
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {createEnvironment = Prelude.pure newValue, ..}
instance Property "CreateEnvironmentFromBlueprint" PolicyGrantDetailProperty where
  type PropertyType "CreateEnvironmentFromBlueprint" PolicyGrantDetailProperty = JSON.Object
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {createEnvironmentFromBlueprint = Prelude.pure newValue, ..}
instance Property "CreateEnvironmentProfile" PolicyGrantDetailProperty where
  type PropertyType "CreateEnvironmentProfile" PolicyGrantDetailProperty = CreateEnvironmentProfilePolicyGrantDetailProperty
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {createEnvironmentProfile = Prelude.pure newValue, ..}
instance Property "CreateFormType" PolicyGrantDetailProperty where
  type PropertyType "CreateFormType" PolicyGrantDetailProperty = CreateFormTypePolicyGrantDetailProperty
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {createFormType = Prelude.pure newValue, ..}
instance Property "CreateGlossary" PolicyGrantDetailProperty where
  type PropertyType "CreateGlossary" PolicyGrantDetailProperty = CreateGlossaryPolicyGrantDetailProperty
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {createGlossary = Prelude.pure newValue, ..}
instance Property "CreateProject" PolicyGrantDetailProperty where
  type PropertyType "CreateProject" PolicyGrantDetailProperty = CreateProjectPolicyGrantDetailProperty
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {createProject = Prelude.pure newValue, ..}
instance Property "CreateProjectFromProjectProfile" PolicyGrantDetailProperty where
  type PropertyType "CreateProjectFromProjectProfile" PolicyGrantDetailProperty = CreateProjectFromProjectProfilePolicyGrantDetailProperty
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {createProjectFromProjectProfile = Prelude.pure newValue, ..}
instance Property "DelegateCreateEnvironmentProfile" PolicyGrantDetailProperty where
  type PropertyType "DelegateCreateEnvironmentProfile" PolicyGrantDetailProperty = JSON.Object
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {delegateCreateEnvironmentProfile = Prelude.pure newValue, ..}
instance Property "OverrideDomainUnitOwners" PolicyGrantDetailProperty where
  type PropertyType "OverrideDomainUnitOwners" PolicyGrantDetailProperty = OverrideDomainUnitOwnersPolicyGrantDetailProperty
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {overrideDomainUnitOwners = Prelude.pure newValue, ..}
instance Property "OverrideProjectOwners" PolicyGrantDetailProperty where
  type PropertyType "OverrideProjectOwners" PolicyGrantDetailProperty = OverrideProjectOwnersPolicyGrantDetailProperty
  set newValue PolicyGrantDetailProperty {..}
    = PolicyGrantDetailProperty
        {overrideProjectOwners = Prelude.pure newValue, ..}