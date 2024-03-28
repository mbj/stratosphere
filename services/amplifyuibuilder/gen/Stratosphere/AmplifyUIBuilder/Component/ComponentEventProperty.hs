module Stratosphere.AmplifyUIBuilder.Component.ComponentEventProperty (
        module Exports, ComponentEventProperty(..),
        mkComponentEventProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ActionParametersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentEventProperty
  = ComponentEventProperty {action :: (Prelude.Maybe (Value Prelude.Text)),
                            bindingEvent :: (Prelude.Maybe (Value Prelude.Text)),
                            parameters :: (Prelude.Maybe ActionParametersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentEventProperty :: ComponentEventProperty
mkComponentEventProperty
  = ComponentEventProperty
      {action = Prelude.Nothing, bindingEvent = Prelude.Nothing,
       parameters = Prelude.Nothing}
instance ToResourceProperties ComponentEventProperty where
  toResourceProperties ComponentEventProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.ComponentEvent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Action" Prelude.<$> action,
                            (JSON..=) "BindingEvent" Prelude.<$> bindingEvent,
                            (JSON..=) "Parameters" Prelude.<$> parameters])}
instance JSON.ToJSON ComponentEventProperty where
  toJSON ComponentEventProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Action" Prelude.<$> action,
               (JSON..=) "BindingEvent" Prelude.<$> bindingEvent,
               (JSON..=) "Parameters" Prelude.<$> parameters]))
instance Property "Action" ComponentEventProperty where
  type PropertyType "Action" ComponentEventProperty = Value Prelude.Text
  set newValue ComponentEventProperty {..}
    = ComponentEventProperty {action = Prelude.pure newValue, ..}
instance Property "BindingEvent" ComponentEventProperty where
  type PropertyType "BindingEvent" ComponentEventProperty = Value Prelude.Text
  set newValue ComponentEventProperty {..}
    = ComponentEventProperty {bindingEvent = Prelude.pure newValue, ..}
instance Property "Parameters" ComponentEventProperty where
  type PropertyType "Parameters" ComponentEventProperty = ActionParametersProperty
  set newValue ComponentEventProperty {..}
    = ComponentEventProperty {parameters = Prelude.pure newValue, ..}