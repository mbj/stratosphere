module Stratosphere.QuickSight.Topic.NamedEntityDefinitionProperty (
        module Exports, NamedEntityDefinitionProperty(..),
        mkNamedEntityDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.NamedEntityDefinitionMetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NamedEntityDefinitionProperty
  = NamedEntityDefinitionProperty {fieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                   metric :: (Prelude.Maybe NamedEntityDefinitionMetricProperty),
                                   propertyName :: (Prelude.Maybe (Value Prelude.Text)),
                                   propertyRole :: (Prelude.Maybe (Value Prelude.Text)),
                                   propertyUsage :: (Prelude.Maybe (Value Prelude.Text))}
mkNamedEntityDefinitionProperty :: NamedEntityDefinitionProperty
mkNamedEntityDefinitionProperty
  = NamedEntityDefinitionProperty
      {fieldName = Prelude.Nothing, metric = Prelude.Nothing,
       propertyName = Prelude.Nothing, propertyRole = Prelude.Nothing,
       propertyUsage = Prelude.Nothing}
instance ToResourceProperties NamedEntityDefinitionProperty where
  toResourceProperties NamedEntityDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.NamedEntityDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldName" Prelude.<$> fieldName,
                            (JSON..=) "Metric" Prelude.<$> metric,
                            (JSON..=) "PropertyName" Prelude.<$> propertyName,
                            (JSON..=) "PropertyRole" Prelude.<$> propertyRole,
                            (JSON..=) "PropertyUsage" Prelude.<$> propertyUsage])}
instance JSON.ToJSON NamedEntityDefinitionProperty where
  toJSON NamedEntityDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldName" Prelude.<$> fieldName,
               (JSON..=) "Metric" Prelude.<$> metric,
               (JSON..=) "PropertyName" Prelude.<$> propertyName,
               (JSON..=) "PropertyRole" Prelude.<$> propertyRole,
               (JSON..=) "PropertyUsage" Prelude.<$> propertyUsage]))
instance Property "FieldName" NamedEntityDefinitionProperty where
  type PropertyType "FieldName" NamedEntityDefinitionProperty = Value Prelude.Text
  set newValue NamedEntityDefinitionProperty {..}
    = NamedEntityDefinitionProperty
        {fieldName = Prelude.pure newValue, ..}
instance Property "Metric" NamedEntityDefinitionProperty where
  type PropertyType "Metric" NamedEntityDefinitionProperty = NamedEntityDefinitionMetricProperty
  set newValue NamedEntityDefinitionProperty {..}
    = NamedEntityDefinitionProperty
        {metric = Prelude.pure newValue, ..}
instance Property "PropertyName" NamedEntityDefinitionProperty where
  type PropertyType "PropertyName" NamedEntityDefinitionProperty = Value Prelude.Text
  set newValue NamedEntityDefinitionProperty {..}
    = NamedEntityDefinitionProperty
        {propertyName = Prelude.pure newValue, ..}
instance Property "PropertyRole" NamedEntityDefinitionProperty where
  type PropertyType "PropertyRole" NamedEntityDefinitionProperty = Value Prelude.Text
  set newValue NamedEntityDefinitionProperty {..}
    = NamedEntityDefinitionProperty
        {propertyRole = Prelude.pure newValue, ..}
instance Property "PropertyUsage" NamedEntityDefinitionProperty where
  type PropertyType "PropertyUsage" NamedEntityDefinitionProperty = Value Prelude.Text
  set newValue NamedEntityDefinitionProperty {..}
    = NamedEntityDefinitionProperty
        {propertyUsage = Prelude.pure newValue, ..}