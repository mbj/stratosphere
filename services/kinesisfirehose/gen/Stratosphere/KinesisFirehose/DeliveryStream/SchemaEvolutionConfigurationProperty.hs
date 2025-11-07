module Stratosphere.KinesisFirehose.DeliveryStream.SchemaEvolutionConfigurationProperty (
        SchemaEvolutionConfigurationProperty(..),
        mkSchemaEvolutionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaEvolutionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaevolutionconfiguration.html>
    SchemaEvolutionConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaevolutionconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaevolutionconfiguration-enabled>
                                          enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaEvolutionConfigurationProperty ::
  SchemaEvolutionConfigurationProperty
mkSchemaEvolutionConfigurationProperty
  = SchemaEvolutionConfigurationProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties SchemaEvolutionConfigurationProperty where
  toResourceProperties SchemaEvolutionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SchemaEvolutionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON SchemaEvolutionConfigurationProperty where
  toJSON SchemaEvolutionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" SchemaEvolutionConfigurationProperty where
  type PropertyType "Enabled" SchemaEvolutionConfigurationProperty = Value Prelude.Bool
  set newValue SchemaEvolutionConfigurationProperty {..}
    = SchemaEvolutionConfigurationProperty
        {enabled = Prelude.pure newValue, ..}