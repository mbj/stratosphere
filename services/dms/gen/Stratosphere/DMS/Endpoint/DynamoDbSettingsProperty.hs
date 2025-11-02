module Stratosphere.DMS.Endpoint.DynamoDbSettingsProperty (
        DynamoDbSettingsProperty(..), mkDynamoDbSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamoDbSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-dynamodbsettings.html>
    DynamoDbSettingsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-dynamodbsettings.html#cfn-dms-endpoint-dynamodbsettings-serviceaccessrolearn>
                              serviceAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamoDbSettingsProperty :: DynamoDbSettingsProperty
mkDynamoDbSettingsProperty
  = DynamoDbSettingsProperty
      {haddock_workaround_ = (), serviceAccessRoleArn = Prelude.Nothing}
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
  set newValue DynamoDbSettingsProperty {..}
    = DynamoDbSettingsProperty
        {serviceAccessRoleArn = Prelude.pure newValue, ..}