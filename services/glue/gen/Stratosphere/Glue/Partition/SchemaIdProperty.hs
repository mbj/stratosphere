module Stratosphere.Glue.Partition.SchemaIdProperty (
        SchemaIdProperty(..), mkSchemaIdProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaIdProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-schemaid.html>
    SchemaIdProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-schemaid.html#cfn-glue-partition-schemaid-registryname>
                      registryName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-schemaid.html#cfn-glue-partition-schemaid-schemaarn>
                      schemaArn :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-schemaid.html#cfn-glue-partition-schemaid-schemaname>
                      schemaName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaIdProperty :: SchemaIdProperty
mkSchemaIdProperty
  = SchemaIdProperty
      {haddock_workaround_ = (), registryName = Prelude.Nothing,
       schemaArn = Prelude.Nothing, schemaName = Prelude.Nothing}
instance ToResourceProperties SchemaIdProperty where
  toResourceProperties SchemaIdProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Partition.SchemaId",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RegistryName" Prelude.<$> registryName,
                            (JSON..=) "SchemaArn" Prelude.<$> schemaArn,
                            (JSON..=) "SchemaName" Prelude.<$> schemaName])}
instance JSON.ToJSON SchemaIdProperty where
  toJSON SchemaIdProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RegistryName" Prelude.<$> registryName,
               (JSON..=) "SchemaArn" Prelude.<$> schemaArn,
               (JSON..=) "SchemaName" Prelude.<$> schemaName]))
instance Property "RegistryName" SchemaIdProperty where
  type PropertyType "RegistryName" SchemaIdProperty = Value Prelude.Text
  set newValue SchemaIdProperty {..}
    = SchemaIdProperty {registryName = Prelude.pure newValue, ..}
instance Property "SchemaArn" SchemaIdProperty where
  type PropertyType "SchemaArn" SchemaIdProperty = Value Prelude.Text
  set newValue SchemaIdProperty {..}
    = SchemaIdProperty {schemaArn = Prelude.pure newValue, ..}
instance Property "SchemaName" SchemaIdProperty where
  type PropertyType "SchemaName" SchemaIdProperty = Value Prelude.Text
  set newValue SchemaIdProperty {..}
    = SchemaIdProperty {schemaName = Prelude.pure newValue, ..}