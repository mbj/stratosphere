module Stratosphere.CustomerProfiles.Integration (
        module Exports, Integration(..), mkIntegration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.FlowDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.ObjectTypeMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Integration
  = Integration {domainName :: (Value Prelude.Text),
                 flowDefinition :: (Prelude.Maybe FlowDefinitionProperty),
                 objectTypeName :: (Prelude.Maybe (Value Prelude.Text)),
                 objectTypeNames :: (Prelude.Maybe [ObjectTypeMappingProperty]),
                 tags :: (Prelude.Maybe [Tag]),
                 uri :: (Prelude.Maybe (Value Prelude.Text))}
mkIntegration :: Value Prelude.Text -> Integration
mkIntegration domainName
  = Integration
      {domainName = domainName, flowDefinition = Prelude.Nothing,
       objectTypeName = Prelude.Nothing,
       objectTypeNames = Prelude.Nothing, tags = Prelude.Nothing,
       uri = Prelude.Nothing}
instance ToResourceProperties Integration where
  toResourceProperties Integration {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName]
                           (Prelude.catMaybes
                              [(JSON..=) "FlowDefinition" Prelude.<$> flowDefinition,
                               (JSON..=) "ObjectTypeName" Prelude.<$> objectTypeName,
                               (JSON..=) "ObjectTypeNames" Prelude.<$> objectTypeNames,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Uri" Prelude.<$> uri]))}
instance JSON.ToJSON Integration where
  toJSON Integration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName]
              (Prelude.catMaybes
                 [(JSON..=) "FlowDefinition" Prelude.<$> flowDefinition,
                  (JSON..=) "ObjectTypeName" Prelude.<$> objectTypeName,
                  (JSON..=) "ObjectTypeNames" Prelude.<$> objectTypeNames,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Uri" Prelude.<$> uri])))
instance Property "DomainName" Integration where
  type PropertyType "DomainName" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {domainName = newValue, ..}
instance Property "FlowDefinition" Integration where
  type PropertyType "FlowDefinition" Integration = FlowDefinitionProperty
  set newValue Integration {..}
    = Integration {flowDefinition = Prelude.pure newValue, ..}
instance Property "ObjectTypeName" Integration where
  type PropertyType "ObjectTypeName" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {objectTypeName = Prelude.pure newValue, ..}
instance Property "ObjectTypeNames" Integration where
  type PropertyType "ObjectTypeNames" Integration = [ObjectTypeMappingProperty]
  set newValue Integration {..}
    = Integration {objectTypeNames = Prelude.pure newValue, ..}
instance Property "Tags" Integration where
  type PropertyType "Tags" Integration = [Tag]
  set newValue Integration {..}
    = Integration {tags = Prelude.pure newValue, ..}
instance Property "Uri" Integration where
  type PropertyType "Uri" Integration = Value Prelude.Text
  set newValue Integration {..}
    = Integration {uri = Prelude.pure newValue, ..}