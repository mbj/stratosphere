module Stratosphere.AmplifyUIBuilder.Component.ComponentBindingPropertiesValuePropertiesProperty (
        module Exports,
        ComponentBindingPropertiesValuePropertiesProperty(..),
        mkComponentBindingPropertiesValuePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.PredicateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentBindingPropertiesValuePropertiesProperty
  = ComponentBindingPropertiesValuePropertiesProperty {bucket :: (Prelude.Maybe (Value Prelude.Text)),
                                                       defaultValue :: (Prelude.Maybe (Value Prelude.Text)),
                                                       field :: (Prelude.Maybe (Value Prelude.Text)),
                                                       key :: (Prelude.Maybe (Value Prelude.Text)),
                                                       model :: (Prelude.Maybe (Value Prelude.Text)),
                                                       predicates :: (Prelude.Maybe [PredicateProperty]),
                                                       userAttribute :: (Prelude.Maybe (Value Prelude.Text))}
mkComponentBindingPropertiesValuePropertiesProperty ::
  ComponentBindingPropertiesValuePropertiesProperty
mkComponentBindingPropertiesValuePropertiesProperty
  = ComponentBindingPropertiesValuePropertiesProperty
      {bucket = Prelude.Nothing, defaultValue = Prelude.Nothing,
       field = Prelude.Nothing, key = Prelude.Nothing,
       model = Prelude.Nothing, predicates = Prelude.Nothing,
       userAttribute = Prelude.Nothing}
instance ToResourceProperties ComponentBindingPropertiesValuePropertiesProperty where
  toResourceProperties
    ComponentBindingPropertiesValuePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.ComponentBindingPropertiesValueProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bucket" Prelude.<$> bucket,
                            (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                            (JSON..=) "Field" Prelude.<$> field,
                            (JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Model" Prelude.<$> model,
                            (JSON..=) "Predicates" Prelude.<$> predicates,
                            (JSON..=) "UserAttribute" Prelude.<$> userAttribute])}
instance JSON.ToJSON ComponentBindingPropertiesValuePropertiesProperty where
  toJSON ComponentBindingPropertiesValuePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bucket" Prelude.<$> bucket,
               (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
               (JSON..=) "Field" Prelude.<$> field,
               (JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Model" Prelude.<$> model,
               (JSON..=) "Predicates" Prelude.<$> predicates,
               (JSON..=) "UserAttribute" Prelude.<$> userAttribute]))
instance Property "Bucket" ComponentBindingPropertiesValuePropertiesProperty where
  type PropertyType "Bucket" ComponentBindingPropertiesValuePropertiesProperty = Value Prelude.Text
  set newValue ComponentBindingPropertiesValuePropertiesProperty {..}
    = ComponentBindingPropertiesValuePropertiesProperty
        {bucket = Prelude.pure newValue, ..}
instance Property "DefaultValue" ComponentBindingPropertiesValuePropertiesProperty where
  type PropertyType "DefaultValue" ComponentBindingPropertiesValuePropertiesProperty = Value Prelude.Text
  set newValue ComponentBindingPropertiesValuePropertiesProperty {..}
    = ComponentBindingPropertiesValuePropertiesProperty
        {defaultValue = Prelude.pure newValue, ..}
instance Property "Field" ComponentBindingPropertiesValuePropertiesProperty where
  type PropertyType "Field" ComponentBindingPropertiesValuePropertiesProperty = Value Prelude.Text
  set newValue ComponentBindingPropertiesValuePropertiesProperty {..}
    = ComponentBindingPropertiesValuePropertiesProperty
        {field = Prelude.pure newValue, ..}
instance Property "Key" ComponentBindingPropertiesValuePropertiesProperty where
  type PropertyType "Key" ComponentBindingPropertiesValuePropertiesProperty = Value Prelude.Text
  set newValue ComponentBindingPropertiesValuePropertiesProperty {..}
    = ComponentBindingPropertiesValuePropertiesProperty
        {key = Prelude.pure newValue, ..}
instance Property "Model" ComponentBindingPropertiesValuePropertiesProperty where
  type PropertyType "Model" ComponentBindingPropertiesValuePropertiesProperty = Value Prelude.Text
  set newValue ComponentBindingPropertiesValuePropertiesProperty {..}
    = ComponentBindingPropertiesValuePropertiesProperty
        {model = Prelude.pure newValue, ..}
instance Property "Predicates" ComponentBindingPropertiesValuePropertiesProperty where
  type PropertyType "Predicates" ComponentBindingPropertiesValuePropertiesProperty = [PredicateProperty]
  set newValue ComponentBindingPropertiesValuePropertiesProperty {..}
    = ComponentBindingPropertiesValuePropertiesProperty
        {predicates = Prelude.pure newValue, ..}
instance Property "UserAttribute" ComponentBindingPropertiesValuePropertiesProperty where
  type PropertyType "UserAttribute" ComponentBindingPropertiesValuePropertiesProperty = Value Prelude.Text
  set newValue ComponentBindingPropertiesValuePropertiesProperty {..}
    = ComponentBindingPropertiesValuePropertiesProperty
        {userAttribute = Prelude.pure newValue, ..}