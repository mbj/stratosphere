module Stratosphere.EntityResolution.SchemaMapping (
        module Exports, SchemaMapping(..), mkSchemaMapping
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.SchemaMapping.SchemaInputAttributeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SchemaMapping
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-schemamapping.html>
    SchemaMapping {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-schemamapping.html#cfn-entityresolution-schemamapping-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-schemamapping.html#cfn-entityresolution-schemamapping-mappedinputfields>
                   mappedInputFields :: [SchemaInputAttributeProperty],
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-schemamapping.html#cfn-entityresolution-schemamapping-schemaname>
                   schemaName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-schemamapping.html#cfn-entityresolution-schemamapping-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaMapping ::
  [SchemaInputAttributeProperty]
  -> Value Prelude.Text -> SchemaMapping
mkSchemaMapping mappedInputFields schemaName
  = SchemaMapping
      {haddock_workaround_ = (), mappedInputFields = mappedInputFields,
       schemaName = schemaName, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties SchemaMapping where
  toResourceProperties SchemaMapping {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::SchemaMapping",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MappedInputFields" JSON..= mappedInputFields,
                            "SchemaName" JSON..= schemaName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SchemaMapping where
  toJSON SchemaMapping {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MappedInputFields" JSON..= mappedInputFields,
               "SchemaName" JSON..= schemaName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" SchemaMapping where
  type PropertyType "Description" SchemaMapping = Value Prelude.Text
  set newValue SchemaMapping {..}
    = SchemaMapping {description = Prelude.pure newValue, ..}
instance Property "MappedInputFields" SchemaMapping where
  type PropertyType "MappedInputFields" SchemaMapping = [SchemaInputAttributeProperty]
  set newValue SchemaMapping {..}
    = SchemaMapping {mappedInputFields = newValue, ..}
instance Property "SchemaName" SchemaMapping where
  type PropertyType "SchemaName" SchemaMapping = Value Prelude.Text
  set newValue SchemaMapping {..}
    = SchemaMapping {schemaName = newValue, ..}
instance Property "Tags" SchemaMapping where
  type PropertyType "Tags" SchemaMapping = [Tag]
  set newValue SchemaMapping {..}
    = SchemaMapping {tags = Prelude.pure newValue, ..}