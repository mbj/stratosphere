module Stratosphere.FMS.Policy (
        module Exports, Policy(..), mkPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FMS.Policy.IEMapProperty as Exports
import {-# SOURCE #-} Stratosphere.FMS.Policy.PolicyTagProperty as Exports
import {-# SOURCE #-} Stratosphere.FMS.Policy.ResourceTagProperty as Exports
import {-# SOURCE #-} Stratosphere.FMS.Policy.SecurityServicePolicyDataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Policy
  = Policy {deleteAllPolicyResources :: (Prelude.Maybe (Value Prelude.Bool)),
            excludeMap :: (Prelude.Maybe IEMapProperty),
            excludeResourceTags :: (Value Prelude.Bool),
            includeMap :: (Prelude.Maybe IEMapProperty),
            policyDescription :: (Prelude.Maybe (Value Prelude.Text)),
            policyName :: (Value Prelude.Text),
            remediationEnabled :: (Value Prelude.Bool),
            resourceSetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
            resourceTags :: (Prelude.Maybe [ResourceTagProperty]),
            resourceType :: (Prelude.Maybe (Value Prelude.Text)),
            resourceTypeList :: (Prelude.Maybe (ValueList Prelude.Text)),
            resourcesCleanUp :: (Prelude.Maybe (Value Prelude.Bool)),
            securityServicePolicyData :: SecurityServicePolicyDataProperty,
            tags :: (Prelude.Maybe [PolicyTagProperty])}
mkPolicy ::
  Value Prelude.Bool
  -> Value Prelude.Text
     -> Value Prelude.Bool
        -> SecurityServicePolicyDataProperty -> Policy
mkPolicy
  excludeResourceTags
  policyName
  remediationEnabled
  securityServicePolicyData
  = Policy
      {excludeResourceTags = excludeResourceTags,
       policyName = policyName, remediationEnabled = remediationEnabled,
       securityServicePolicyData = securityServicePolicyData,
       deleteAllPolicyResources = Prelude.Nothing,
       excludeMap = Prelude.Nothing, includeMap = Prelude.Nothing,
       policyDescription = Prelude.Nothing,
       resourceSetIds = Prelude.Nothing, resourceTags = Prelude.Nothing,
       resourceType = Prelude.Nothing, resourceTypeList = Prelude.Nothing,
       resourcesCleanUp = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Policy where
  toResourceProperties Policy {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExcludeResourceTags" JSON..= excludeResourceTags,
                            "PolicyName" JSON..= policyName,
                            "RemediationEnabled" JSON..= remediationEnabled,
                            "SecurityServicePolicyData" JSON..= securityServicePolicyData]
                           (Prelude.catMaybes
                              [(JSON..=) "DeleteAllPolicyResources"
                                 Prelude.<$> deleteAllPolicyResources,
                               (JSON..=) "ExcludeMap" Prelude.<$> excludeMap,
                               (JSON..=) "IncludeMap" Prelude.<$> includeMap,
                               (JSON..=) "PolicyDescription" Prelude.<$> policyDescription,
                               (JSON..=) "ResourceSetIds" Prelude.<$> resourceSetIds,
                               (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                               (JSON..=) "ResourceType" Prelude.<$> resourceType,
                               (JSON..=) "ResourceTypeList" Prelude.<$> resourceTypeList,
                               (JSON..=) "ResourcesCleanUp" Prelude.<$> resourcesCleanUp,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Policy where
  toJSON Policy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExcludeResourceTags" JSON..= excludeResourceTags,
               "PolicyName" JSON..= policyName,
               "RemediationEnabled" JSON..= remediationEnabled,
               "SecurityServicePolicyData" JSON..= securityServicePolicyData]
              (Prelude.catMaybes
                 [(JSON..=) "DeleteAllPolicyResources"
                    Prelude.<$> deleteAllPolicyResources,
                  (JSON..=) "ExcludeMap" Prelude.<$> excludeMap,
                  (JSON..=) "IncludeMap" Prelude.<$> includeMap,
                  (JSON..=) "PolicyDescription" Prelude.<$> policyDescription,
                  (JSON..=) "ResourceSetIds" Prelude.<$> resourceSetIds,
                  (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                  (JSON..=) "ResourceType" Prelude.<$> resourceType,
                  (JSON..=) "ResourceTypeList" Prelude.<$> resourceTypeList,
                  (JSON..=) "ResourcesCleanUp" Prelude.<$> resourcesCleanUp,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeleteAllPolicyResources" Policy where
  type PropertyType "DeleteAllPolicyResources" Policy = Value Prelude.Bool
  set newValue Policy {..}
    = Policy {deleteAllPolicyResources = Prelude.pure newValue, ..}
instance Property "ExcludeMap" Policy where
  type PropertyType "ExcludeMap" Policy = IEMapProperty
  set newValue Policy {..}
    = Policy {excludeMap = Prelude.pure newValue, ..}
instance Property "ExcludeResourceTags" Policy where
  type PropertyType "ExcludeResourceTags" Policy = Value Prelude.Bool
  set newValue Policy {..}
    = Policy {excludeResourceTags = newValue, ..}
instance Property "IncludeMap" Policy where
  type PropertyType "IncludeMap" Policy = IEMapProperty
  set newValue Policy {..}
    = Policy {includeMap = Prelude.pure newValue, ..}
instance Property "PolicyDescription" Policy where
  type PropertyType "PolicyDescription" Policy = Value Prelude.Text
  set newValue Policy {..}
    = Policy {policyDescription = Prelude.pure newValue, ..}
instance Property "PolicyName" Policy where
  type PropertyType "PolicyName" Policy = Value Prelude.Text
  set newValue Policy {..} = Policy {policyName = newValue, ..}
instance Property "RemediationEnabled" Policy where
  type PropertyType "RemediationEnabled" Policy = Value Prelude.Bool
  set newValue Policy {..}
    = Policy {remediationEnabled = newValue, ..}
instance Property "ResourceSetIds" Policy where
  type PropertyType "ResourceSetIds" Policy = ValueList Prelude.Text
  set newValue Policy {..}
    = Policy {resourceSetIds = Prelude.pure newValue, ..}
instance Property "ResourceTags" Policy where
  type PropertyType "ResourceTags" Policy = [ResourceTagProperty]
  set newValue Policy {..}
    = Policy {resourceTags = Prelude.pure newValue, ..}
instance Property "ResourceType" Policy where
  type PropertyType "ResourceType" Policy = Value Prelude.Text
  set newValue Policy {..}
    = Policy {resourceType = Prelude.pure newValue, ..}
instance Property "ResourceTypeList" Policy where
  type PropertyType "ResourceTypeList" Policy = ValueList Prelude.Text
  set newValue Policy {..}
    = Policy {resourceTypeList = Prelude.pure newValue, ..}
instance Property "ResourcesCleanUp" Policy where
  type PropertyType "ResourcesCleanUp" Policy = Value Prelude.Bool
  set newValue Policy {..}
    = Policy {resourcesCleanUp = Prelude.pure newValue, ..}
instance Property "SecurityServicePolicyData" Policy where
  type PropertyType "SecurityServicePolicyData" Policy = SecurityServicePolicyDataProperty
  set newValue Policy {..}
    = Policy {securityServicePolicyData = newValue, ..}
instance Property "Tags" Policy where
  type PropertyType "Tags" Policy = [PolicyTagProperty]
  set newValue Policy {..}
    = Policy {tags = Prelude.pure newValue, ..}