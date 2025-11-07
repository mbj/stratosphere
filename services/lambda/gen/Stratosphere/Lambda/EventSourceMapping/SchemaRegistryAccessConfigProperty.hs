module Stratosphere.Lambda.EventSourceMapping.SchemaRegistryAccessConfigProperty (
        SchemaRegistryAccessConfigProperty(..),
        mkSchemaRegistryAccessConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaRegistryAccessConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-schemaregistryaccessconfig.html>
    SchemaRegistryAccessConfigProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-schemaregistryaccessconfig.html#cfn-lambda-eventsourcemapping-schemaregistryaccessconfig-type>
                                        type' :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-schemaregistryaccessconfig.html#cfn-lambda-eventsourcemapping-schemaregistryaccessconfig-uri>
                                        uRI :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaRegistryAccessConfigProperty ::
  SchemaRegistryAccessConfigProperty
mkSchemaRegistryAccessConfigProperty
  = SchemaRegistryAccessConfigProperty
      {haddock_workaround_ = (), type' = Prelude.Nothing,
       uRI = Prelude.Nothing}
instance ToResourceProperties SchemaRegistryAccessConfigProperty where
  toResourceProperties SchemaRegistryAccessConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.SchemaRegistryAccessConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "URI" Prelude.<$> uRI])}
instance JSON.ToJSON SchemaRegistryAccessConfigProperty where
  toJSON SchemaRegistryAccessConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "URI" Prelude.<$> uRI]))
instance Property "Type" SchemaRegistryAccessConfigProperty where
  type PropertyType "Type" SchemaRegistryAccessConfigProperty = Value Prelude.Text
  set newValue SchemaRegistryAccessConfigProperty {..}
    = SchemaRegistryAccessConfigProperty
        {type' = Prelude.pure newValue, ..}
instance Property "URI" SchemaRegistryAccessConfigProperty where
  type PropertyType "URI" SchemaRegistryAccessConfigProperty = Value Prelude.Text
  set newValue SchemaRegistryAccessConfigProperty {..}
    = SchemaRegistryAccessConfigProperty
        {uRI = Prelude.pure newValue, ..}