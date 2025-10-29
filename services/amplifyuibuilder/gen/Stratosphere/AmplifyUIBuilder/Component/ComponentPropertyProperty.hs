module Stratosphere.AmplifyUIBuilder.Component.ComponentPropertyProperty (
        module Exports, ComponentPropertyProperty(..),
        mkComponentPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentConditionPropertyProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentPropertyBindingPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.FormBindingElementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentPropertyProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html>
    ComponentPropertyProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-bindingproperties>
                               bindingProperties :: (Prelude.Maybe ComponentPropertyBindingPropertiesProperty),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-bindings>
                               bindings :: (Prelude.Maybe (Prelude.Map Prelude.Text FormBindingElementProperty)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-collectionbindingproperties>
                               collectionBindingProperties :: (Prelude.Maybe ComponentPropertyBindingPropertiesProperty),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-componentname>
                               componentName :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-concat>
                               concat :: (Prelude.Maybe [ComponentPropertyProperty]),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-condition>
                               condition :: (Prelude.Maybe ComponentConditionPropertyProperty),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-configured>
                               configured :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-defaultvalue>
                               defaultValue :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-event>
                               event :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-importedvalue>
                               importedValue :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-model>
                               model :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-property>
                               property :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-type>
                               type' :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-userattribute>
                               userAttribute :: (Prelude.Maybe (Value Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentproperty.html#cfn-amplifyuibuilder-component-componentproperty-value>
                               value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentPropertyProperty :: ComponentPropertyProperty
mkComponentPropertyProperty
  = ComponentPropertyProperty
      {bindingProperties = Prelude.Nothing, bindings = Prelude.Nothing,
       collectionBindingProperties = Prelude.Nothing,
       componentName = Prelude.Nothing, concat = Prelude.Nothing,
       condition = Prelude.Nothing, configured = Prelude.Nothing,
       defaultValue = Prelude.Nothing, event = Prelude.Nothing,
       importedValue = Prelude.Nothing, model = Prelude.Nothing,
       property = Prelude.Nothing, type' = Prelude.Nothing,
       userAttribute = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties ComponentPropertyProperty where
  toResourceProperties ComponentPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.ComponentProperty",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BindingProperties" Prelude.<$> bindingProperties,
                            (JSON..=) "Bindings" Prelude.<$> bindings,
                            (JSON..=) "CollectionBindingProperties"
                              Prelude.<$> collectionBindingProperties,
                            (JSON..=) "ComponentName" Prelude.<$> componentName,
                            (JSON..=) "Concat" Prelude.<$> concat,
                            (JSON..=) "Condition" Prelude.<$> condition,
                            (JSON..=) "Configured" Prelude.<$> configured,
                            (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                            (JSON..=) "Event" Prelude.<$> event,
                            (JSON..=) "ImportedValue" Prelude.<$> importedValue,
                            (JSON..=) "Model" Prelude.<$> model,
                            (JSON..=) "Property" Prelude.<$> property,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "UserAttribute" Prelude.<$> userAttribute,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ComponentPropertyProperty where
  toJSON ComponentPropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BindingProperties" Prelude.<$> bindingProperties,
               (JSON..=) "Bindings" Prelude.<$> bindings,
               (JSON..=) "CollectionBindingProperties"
                 Prelude.<$> collectionBindingProperties,
               (JSON..=) "ComponentName" Prelude.<$> componentName,
               (JSON..=) "Concat" Prelude.<$> concat,
               (JSON..=) "Condition" Prelude.<$> condition,
               (JSON..=) "Configured" Prelude.<$> configured,
               (JSON..=) "DefaultValue" Prelude.<$> defaultValue,
               (JSON..=) "Event" Prelude.<$> event,
               (JSON..=) "ImportedValue" Prelude.<$> importedValue,
               (JSON..=) "Model" Prelude.<$> model,
               (JSON..=) "Property" Prelude.<$> property,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "UserAttribute" Prelude.<$> userAttribute,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "BindingProperties" ComponentPropertyProperty where
  type PropertyType "BindingProperties" ComponentPropertyProperty = ComponentPropertyBindingPropertiesProperty
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty
        {bindingProperties = Prelude.pure newValue, ..}
instance Property "Bindings" ComponentPropertyProperty where
  type PropertyType "Bindings" ComponentPropertyProperty = Prelude.Map Prelude.Text FormBindingElementProperty
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty {bindings = Prelude.pure newValue, ..}
instance Property "CollectionBindingProperties" ComponentPropertyProperty where
  type PropertyType "CollectionBindingProperties" ComponentPropertyProperty = ComponentPropertyBindingPropertiesProperty
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty
        {collectionBindingProperties = Prelude.pure newValue, ..}
instance Property "ComponentName" ComponentPropertyProperty where
  type PropertyType "ComponentName" ComponentPropertyProperty = Value Prelude.Text
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty
        {componentName = Prelude.pure newValue, ..}
instance Property "Concat" ComponentPropertyProperty where
  type PropertyType "Concat" ComponentPropertyProperty = [ComponentPropertyProperty]
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty {concat = Prelude.pure newValue, ..}
instance Property "Condition" ComponentPropertyProperty where
  type PropertyType "Condition" ComponentPropertyProperty = ComponentConditionPropertyProperty
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty {condition = Prelude.pure newValue, ..}
instance Property "Configured" ComponentPropertyProperty where
  type PropertyType "Configured" ComponentPropertyProperty = Value Prelude.Bool
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty
        {configured = Prelude.pure newValue, ..}
instance Property "DefaultValue" ComponentPropertyProperty where
  type PropertyType "DefaultValue" ComponentPropertyProperty = Value Prelude.Text
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty
        {defaultValue = Prelude.pure newValue, ..}
instance Property "Event" ComponentPropertyProperty where
  type PropertyType "Event" ComponentPropertyProperty = Value Prelude.Text
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty {event = Prelude.pure newValue, ..}
instance Property "ImportedValue" ComponentPropertyProperty where
  type PropertyType "ImportedValue" ComponentPropertyProperty = Value Prelude.Text
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty
        {importedValue = Prelude.pure newValue, ..}
instance Property "Model" ComponentPropertyProperty where
  type PropertyType "Model" ComponentPropertyProperty = Value Prelude.Text
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty {model = Prelude.pure newValue, ..}
instance Property "Property" ComponentPropertyProperty where
  type PropertyType "Property" ComponentPropertyProperty = Value Prelude.Text
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty {property = Prelude.pure newValue, ..}
instance Property "Type" ComponentPropertyProperty where
  type PropertyType "Type" ComponentPropertyProperty = Value Prelude.Text
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty {type' = Prelude.pure newValue, ..}
instance Property "UserAttribute" ComponentPropertyProperty where
  type PropertyType "UserAttribute" ComponentPropertyProperty = Value Prelude.Text
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty
        {userAttribute = Prelude.pure newValue, ..}
instance Property "Value" ComponentPropertyProperty where
  type PropertyType "Value" ComponentPropertyProperty = Value Prelude.Text
  set newValue ComponentPropertyProperty {..}
    = ComponentPropertyProperty {value = Prelude.pure newValue, ..}