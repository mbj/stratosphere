module Stratosphere.Lambda.EventSourceMapping.SchemaRegistryConfigProperty (
        module Exports, SchemaRegistryConfigProperty(..),
        mkSchemaRegistryConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.SchemaRegistryAccessConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Lambda.EventSourceMapping.SchemaValidationConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaRegistryConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-schemaregistryconfig.html>
    SchemaRegistryConfigProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-schemaregistryconfig.html#cfn-lambda-eventsourcemapping-schemaregistryconfig-accessconfigs>
                                  accessConfigs :: (Prelude.Maybe [SchemaRegistryAccessConfigProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-schemaregistryconfig.html#cfn-lambda-eventsourcemapping-schemaregistryconfig-eventrecordformat>
                                  eventRecordFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-schemaregistryconfig.html#cfn-lambda-eventsourcemapping-schemaregistryconfig-schemaregistryuri>
                                  schemaRegistryURI :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-schemaregistryconfig.html#cfn-lambda-eventsourcemapping-schemaregistryconfig-schemavalidationconfigs>
                                  schemaValidationConfigs :: (Prelude.Maybe [SchemaValidationConfigProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaRegistryConfigProperty :: SchemaRegistryConfigProperty
mkSchemaRegistryConfigProperty
  = SchemaRegistryConfigProperty
      {haddock_workaround_ = (), accessConfigs = Prelude.Nothing,
       eventRecordFormat = Prelude.Nothing,
       schemaRegistryURI = Prelude.Nothing,
       schemaValidationConfigs = Prelude.Nothing}
instance ToResourceProperties SchemaRegistryConfigProperty where
  toResourceProperties SchemaRegistryConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.SchemaRegistryConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessConfigs" Prelude.<$> accessConfigs,
                            (JSON..=) "EventRecordFormat" Prelude.<$> eventRecordFormat,
                            (JSON..=) "SchemaRegistryURI" Prelude.<$> schemaRegistryURI,
                            (JSON..=) "SchemaValidationConfigs"
                              Prelude.<$> schemaValidationConfigs])}
instance JSON.ToJSON SchemaRegistryConfigProperty where
  toJSON SchemaRegistryConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessConfigs" Prelude.<$> accessConfigs,
               (JSON..=) "EventRecordFormat" Prelude.<$> eventRecordFormat,
               (JSON..=) "SchemaRegistryURI" Prelude.<$> schemaRegistryURI,
               (JSON..=) "SchemaValidationConfigs"
                 Prelude.<$> schemaValidationConfigs]))
instance Property "AccessConfigs" SchemaRegistryConfigProperty where
  type PropertyType "AccessConfigs" SchemaRegistryConfigProperty = [SchemaRegistryAccessConfigProperty]
  set newValue SchemaRegistryConfigProperty {..}
    = SchemaRegistryConfigProperty
        {accessConfigs = Prelude.pure newValue, ..}
instance Property "EventRecordFormat" SchemaRegistryConfigProperty where
  type PropertyType "EventRecordFormat" SchemaRegistryConfigProperty = Value Prelude.Text
  set newValue SchemaRegistryConfigProperty {..}
    = SchemaRegistryConfigProperty
        {eventRecordFormat = Prelude.pure newValue, ..}
instance Property "SchemaRegistryURI" SchemaRegistryConfigProperty where
  type PropertyType "SchemaRegistryURI" SchemaRegistryConfigProperty = Value Prelude.Text
  set newValue SchemaRegistryConfigProperty {..}
    = SchemaRegistryConfigProperty
        {schemaRegistryURI = Prelude.pure newValue, ..}
instance Property "SchemaValidationConfigs" SchemaRegistryConfigProperty where
  type PropertyType "SchemaValidationConfigs" SchemaRegistryConfigProperty = [SchemaValidationConfigProperty]
  set newValue SchemaRegistryConfigProperty {..}
    = SchemaRegistryConfigProperty
        {schemaValidationConfigs = Prelude.pure newValue, ..}