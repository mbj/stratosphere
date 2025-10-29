module Stratosphere.AmplifyUIBuilder.Component.ComponentDataConfigurationProperty (
        module Exports, ComponentDataConfigurationProperty(..),
        mkComponentDataConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.PredicateProperty as Exports
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.SortPropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentDataConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentdataconfiguration.html>
    ComponentDataConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentdataconfiguration.html#cfn-amplifyuibuilder-component-componentdataconfiguration-identifiers>
                                        identifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentdataconfiguration.html#cfn-amplifyuibuilder-component-componentdataconfiguration-model>
                                        model :: (Value Prelude.Text),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentdataconfiguration.html#cfn-amplifyuibuilder-component-componentdataconfiguration-predicate>
                                        predicate :: (Prelude.Maybe PredicateProperty),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-componentdataconfiguration.html#cfn-amplifyuibuilder-component-componentdataconfiguration-sort>
                                        sort :: (Prelude.Maybe [SortPropertyProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentDataConfigurationProperty ::
  Value Prelude.Text -> ComponentDataConfigurationProperty
mkComponentDataConfigurationProperty model
  = ComponentDataConfigurationProperty
      {model = model, identifiers = Prelude.Nothing,
       predicate = Prelude.Nothing, sort = Prelude.Nothing}
instance ToResourceProperties ComponentDataConfigurationProperty where
  toResourceProperties ComponentDataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.ComponentDataConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Model" JSON..= model]
                           (Prelude.catMaybes
                              [(JSON..=) "Identifiers" Prelude.<$> identifiers,
                               (JSON..=) "Predicate" Prelude.<$> predicate,
                               (JSON..=) "Sort" Prelude.<$> sort]))}
instance JSON.ToJSON ComponentDataConfigurationProperty where
  toJSON ComponentDataConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Model" JSON..= model]
              (Prelude.catMaybes
                 [(JSON..=) "Identifiers" Prelude.<$> identifiers,
                  (JSON..=) "Predicate" Prelude.<$> predicate,
                  (JSON..=) "Sort" Prelude.<$> sort])))
instance Property "Identifiers" ComponentDataConfigurationProperty where
  type PropertyType "Identifiers" ComponentDataConfigurationProperty = ValueList Prelude.Text
  set newValue ComponentDataConfigurationProperty {..}
    = ComponentDataConfigurationProperty
        {identifiers = Prelude.pure newValue, ..}
instance Property "Model" ComponentDataConfigurationProperty where
  type PropertyType "Model" ComponentDataConfigurationProperty = Value Prelude.Text
  set newValue ComponentDataConfigurationProperty {..}
    = ComponentDataConfigurationProperty {model = newValue, ..}
instance Property "Predicate" ComponentDataConfigurationProperty where
  type PropertyType "Predicate" ComponentDataConfigurationProperty = PredicateProperty
  set newValue ComponentDataConfigurationProperty {..}
    = ComponentDataConfigurationProperty
        {predicate = Prelude.pure newValue, ..}
instance Property "Sort" ComponentDataConfigurationProperty where
  type PropertyType "Sort" ComponentDataConfigurationProperty = [SortPropertyProperty]
  set newValue ComponentDataConfigurationProperty {..}
    = ComponentDataConfigurationProperty
        {sort = Prelude.pure newValue, ..}