module Stratosphere.IoTTwinMaker.Entity.ComponentProperty (
        module Exports, ComponentProperty(..), mkComponentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.PropertyProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.PropertyGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.StatusProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentProperty
  = ComponentProperty {componentName :: (Prelude.Maybe (Value Prelude.Text)),
                       componentTypeId :: (Prelude.Maybe (Value Prelude.Text)),
                       definedIn :: (Prelude.Maybe (Value Prelude.Text)),
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       properties :: (Prelude.Maybe (Prelude.Map Prelude.Text PropertyProperty)),
                       propertyGroups :: (Prelude.Maybe (Prelude.Map Prelude.Text PropertyGroupProperty)),
                       status :: (Prelude.Maybe StatusProperty)}
mkComponentProperty :: ComponentProperty
mkComponentProperty
  = ComponentProperty
      {componentName = Prelude.Nothing,
       componentTypeId = Prelude.Nothing, definedIn = Prelude.Nothing,
       description = Prelude.Nothing, properties = Prelude.Nothing,
       propertyGroups = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties ComponentProperty where
  toResourceProperties ComponentProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity.Component",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentName" Prelude.<$> componentName,
                            (JSON..=) "ComponentTypeId" Prelude.<$> componentTypeId,
                            (JSON..=) "DefinedIn" Prelude.<$> definedIn,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Properties" Prelude.<$> properties,
                            (JSON..=) "PropertyGroups" Prelude.<$> propertyGroups,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON ComponentProperty where
  toJSON ComponentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentName" Prelude.<$> componentName,
               (JSON..=) "ComponentTypeId" Prelude.<$> componentTypeId,
               (JSON..=) "DefinedIn" Prelude.<$> definedIn,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Properties" Prelude.<$> properties,
               (JSON..=) "PropertyGroups" Prelude.<$> propertyGroups,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "ComponentName" ComponentProperty where
  type PropertyType "ComponentName" ComponentProperty = Value Prelude.Text
  set newValue ComponentProperty {..}
    = ComponentProperty {componentName = Prelude.pure newValue, ..}
instance Property "ComponentTypeId" ComponentProperty where
  type PropertyType "ComponentTypeId" ComponentProperty = Value Prelude.Text
  set newValue ComponentProperty {..}
    = ComponentProperty {componentTypeId = Prelude.pure newValue, ..}
instance Property "DefinedIn" ComponentProperty where
  type PropertyType "DefinedIn" ComponentProperty = Value Prelude.Text
  set newValue ComponentProperty {..}
    = ComponentProperty {definedIn = Prelude.pure newValue, ..}
instance Property "Description" ComponentProperty where
  type PropertyType "Description" ComponentProperty = Value Prelude.Text
  set newValue ComponentProperty {..}
    = ComponentProperty {description = Prelude.pure newValue, ..}
instance Property "Properties" ComponentProperty where
  type PropertyType "Properties" ComponentProperty = Prelude.Map Prelude.Text PropertyProperty
  set newValue ComponentProperty {..}
    = ComponentProperty {properties = Prelude.pure newValue, ..}
instance Property "PropertyGroups" ComponentProperty where
  type PropertyType "PropertyGroups" ComponentProperty = Prelude.Map Prelude.Text PropertyGroupProperty
  set newValue ComponentProperty {..}
    = ComponentProperty {propertyGroups = Prelude.pure newValue, ..}
instance Property "Status" ComponentProperty where
  type PropertyType "Status" ComponentProperty = StatusProperty
  set newValue ComponentProperty {..}
    = ComponentProperty {status = Prelude.pure newValue, ..}