module Stratosphere.Lambda.EventSourceMapping.SchemaValidationConfigProperty (
        SchemaValidationConfigProperty(..),
        mkSchemaValidationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaValidationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-schemavalidationconfig.html>
    SchemaValidationConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-schemavalidationconfig.html#cfn-lambda-eventsourcemapping-schemavalidationconfig-attribute>
                                    attribute :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaValidationConfigProperty :: SchemaValidationConfigProperty
mkSchemaValidationConfigProperty
  = SchemaValidationConfigProperty
      {haddock_workaround_ = (), attribute = Prelude.Nothing}
instance ToResourceProperties SchemaValidationConfigProperty where
  toResourceProperties SchemaValidationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventSourceMapping.SchemaValidationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Attribute" Prelude.<$> attribute])}
instance JSON.ToJSON SchemaValidationConfigProperty where
  toJSON SchemaValidationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Attribute" Prelude.<$> attribute]))
instance Property "Attribute" SchemaValidationConfigProperty where
  type PropertyType "Attribute" SchemaValidationConfigProperty = Value Prelude.Text
  set newValue SchemaValidationConfigProperty {..}
    = SchemaValidationConfigProperty
        {attribute = Prelude.pure newValue, ..}