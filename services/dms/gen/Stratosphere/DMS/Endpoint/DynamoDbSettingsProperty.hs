module Stratosphere.DMS.Endpoint.DynamoDbSettingsProperty (
        DynamoDbSettingsProperty(..), mkDynamoDbSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamoDbSettingsProperty
  = DynamoDbSettingsProperty {serviceAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
mkDynamoDbSettingsProperty :: DynamoDbSettingsProperty
mkDynamoDbSettingsProperty
  = DynamoDbSettingsProperty {serviceAccessRoleArn = Prelude.Nothing}
instance ToResourceProperties DynamoDbSettingsProperty where
  toResourceProperties DynamoDbSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.DynamoDbSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ServiceAccessRoleArn"
                              Prelude.<$> serviceAccessRoleArn])}
instance JSON.ToJSON DynamoDbSettingsProperty where
  toJSON DynamoDbSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ServiceAccessRoleArn"
                 Prelude.<$> serviceAccessRoleArn]))
instance Property "ServiceAccessRoleArn" DynamoDbSettingsProperty where
  type PropertyType "ServiceAccessRoleArn" DynamoDbSettingsProperty = Value Prelude.Text
  set newValue DynamoDbSettingsProperty {}
    = DynamoDbSettingsProperty
        {serviceAccessRoleArn = Prelude.pure newValue, ..}