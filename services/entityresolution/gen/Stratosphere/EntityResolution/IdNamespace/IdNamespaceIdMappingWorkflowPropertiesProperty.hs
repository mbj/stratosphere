module Stratosphere.EntityResolution.IdNamespace.IdNamespaceIdMappingWorkflowPropertiesProperty (
        module Exports, IdNamespaceIdMappingWorkflowPropertiesProperty(..),
        mkIdNamespaceIdMappingWorkflowPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.IdNamespace.NamespaceProviderPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.IdNamespace.NamespaceRuleBasedPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdNamespaceIdMappingWorkflowPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idnamespace-idnamespaceidmappingworkflowproperties.html>
    IdNamespaceIdMappingWorkflowPropertiesProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idnamespace-idnamespaceidmappingworkflowproperties.html#cfn-entityresolution-idnamespace-idnamespaceidmappingworkflowproperties-idmappingtype>
                                                    idMappingType :: (Value Prelude.Text),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idnamespace-idnamespaceidmappingworkflowproperties.html#cfn-entityresolution-idnamespace-idnamespaceidmappingworkflowproperties-providerproperties>
                                                    providerProperties :: (Prelude.Maybe NamespaceProviderPropertiesProperty),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idnamespace-idnamespaceidmappingworkflowproperties.html#cfn-entityresolution-idnamespace-idnamespaceidmappingworkflowproperties-rulebasedproperties>
                                                    ruleBasedProperties :: (Prelude.Maybe NamespaceRuleBasedPropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdNamespaceIdMappingWorkflowPropertiesProperty ::
  Value Prelude.Text
  -> IdNamespaceIdMappingWorkflowPropertiesProperty
mkIdNamespaceIdMappingWorkflowPropertiesProperty idMappingType
  = IdNamespaceIdMappingWorkflowPropertiesProperty
      {haddock_workaround_ = (), idMappingType = idMappingType,
       providerProperties = Prelude.Nothing,
       ruleBasedProperties = Prelude.Nothing}
instance ToResourceProperties IdNamespaceIdMappingWorkflowPropertiesProperty where
  toResourceProperties
    IdNamespaceIdMappingWorkflowPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdNamespace.IdNamespaceIdMappingWorkflowProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IdMappingType" JSON..= idMappingType]
                           (Prelude.catMaybes
                              [(JSON..=) "ProviderProperties" Prelude.<$> providerProperties,
                               (JSON..=) "RuleBasedProperties" Prelude.<$> ruleBasedProperties]))}
instance JSON.ToJSON IdNamespaceIdMappingWorkflowPropertiesProperty where
  toJSON IdNamespaceIdMappingWorkflowPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IdMappingType" JSON..= idMappingType]
              (Prelude.catMaybes
                 [(JSON..=) "ProviderProperties" Prelude.<$> providerProperties,
                  (JSON..=) "RuleBasedProperties" Prelude.<$> ruleBasedProperties])))
instance Property "IdMappingType" IdNamespaceIdMappingWorkflowPropertiesProperty where
  type PropertyType "IdMappingType" IdNamespaceIdMappingWorkflowPropertiesProperty = Value Prelude.Text
  set newValue IdNamespaceIdMappingWorkflowPropertiesProperty {..}
    = IdNamespaceIdMappingWorkflowPropertiesProperty
        {idMappingType = newValue, ..}
instance Property "ProviderProperties" IdNamespaceIdMappingWorkflowPropertiesProperty where
  type PropertyType "ProviderProperties" IdNamespaceIdMappingWorkflowPropertiesProperty = NamespaceProviderPropertiesProperty
  set newValue IdNamespaceIdMappingWorkflowPropertiesProperty {..}
    = IdNamespaceIdMappingWorkflowPropertiesProperty
        {providerProperties = Prelude.pure newValue, ..}
instance Property "RuleBasedProperties" IdNamespaceIdMappingWorkflowPropertiesProperty where
  type PropertyType "RuleBasedProperties" IdNamespaceIdMappingWorkflowPropertiesProperty = NamespaceRuleBasedPropertiesProperty
  set newValue IdNamespaceIdMappingWorkflowPropertiesProperty {..}
    = IdNamespaceIdMappingWorkflowPropertiesProperty
        {ruleBasedProperties = Prelude.pure newValue, ..}