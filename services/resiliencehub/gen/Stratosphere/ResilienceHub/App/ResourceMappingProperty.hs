module Stratosphere.ResilienceHub.App.ResourceMappingProperty (
        module Exports, ResourceMappingProperty(..),
        mkResourceMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ResilienceHub.App.PhysicalResourceIdProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceMappingProperty
  = ResourceMappingProperty {logicalStackName :: (Prelude.Maybe (Value Prelude.Text)),
                             mappingType :: (Value Prelude.Text),
                             physicalResourceId :: PhysicalResourceIdProperty,
                             resourceName :: (Prelude.Maybe (Value Prelude.Text)),
                             terraformSourceName :: (Prelude.Maybe (Value Prelude.Text))}
mkResourceMappingProperty ::
  Value Prelude.Text
  -> PhysicalResourceIdProperty -> ResourceMappingProperty
mkResourceMappingProperty mappingType physicalResourceId
  = ResourceMappingProperty
      {mappingType = mappingType,
       physicalResourceId = physicalResourceId,
       logicalStackName = Prelude.Nothing, resourceName = Prelude.Nothing,
       terraformSourceName = Prelude.Nothing}
instance ToResourceProperties ResourceMappingProperty where
  toResourceProperties ResourceMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ResilienceHub::App.ResourceMapping",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MappingType" JSON..= mappingType,
                            "PhysicalResourceId" JSON..= physicalResourceId]
                           (Prelude.catMaybes
                              [(JSON..=) "LogicalStackName" Prelude.<$> logicalStackName,
                               (JSON..=) "ResourceName" Prelude.<$> resourceName,
                               (JSON..=) "TerraformSourceName" Prelude.<$> terraformSourceName]))}
instance JSON.ToJSON ResourceMappingProperty where
  toJSON ResourceMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MappingType" JSON..= mappingType,
               "PhysicalResourceId" JSON..= physicalResourceId]
              (Prelude.catMaybes
                 [(JSON..=) "LogicalStackName" Prelude.<$> logicalStackName,
                  (JSON..=) "ResourceName" Prelude.<$> resourceName,
                  (JSON..=) "TerraformSourceName" Prelude.<$> terraformSourceName])))
instance Property "LogicalStackName" ResourceMappingProperty where
  type PropertyType "LogicalStackName" ResourceMappingProperty = Value Prelude.Text
  set newValue ResourceMappingProperty {..}
    = ResourceMappingProperty
        {logicalStackName = Prelude.pure newValue, ..}
instance Property "MappingType" ResourceMappingProperty where
  type PropertyType "MappingType" ResourceMappingProperty = Value Prelude.Text
  set newValue ResourceMappingProperty {..}
    = ResourceMappingProperty {mappingType = newValue, ..}
instance Property "PhysicalResourceId" ResourceMappingProperty where
  type PropertyType "PhysicalResourceId" ResourceMappingProperty = PhysicalResourceIdProperty
  set newValue ResourceMappingProperty {..}
    = ResourceMappingProperty {physicalResourceId = newValue, ..}
instance Property "ResourceName" ResourceMappingProperty where
  type PropertyType "ResourceName" ResourceMappingProperty = Value Prelude.Text
  set newValue ResourceMappingProperty {..}
    = ResourceMappingProperty
        {resourceName = Prelude.pure newValue, ..}
instance Property "TerraformSourceName" ResourceMappingProperty where
  type PropertyType "TerraformSourceName" ResourceMappingProperty = Value Prelude.Text
  set newValue ResourceMappingProperty {..}
    = ResourceMappingProperty
        {terraformSourceName = Prelude.pure newValue, ..}