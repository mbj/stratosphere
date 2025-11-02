module Stratosphere.Glue.Partition.SchemaReferenceProperty (
        module Exports, SchemaReferenceProperty(..),
        mkSchemaReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Partition.SchemaIdProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-schemareference.html>
    SchemaReferenceProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-schemareference.html#cfn-glue-partition-schemareference-schemaid>
                             schemaId :: (Prelude.Maybe SchemaIdProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-schemareference.html#cfn-glue-partition-schemareference-schemaversionid>
                             schemaVersionId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-schemareference.html#cfn-glue-partition-schemareference-schemaversionnumber>
                             schemaVersionNumber :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaReferenceProperty :: SchemaReferenceProperty
mkSchemaReferenceProperty
  = SchemaReferenceProperty
      {haddock_workaround_ = (), schemaId = Prelude.Nothing,
       schemaVersionId = Prelude.Nothing,
       schemaVersionNumber = Prelude.Nothing}
instance ToResourceProperties SchemaReferenceProperty where
  toResourceProperties SchemaReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Partition.SchemaReference",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SchemaId" Prelude.<$> schemaId,
                            (JSON..=) "SchemaVersionId" Prelude.<$> schemaVersionId,
                            (JSON..=) "SchemaVersionNumber" Prelude.<$> schemaVersionNumber])}
instance JSON.ToJSON SchemaReferenceProperty where
  toJSON SchemaReferenceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SchemaId" Prelude.<$> schemaId,
               (JSON..=) "SchemaVersionId" Prelude.<$> schemaVersionId,
               (JSON..=) "SchemaVersionNumber" Prelude.<$> schemaVersionNumber]))
instance Property "SchemaId" SchemaReferenceProperty where
  type PropertyType "SchemaId" SchemaReferenceProperty = SchemaIdProperty
  set newValue SchemaReferenceProperty {..}
    = SchemaReferenceProperty {schemaId = Prelude.pure newValue, ..}
instance Property "SchemaVersionId" SchemaReferenceProperty where
  type PropertyType "SchemaVersionId" SchemaReferenceProperty = Value Prelude.Text
  set newValue SchemaReferenceProperty {..}
    = SchemaReferenceProperty
        {schemaVersionId = Prelude.pure newValue, ..}
instance Property "SchemaVersionNumber" SchemaReferenceProperty where
  type PropertyType "SchemaVersionNumber" SchemaReferenceProperty = Value Prelude.Integer
  set newValue SchemaReferenceProperty {..}
    = SchemaReferenceProperty
        {schemaVersionNumber = Prelude.pure newValue, ..}