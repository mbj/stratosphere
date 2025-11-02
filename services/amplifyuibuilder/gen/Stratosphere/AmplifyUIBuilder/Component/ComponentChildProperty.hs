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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentchild.html>
    ComponentChildProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentchild.html#cfn-amplifyuibuilder-component-componentchild-children>
                            children :: (Prelude.Maybe [ComponentChildProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentchild.html#cfn-amplifyuibuilder-component-componentchild-componenttype>
                            componentType :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentchild.html#cfn-amplifyuibuilder-component-componentchild-events>
                            events :: (Prelude.Maybe (Prelude.Map Prelude.Text ComponentEventProperty)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentchild.html#cfn-amplifyuibuilder-component-componentchild-name>
                            name :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentchild.html#cfn-amplifyuibuilder-component-componentchild-properties>
                            properties :: (Prelude.Map Prelude.Text ComponentPropertyProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentchild.html#cfn-amplifyuibuilder-component-componentchild-sourceid>
                            sourceId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentChildProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Prelude.Map Prelude.Text ComponentPropertyProperty
        -> ComponentChildProperty
mkComponentChildProperty componentType name properties
  = ComponentChildProperty
      {haddock_workaround_ = (), componentType = componentType,
       name = name, properties = properties, children = Prelude.Nothing,
       events = Prelude.Nothing, sourceId = Prelude.Nothing}
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
                               (JSON..=) "Events" Prelude.<$> events,
                               (JSON..=) "SourceId" Prelude.<$> sourceId]))}
instance JSON.ToJSON ComponentChildProperty where
  toJSON ComponentChildProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComponentType" JSON..= componentType, "Name" JSON..= name,
               "Properties" JSON..= properties]
              (Prelude.catMaybes
                 [(JSON..=) "Children" Prelude.<$> children,
                  (JSON..=) "Events" Prelude.<$> events,
                  (JSON..=) "SourceId" Prelude.<$> sourceId])))
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
instance Property "SourceId" ComponentChildProperty where
  type PropertyType "SourceId" ComponentChildProperty = Value Prelude.Text
  set newValue ComponentChildProperty {..}
    = ComponentChildProperty {sourceId = Prelude.pure newValue, ..}