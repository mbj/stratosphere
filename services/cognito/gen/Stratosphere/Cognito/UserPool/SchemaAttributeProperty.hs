module Stratosphere.Cognito.UserPool.SchemaAttributeProperty (
        module Exports, SchemaAttributeProperty(..),
        mkSchemaAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.NumberAttributeConstraintsProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.StringAttributeConstraintsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaAttributeProperty
  = SchemaAttributeProperty {attributeDataType :: (Prelude.Maybe (Value Prelude.Text)),
                             developerOnlyAttribute :: (Prelude.Maybe (Value Prelude.Bool)),
                             mutable :: (Prelude.Maybe (Value Prelude.Bool)),
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             numberAttributeConstraints :: (Prelude.Maybe NumberAttributeConstraintsProperty),
                             required :: (Prelude.Maybe (Value Prelude.Bool)),
                             stringAttributeConstraints :: (Prelude.Maybe StringAttributeConstraintsProperty)}
mkSchemaAttributeProperty :: SchemaAttributeProperty
mkSchemaAttributeProperty
  = SchemaAttributeProperty
      {attributeDataType = Prelude.Nothing,
       developerOnlyAttribute = Prelude.Nothing,
       mutable = Prelude.Nothing, name = Prelude.Nothing,
       numberAttributeConstraints = Prelude.Nothing,
       required = Prelude.Nothing,
       stringAttributeConstraints = Prelude.Nothing}
instance ToResourceProperties SchemaAttributeProperty where
  toResourceProperties SchemaAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.SchemaAttribute",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttributeDataType" Prelude.<$> attributeDataType,
                            (JSON..=) "DeveloperOnlyAttribute"
                              Prelude.<$> developerOnlyAttribute,
                            (JSON..=) "Mutable" Prelude.<$> mutable,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "NumberAttributeConstraints"
                              Prelude.<$> numberAttributeConstraints,
                            (JSON..=) "Required" Prelude.<$> required,
                            (JSON..=) "StringAttributeConstraints"
                              Prelude.<$> stringAttributeConstraints])}
instance JSON.ToJSON SchemaAttributeProperty where
  toJSON SchemaAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttributeDataType" Prelude.<$> attributeDataType,
               (JSON..=) "DeveloperOnlyAttribute"
                 Prelude.<$> developerOnlyAttribute,
               (JSON..=) "Mutable" Prelude.<$> mutable,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "NumberAttributeConstraints"
                 Prelude.<$> numberAttributeConstraints,
               (JSON..=) "Required" Prelude.<$> required,
               (JSON..=) "StringAttributeConstraints"
                 Prelude.<$> stringAttributeConstraints]))
instance Property "AttributeDataType" SchemaAttributeProperty where
  type PropertyType "AttributeDataType" SchemaAttributeProperty = Value Prelude.Text
  set newValue SchemaAttributeProperty {..}
    = SchemaAttributeProperty
        {attributeDataType = Prelude.pure newValue, ..}
instance Property "DeveloperOnlyAttribute" SchemaAttributeProperty where
  type PropertyType "DeveloperOnlyAttribute" SchemaAttributeProperty = Value Prelude.Bool
  set newValue SchemaAttributeProperty {..}
    = SchemaAttributeProperty
        {developerOnlyAttribute = Prelude.pure newValue, ..}
instance Property "Mutable" SchemaAttributeProperty where
  type PropertyType "Mutable" SchemaAttributeProperty = Value Prelude.Bool
  set newValue SchemaAttributeProperty {..}
    = SchemaAttributeProperty {mutable = Prelude.pure newValue, ..}
instance Property "Name" SchemaAttributeProperty where
  type PropertyType "Name" SchemaAttributeProperty = Value Prelude.Text
  set newValue SchemaAttributeProperty {..}
    = SchemaAttributeProperty {name = Prelude.pure newValue, ..}
instance Property "NumberAttributeConstraints" SchemaAttributeProperty where
  type PropertyType "NumberAttributeConstraints" SchemaAttributeProperty = NumberAttributeConstraintsProperty
  set newValue SchemaAttributeProperty {..}
    = SchemaAttributeProperty
        {numberAttributeConstraints = Prelude.pure newValue, ..}
instance Property "Required" SchemaAttributeProperty where
  type PropertyType "Required" SchemaAttributeProperty = Value Prelude.Bool
  set newValue SchemaAttributeProperty {..}
    = SchemaAttributeProperty {required = Prelude.pure newValue, ..}
instance Property "StringAttributeConstraints" SchemaAttributeProperty where
  type PropertyType "StringAttributeConstraints" SchemaAttributeProperty = StringAttributeConstraintsProperty
  set newValue SchemaAttributeProperty {..}
    = SchemaAttributeProperty
        {stringAttributeConstraints = Prelude.pure newValue, ..}