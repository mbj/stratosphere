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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html>
    SchemaAttributeProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-attributedatatype>
                             attributeDataType :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-developeronlyattribute>
                             developerOnlyAttribute :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-mutable>
                             mutable :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-name>
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-numberattributeconstraints>
                             numberAttributeConstraints :: (Prelude.Maybe NumberAttributeConstraintsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-required>
                             required :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-schemaattribute.html#cfn-cognito-userpool-schemaattribute-stringattributeconstraints>
                             stringAttributeConstraints :: (Prelude.Maybe StringAttributeConstraintsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaAttributeProperty :: SchemaAttributeProperty
mkSchemaAttributeProperty
  = SchemaAttributeProperty
      {haddock_workaround_ = (), attributeDataType = Prelude.Nothing,
       developerOnlyAttribute = Prelude.Nothing,
       mutable = Prelude.Nothing, name = Prelude.Nothing,
       numberAttributeConstraints = Prelude.Nothing,
       required = Prelude.Nothing,
       stringAttributeConstraints = Prelude.Nothing}
instance ToResourceProperties SchemaAttributeProperty where
  toResourceProperties SchemaAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.SchemaAttribute",
         supportsTags = Prelude.False,
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