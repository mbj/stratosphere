module Stratosphere.AmplifyUIBuilder.Component (
        module Exports, Component(..), mkComponent
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentBindingPropertiesValueProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentChildProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentDataConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentEventProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentPropertyProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentVariantProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Component
  = Component {appId :: (Prelude.Maybe (Value Prelude.Text)),
               bindingProperties :: (Prelude.Map Prelude.Text ComponentBindingPropertiesValueProperty),
               children :: (Prelude.Maybe [ComponentChildProperty]),
               collectionProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text ComponentDataConfigurationProperty)),
               componentType :: (Value Prelude.Text),
               environmentName :: (Prelude.Maybe (Value Prelude.Text)),
               events :: (Prelude.Maybe (Prelude.Map Prelude.Text ComponentEventProperty)),
               name :: (Value Prelude.Text),
               overrides :: JSON.Object,
               properties :: (Prelude.Map Prelude.Text ComponentPropertyProperty),
               schemaVersion :: (Prelude.Maybe (Value Prelude.Text)),
               sourceId :: (Prelude.Maybe (Value Prelude.Text)),
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
               variants :: [ComponentVariantProperty]}
mkComponent ::
  Prelude.Map Prelude.Text ComponentBindingPropertiesValueProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> JSON.Object
           -> Prelude.Map Prelude.Text ComponentPropertyProperty
              -> [ComponentVariantProperty] -> Component
mkComponent
  bindingProperties
  componentType
  name
  overrides
  properties
  variants
  = Component
      {bindingProperties = bindingProperties,
       componentType = componentType, name = name, overrides = overrides,
       properties = properties, variants = variants,
       appId = Prelude.Nothing, children = Prelude.Nothing,
       collectionProperties = Prelude.Nothing,
       environmentName = Prelude.Nothing, events = Prelude.Nothing,
       schemaVersion = Prelude.Nothing, sourceId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Component where
  toResourceProperties Component {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BindingProperties" JSON..= bindingProperties,
                            "ComponentType" JSON..= componentType, "Name" JSON..= name,
                            "Overrides" JSON..= overrides, "Properties" JSON..= properties,
                            "Variants" JSON..= variants]
                           (Prelude.catMaybes
                              [(JSON..=) "AppId" Prelude.<$> appId,
                               (JSON..=) "Children" Prelude.<$> children,
                               (JSON..=) "CollectionProperties" Prelude.<$> collectionProperties,
                               (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
                               (JSON..=) "Events" Prelude.<$> events,
                               (JSON..=) "SchemaVersion" Prelude.<$> schemaVersion,
                               (JSON..=) "SourceId" Prelude.<$> sourceId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Component where
  toJSON Component {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BindingProperties" JSON..= bindingProperties,
               "ComponentType" JSON..= componentType, "Name" JSON..= name,
               "Overrides" JSON..= overrides, "Properties" JSON..= properties,
               "Variants" JSON..= variants]
              (Prelude.catMaybes
                 [(JSON..=) "AppId" Prelude.<$> appId,
                  (JSON..=) "Children" Prelude.<$> children,
                  (JSON..=) "CollectionProperties" Prelude.<$> collectionProperties,
                  (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
                  (JSON..=) "Events" Prelude.<$> events,
                  (JSON..=) "SchemaVersion" Prelude.<$> schemaVersion,
                  (JSON..=) "SourceId" Prelude.<$> sourceId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AppId" Component where
  type PropertyType "AppId" Component = Value Prelude.Text
  set newValue Component {..}
    = Component {appId = Prelude.pure newValue, ..}
instance Property "BindingProperties" Component where
  type PropertyType "BindingProperties" Component = Prelude.Map Prelude.Text ComponentBindingPropertiesValueProperty
  set newValue Component {..}
    = Component {bindingProperties = newValue, ..}
instance Property "Children" Component where
  type PropertyType "Children" Component = [ComponentChildProperty]
  set newValue Component {..}
    = Component {children = Prelude.pure newValue, ..}
instance Property "CollectionProperties" Component where
  type PropertyType "CollectionProperties" Component = Prelude.Map Prelude.Text ComponentDataConfigurationProperty
  set newValue Component {..}
    = Component {collectionProperties = Prelude.pure newValue, ..}
instance Property "ComponentType" Component where
  type PropertyType "ComponentType" Component = Value Prelude.Text
  set newValue Component {..}
    = Component {componentType = newValue, ..}
instance Property "EnvironmentName" Component where
  type PropertyType "EnvironmentName" Component = Value Prelude.Text
  set newValue Component {..}
    = Component {environmentName = Prelude.pure newValue, ..}
instance Property "Events" Component where
  type PropertyType "Events" Component = Prelude.Map Prelude.Text ComponentEventProperty
  set newValue Component {..}
    = Component {events = Prelude.pure newValue, ..}
instance Property "Name" Component where
  type PropertyType "Name" Component = Value Prelude.Text
  set newValue Component {..} = Component {name = newValue, ..}
instance Property "Overrides" Component where
  type PropertyType "Overrides" Component = JSON.Object
  set newValue Component {..} = Component {overrides = newValue, ..}
instance Property "Properties" Component where
  type PropertyType "Properties" Component = Prelude.Map Prelude.Text ComponentPropertyProperty
  set newValue Component {..} = Component {properties = newValue, ..}
instance Property "SchemaVersion" Component where
  type PropertyType "SchemaVersion" Component = Value Prelude.Text
  set newValue Component {..}
    = Component {schemaVersion = Prelude.pure newValue, ..}
instance Property "SourceId" Component where
  type PropertyType "SourceId" Component = Value Prelude.Text
  set newValue Component {..}
    = Component {sourceId = Prelude.pure newValue, ..}
instance Property "Tags" Component where
  type PropertyType "Tags" Component = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Component {..}
    = Component {tags = Prelude.pure newValue, ..}
instance Property "Variants" Component where
  type PropertyType "Variants" Component = [ComponentVariantProperty]
  set newValue Component {..} = Component {variants = newValue, ..}