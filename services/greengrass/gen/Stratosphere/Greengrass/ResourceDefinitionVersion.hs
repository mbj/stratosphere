module Stratosphere.Greengrass.ResourceDefinitionVersion (
        module Exports, ResourceDefinitionVersion(..),
        mkResourceDefinitionVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinitionVersion.ResourceInstanceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceDefinitionVersion
  = ResourceDefinitionVersion {resourceDefinitionId :: (Value Prelude.Text),
                               resources :: [ResourceInstanceProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceDefinitionVersion ::
  Value Prelude.Text
  -> [ResourceInstanceProperty] -> ResourceDefinitionVersion
mkResourceDefinitionVersion resourceDefinitionId resources
  = ResourceDefinitionVersion
      {resourceDefinitionId = resourceDefinitionId,
       resources = resources}
instance ToResourceProperties ResourceDefinitionVersion where
  toResourceProperties ResourceDefinitionVersion {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinitionVersion",
         supportsTags = Prelude.False,
         properties = ["ResourceDefinitionId" JSON..= resourceDefinitionId,
                       "Resources" JSON..= resources]}
instance JSON.ToJSON ResourceDefinitionVersion where
  toJSON ResourceDefinitionVersion {..}
    = JSON.object
        ["ResourceDefinitionId" JSON..= resourceDefinitionId,
         "Resources" JSON..= resources]
instance Property "ResourceDefinitionId" ResourceDefinitionVersion where
  type PropertyType "ResourceDefinitionId" ResourceDefinitionVersion = Value Prelude.Text
  set newValue ResourceDefinitionVersion {..}
    = ResourceDefinitionVersion {resourceDefinitionId = newValue, ..}
instance Property "Resources" ResourceDefinitionVersion where
  type PropertyType "Resources" ResourceDefinitionVersion = [ResourceInstanceProperty]
  set newValue ResourceDefinitionVersion {..}
    = ResourceDefinitionVersion {resources = newValue, ..}