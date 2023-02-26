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
  = ComponentDataConfigurationProperty {identifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                        model :: (Value Prelude.Text),
                                        predicate :: (Prelude.Maybe PredicateProperty),
                                        sort :: (Prelude.Maybe [SortPropertyProperty])}
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