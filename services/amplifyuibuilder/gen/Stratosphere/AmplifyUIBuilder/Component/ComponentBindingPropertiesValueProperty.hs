module Stratosphere.AmplifyUIBuilder.Component.ComponentBindingPropertiesValueProperty (
        module Exports, ComponentBindingPropertiesValueProperty(..),
        mkComponentBindingPropertiesValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentBindingPropertiesValuePropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentBindingPropertiesValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentbindingpropertiesvalue.html>
    ComponentBindingPropertiesValueProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentbindingpropertiesvalue.html#cfn-amplifyuibuilder-component-componentbindingpropertiesvalue-bindingproperties>
                                             bindingProperties :: (Prelude.Maybe ComponentBindingPropertiesValuePropertiesProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentbindingpropertiesvalue.html#cfn-amplifyuibuilder-component-componentbindingpropertiesvalue-defaultvalue>
                                             defaultValue :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentbindingpropertiesvalue.html#cfn-amplifyuibuilder-component-componentbindingpropertiesvalue-type>
                                             type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentBindingPropertiesValueProperty ::
  ComponentBindingPropertiesValueProperty
mkComponentBindingPropertiesValueProperty
  = ComponentBindingPropertiesValueProperty
      {haddock_workaround_ = (), bindingProperties = Prelude.Nothing,
       defaultValue = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties ComponentBindingPropertiesValueProperty where
  toResourceProperties ComponentBindingPropertiesValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.ComponentBindingPropertiesValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BindingProperties" Prelude.<$> bindingProperties,
                            (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON ComponentBindingPropertiesValueProperty where
  toJSON ComponentBindingPropertiesValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BindingProperties" Prelude.<$> bindingProperties,
               (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "BindingProperties" ComponentBindingPropertiesValueProperty where
  type PropertyType "BindingProperties" ComponentBindingPropertiesValueProperty = ComponentBindingPropertiesValuePropertiesProperty
  set newValue ComponentBindingPropertiesValueProperty {..}
    = ComponentBindingPropertiesValueProperty
        {bindingProperties = Prelude.pure newValue, ..}
instance Property "DefaultValue" ComponentBindingPropertiesValueProperty where
  type PropertyType "DefaultValue" ComponentBindingPropertiesValueProperty = Value Prelude.Text
  set newValue ComponentBindingPropertiesValueProperty {..}
    = ComponentBindingPropertiesValueProperty
        {defaultValue = Prelude.pure newValue, ..}
instance Property "Type" ComponentBindingPropertiesValueProperty where
  type PropertyType "Type" ComponentBindingPropertiesValueProperty = Value Prelude.Text
  set newValue ComponentBindingPropertiesValueProperty {..}
    = ComponentBindingPropertiesValueProperty
        {type' = Prelude.pure newValue, ..}