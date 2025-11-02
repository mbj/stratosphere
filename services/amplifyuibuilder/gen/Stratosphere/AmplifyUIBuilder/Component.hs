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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html>
    Component {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-appid>
               appId :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-bindingproperties>
               bindingProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text ComponentBindingPropertiesValueProperty)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-children>
               children :: (Prelude.Maybe [ComponentChildProperty]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-collectionproperties>
               collectionProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text ComponentDataConfigurationProperty)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-componenttype>
               componentType :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-environmentname>
               environmentName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-events>
               events :: (Prelude.Maybe (Prelude.Map Prelude.Text ComponentEventProperty)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-name>
               name :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-overrides>
               overrides :: (Prelude.Maybe JSON.Object),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-properties>
               properties :: (Prelude.Maybe (Prelude.Map Prelude.Text ComponentPropertyProperty)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-schemaversion>
               schemaVersion :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-sourceid>
               sourceId :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-tags>
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amplifyuibuilder-component.html#cfn-amplifyuibuilder-component-variants>
               variants :: (Prelude.Maybe [ComponentVariantProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponent :: Component
mkComponent
  = Component
      {haddock_workaround_ = (), appId = Prelude.Nothing,
       bindingProperties = Prelude.Nothing, children = Prelude.Nothing,
       collectionProperties = Prelude.Nothing,
       componentType = Prelude.Nothing, environmentName = Prelude.Nothing,
       events = Prelude.Nothing, name = Prelude.Nothing,
       overrides = Prelude.Nothing, properties = Prelude.Nothing,
       schemaVersion = Prelude.Nothing, sourceId = Prelude.Nothing,
       tags = Prelude.Nothing, variants = Prelude.Nothing}
instance ToResourceProperties Component where
  toResourceProperties Component {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppId" Prelude.<$> appId,
                            (JSON..=) "BindingProperties" Prelude.<$> bindingProperties,
                            (JSON..=) "Children" Prelude.<$> children,
                            (JSON..=) "CollectionProperties" Prelude.<$> collectionProperties,
                            (JSON..=) "ComponentType" Prelude.<$> componentType,
                            (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
                            (JSON..=) "Events" Prelude.<$> events,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Overrides" Prelude.<$> overrides,
                            (JSON..=) "Properties" Prelude.<$> properties,
                            (JSON..=) "SchemaVersion" Prelude.<$> schemaVersion,
                            (JSON..=) "SourceId" Prelude.<$> sourceId,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Variants" Prelude.<$> variants])}
instance JSON.ToJSON Component where
  toJSON Component {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppId" Prelude.<$> appId,
               (JSON..=) "BindingProperties" Prelude.<$> bindingProperties,
               (JSON..=) "Children" Prelude.<$> children,
               (JSON..=) "CollectionProperties" Prelude.<$> collectionProperties,
               (JSON..=) "ComponentType" Prelude.<$> componentType,
               (JSON..=) "EnvironmentName" Prelude.<$> environmentName,
               (JSON..=) "Events" Prelude.<$> events,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Overrides" Prelude.<$> overrides,
               (JSON..=) "Properties" Prelude.<$> properties,
               (JSON..=) "SchemaVersion" Prelude.<$> schemaVersion,
               (JSON..=) "SourceId" Prelude.<$> sourceId,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Variants" Prelude.<$> variants]))
instance Property "AppId" Component where
  type PropertyType "AppId" Component = Value Prelude.Text
  set newValue Component {..}
    = Component {appId = Prelude.pure newValue, ..}
instance Property "BindingProperties" Component where
  type PropertyType "BindingProperties" Component = Prelude.Map Prelude.Text ComponentBindingPropertiesValueProperty
  set newValue Component {..}
    = Component {bindingProperties = Prelude.pure newValue, ..}
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
    = Component {componentType = Prelude.pure newValue, ..}
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
  set newValue Component {..}
    = Component {name = Prelude.pure newValue, ..}
instance Property "Overrides" Component where
  type PropertyType "Overrides" Component = JSON.Object
  set newValue Component {..}
    = Component {overrides = Prelude.pure newValue, ..}
instance Property "Properties" Component where
  type PropertyType "Properties" Component = Prelude.Map Prelude.Text ComponentPropertyProperty
  set newValue Component {..}
    = Component {properties = Prelude.pure newValue, ..}
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
  set newValue Component {..}
    = Component {variants = Prelude.pure newValue, ..}