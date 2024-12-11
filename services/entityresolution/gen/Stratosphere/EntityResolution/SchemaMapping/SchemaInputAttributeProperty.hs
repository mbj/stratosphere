module Stratosphere.EntityResolution.SchemaMapping.SchemaInputAttributeProperty (
        SchemaInputAttributeProperty(..), mkSchemaInputAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaInputAttributeProperty
  = SchemaInputAttributeProperty {fieldName :: (Value Prelude.Text),
                                  groupName :: (Prelude.Maybe (Value Prelude.Text)),
                                  hashed :: (Prelude.Maybe (Value Prelude.Bool)),
                                  matchKey :: (Prelude.Maybe (Value Prelude.Text)),
                                  subType :: (Prelude.Maybe (Value Prelude.Text)),
                                  type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaInputAttributeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SchemaInputAttributeProperty
mkSchemaInputAttributeProperty fieldName type'
  = SchemaInputAttributeProperty
      {fieldName = fieldName, type' = type', groupName = Prelude.Nothing,
       hashed = Prelude.Nothing, matchKey = Prelude.Nothing,
       subType = Prelude.Nothing}
instance ToResourceProperties SchemaInputAttributeProperty where
  toResourceProperties SchemaInputAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::SchemaMapping.SchemaInputAttribute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldName" JSON..= fieldName, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "GroupName" Prelude.<$> groupName,
                               (JSON..=) "Hashed" Prelude.<$> hashed,
                               (JSON..=) "MatchKey" Prelude.<$> matchKey,
                               (JSON..=) "SubType" Prelude.<$> subType]))}
instance JSON.ToJSON SchemaInputAttributeProperty where
  toJSON SchemaInputAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldName" JSON..= fieldName, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "GroupName" Prelude.<$> groupName,
                  (JSON..=) "Hashed" Prelude.<$> hashed,
                  (JSON..=) "MatchKey" Prelude.<$> matchKey,
                  (JSON..=) "SubType" Prelude.<$> subType])))
instance Property "FieldName" SchemaInputAttributeProperty where
  type PropertyType "FieldName" SchemaInputAttributeProperty = Value Prelude.Text
  set newValue SchemaInputAttributeProperty {..}
    = SchemaInputAttributeProperty {fieldName = newValue, ..}
instance Property "GroupName" SchemaInputAttributeProperty where
  type PropertyType "GroupName" SchemaInputAttributeProperty = Value Prelude.Text
  set newValue SchemaInputAttributeProperty {..}
    = SchemaInputAttributeProperty
        {groupName = Prelude.pure newValue, ..}
instance Property "Hashed" SchemaInputAttributeProperty where
  type PropertyType "Hashed" SchemaInputAttributeProperty = Value Prelude.Bool
  set newValue SchemaInputAttributeProperty {..}
    = SchemaInputAttributeProperty {hashed = Prelude.pure newValue, ..}
instance Property "MatchKey" SchemaInputAttributeProperty where
  type PropertyType "MatchKey" SchemaInputAttributeProperty = Value Prelude.Text
  set newValue SchemaInputAttributeProperty {..}
    = SchemaInputAttributeProperty
        {matchKey = Prelude.pure newValue, ..}
instance Property "SubType" SchemaInputAttributeProperty where
  type PropertyType "SubType" SchemaInputAttributeProperty = Value Prelude.Text
  set newValue SchemaInputAttributeProperty {..}
    = SchemaInputAttributeProperty
        {subType = Prelude.pure newValue, ..}
instance Property "Type" SchemaInputAttributeProperty where
  type PropertyType "Type" SchemaInputAttributeProperty = Value Prelude.Text
  set newValue SchemaInputAttributeProperty {..}
    = SchemaInputAttributeProperty {type' = newValue, ..}