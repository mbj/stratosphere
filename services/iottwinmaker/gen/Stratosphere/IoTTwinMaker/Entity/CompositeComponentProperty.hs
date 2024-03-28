module Stratosphere.IoTTwinMaker.Entity.CompositeComponentProperty (
        module Exports, CompositeComponentProperty(..),
        mkCompositeComponentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.PropertyProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.PropertyGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.Entity.StatusProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CompositeComponentProperty
  = CompositeComponentProperty {componentName :: (Prelude.Maybe (Value Prelude.Text)),
                                componentPath :: (Prelude.Maybe (Value Prelude.Text)),
                                componentTypeId :: (Prelude.Maybe (Value Prelude.Text)),
                                description :: (Prelude.Maybe (Value Prelude.Text)),
                                properties :: (Prelude.Maybe (Prelude.Map Prelude.Text PropertyProperty)),
                                propertyGroups :: (Prelude.Maybe (Prelude.Map Prelude.Text PropertyGroupProperty)),
                                status :: (Prelude.Maybe StatusProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCompositeComponentProperty :: CompositeComponentProperty
mkCompositeComponentProperty
  = CompositeComponentProperty
      {componentName = Prelude.Nothing, componentPath = Prelude.Nothing,
       componentTypeId = Prelude.Nothing, description = Prelude.Nothing,
       properties = Prelude.Nothing, propertyGroups = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties CompositeComponentProperty where
  toResourceProperties CompositeComponentProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity.CompositeComponent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComponentName" Prelude.<$> componentName,
                            (JSON..=) "ComponentPath" Prelude.<$> componentPath,
                            (JSON..=) "ComponentTypeId" Prelude.<$> componentTypeId,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Properties" Prelude.<$> properties,
                            (JSON..=) "PropertyGroups" Prelude.<$> propertyGroups,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON CompositeComponentProperty where
  toJSON CompositeComponentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComponentName" Prelude.<$> componentName,
               (JSON..=) "ComponentPath" Prelude.<$> componentPath,
               (JSON..=) "ComponentTypeId" Prelude.<$> componentTypeId,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Properties" Prelude.<$> properties,
               (JSON..=) "PropertyGroups" Prelude.<$> propertyGroups,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "ComponentName" CompositeComponentProperty where
  type PropertyType "ComponentName" CompositeComponentProperty = Value Prelude.Text
  set newValue CompositeComponentProperty {..}
    = CompositeComponentProperty
        {componentName = Prelude.pure newValue, ..}
instance Property "ComponentPath" CompositeComponentProperty where
  type PropertyType "ComponentPath" CompositeComponentProperty = Value Prelude.Text
  set newValue CompositeComponentProperty {..}
    = CompositeComponentProperty
        {componentPath = Prelude.pure newValue, ..}
instance Property "ComponentTypeId" CompositeComponentProperty where
  type PropertyType "ComponentTypeId" CompositeComponentProperty = Value Prelude.Text
  set newValue CompositeComponentProperty {..}
    = CompositeComponentProperty
        {componentTypeId = Prelude.pure newValue, ..}
instance Property "Description" CompositeComponentProperty where
  type PropertyType "Description" CompositeComponentProperty = Value Prelude.Text
  set newValue CompositeComponentProperty {..}
    = CompositeComponentProperty
        {description = Prelude.pure newValue, ..}
instance Property "Properties" CompositeComponentProperty where
  type PropertyType "Properties" CompositeComponentProperty = Prelude.Map Prelude.Text PropertyProperty
  set newValue CompositeComponentProperty {..}
    = CompositeComponentProperty
        {properties = Prelude.pure newValue, ..}
instance Property "PropertyGroups" CompositeComponentProperty where
  type PropertyType "PropertyGroups" CompositeComponentProperty = Prelude.Map Prelude.Text PropertyGroupProperty
  set newValue CompositeComponentProperty {..}
    = CompositeComponentProperty
        {propertyGroups = Prelude.pure newValue, ..}
instance Property "Status" CompositeComponentProperty where
  type PropertyType "Status" CompositeComponentProperty = StatusProperty
  set newValue CompositeComponentProperty {..}
    = CompositeComponentProperty {status = Prelude.pure newValue, ..}