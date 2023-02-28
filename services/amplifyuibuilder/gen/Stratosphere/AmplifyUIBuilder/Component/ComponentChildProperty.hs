module Stratosphere.AmplifyUIBuilder.Component.ComponentChildProperty (
        module Exports, ComponentChildProperty(..),
        mkComponentChildProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentEventProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentPropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentChildProperty
  = ComponentChildProperty {children :: (Prelude.Maybe [ComponentChildProperty]),
                            componentType :: (Value Prelude.Text),
                            events :: (Prelude.Maybe (Prelude.Map Prelude.Text ComponentEventProperty)),
                            name :: (Value Prelude.Text),
                            properties :: (Prelude.Map Prelude.Text ComponentPropertyProperty)}
mkComponentChildProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Prelude.Map Prelude.Text ComponentPropertyProperty
        -> ComponentChildProperty
mkComponentChildProperty componentType name properties
  = ComponentChildProperty
      {componentType = componentType, name = name,
       properties = properties, children = Prelude.Nothing,
       events = Prelude.Nothing}
instance ToResourceProperties ComponentChildProperty where
  toResourceProperties ComponentChildProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.ComponentChild",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComponentType" JSON..= componentType, "Name" JSON..= name,
                            "Properties" JSON..= properties]
                           (Prelude.catMaybes
                              [(JSON..=) "Children" Prelude.<$> children,
                               (JSON..=) "Events" Prelude.<$> events]))}
instance JSON.ToJSON ComponentChildProperty where
  toJSON ComponentChildProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComponentType" JSON..= componentType, "Name" JSON..= name,
               "Properties" JSON..= properties]
              (Prelude.catMaybes
                 [(JSON..=) "Children" Prelude.<$> children,
                  (JSON..=) "Events" Prelude.<$> events])))
instance Property "Children" ComponentChildProperty where
  type PropertyType "Children" ComponentChildProperty = [ComponentChildProperty]
  set newValue ComponentChildProperty {..}
    = ComponentChildProperty {children = Prelude.pure newValue, ..}
instance Property "ComponentType" ComponentChildProperty where
  type PropertyType "ComponentType" ComponentChildProperty = Value Prelude.Text
  set newValue ComponentChildProperty {..}
    = ComponentChildProperty {componentType = newValue, ..}
instance Property "Events" ComponentChildProperty where
  type PropertyType "Events" ComponentChildProperty = Prelude.Map Prelude.Text ComponentEventProperty
  set newValue ComponentChildProperty {..}
    = ComponentChildProperty {events = Prelude.pure newValue, ..}
instance Property "Name" ComponentChildProperty where
  type PropertyType "Name" ComponentChildProperty = Value Prelude.Text
  set newValue ComponentChildProperty {..}
    = ComponentChildProperty {name = newValue, ..}
instance Property "Properties" ComponentChildProperty where
  type PropertyType "Properties" ComponentChildProperty = Prelude.Map Prelude.Text ComponentPropertyProperty
  set newValue ComponentChildProperty {..}
    = ComponentChildProperty {properties = newValue, ..}