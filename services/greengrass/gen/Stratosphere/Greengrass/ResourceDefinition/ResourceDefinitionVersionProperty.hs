module Stratosphere.Greengrass.ResourceDefinition.ResourceDefinitionVersionProperty (
        module Exports, ResourceDefinitionVersionProperty(..),
        mkResourceDefinitionVersionProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinition.ResourceInstanceProperty as Exports
import Stratosphere.ResourceProperties
data ResourceDefinitionVersionProperty
  = ResourceDefinitionVersionProperty {resources :: [ResourceInstanceProperty]}
mkResourceDefinitionVersionProperty ::
  [ResourceInstanceProperty] -> ResourceDefinitionVersionProperty
mkResourceDefinitionVersionProperty resources
  = ResourceDefinitionVersionProperty {resources = resources}
instance ToResourceProperties ResourceDefinitionVersionProperty where
  toResourceProperties ResourceDefinitionVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinition.ResourceDefinitionVersion",
         properties = ["Resources" JSON..= resources]}
instance JSON.ToJSON ResourceDefinitionVersionProperty where
  toJSON ResourceDefinitionVersionProperty {..}
    = JSON.object ["Resources" JSON..= resources]
instance Property "Resources" ResourceDefinitionVersionProperty where
  type PropertyType "Resources" ResourceDefinitionVersionProperty = [ResourceInstanceProperty]
  set newValue ResourceDefinitionVersionProperty {}
    = ResourceDefinitionVersionProperty {resources = newValue, ..}