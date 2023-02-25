module Stratosphere.Greengrass.ResourceDefinition.ResourceInstanceProperty (
        module Exports, ResourceInstanceProperty(..),
        mkResourceInstanceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.ResourceDefinition.ResourceDataContainerProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceInstanceProperty
  = ResourceInstanceProperty {id :: (Value Prelude.Text),
                              name :: (Value Prelude.Text),
                              resourceDataContainer :: ResourceDataContainerProperty}
mkResourceInstanceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ResourceDataContainerProperty -> ResourceInstanceProperty
mkResourceInstanceProperty id name resourceDataContainer
  = ResourceInstanceProperty
      {id = id, name = name,
       resourceDataContainer = resourceDataContainer}
instance ToResourceProperties ResourceInstanceProperty where
  toResourceProperties ResourceInstanceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::ResourceDefinition.ResourceInstance",
         properties = ["Id" JSON..= id, "Name" JSON..= name,
                       "ResourceDataContainer" JSON..= resourceDataContainer]}
instance JSON.ToJSON ResourceInstanceProperty where
  toJSON ResourceInstanceProperty {..}
    = JSON.object
        ["Id" JSON..= id, "Name" JSON..= name,
         "ResourceDataContainer" JSON..= resourceDataContainer]
instance Property "Id" ResourceInstanceProperty where
  type PropertyType "Id" ResourceInstanceProperty = Value Prelude.Text
  set newValue ResourceInstanceProperty {..}
    = ResourceInstanceProperty {id = newValue, ..}
instance Property "Name" ResourceInstanceProperty where
  type PropertyType "Name" ResourceInstanceProperty = Value Prelude.Text
  set newValue ResourceInstanceProperty {..}
    = ResourceInstanceProperty {name = newValue, ..}
instance Property "ResourceDataContainer" ResourceInstanceProperty where
  type PropertyType "ResourceDataContainer" ResourceInstanceProperty = ResourceDataContainerProperty
  set newValue ResourceInstanceProperty {..}
    = ResourceInstanceProperty {resourceDataContainer = newValue, ..}