module Stratosphere.KinesisFirehose.DeliveryStream.DatabaseSourceAuthenticationConfigurationProperty (
        module Exports,
        DatabaseSourceAuthenticationConfigurationProperty(..),
        mkDatabaseSourceAuthenticationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SecretsManagerConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DatabaseSourceAuthenticationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasesourceauthenticationconfiguration.html>
    DatabaseSourceAuthenticationConfigurationProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasesourceauthenticationconfiguration.html#cfn-kinesisfirehose-deliverystream-databasesourceauthenticationconfiguration-secretsmanagerconfiguration>
                                                       secretsManagerConfiguration :: SecretsManagerConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseSourceAuthenticationConfigurationProperty ::
  SecretsManagerConfigurationProperty
  -> DatabaseSourceAuthenticationConfigurationProperty
mkDatabaseSourceAuthenticationConfigurationProperty
  secretsManagerConfiguration
  = DatabaseSourceAuthenticationConfigurationProperty
      {haddock_workaround_ = (),
       secretsManagerConfiguration = secretsManagerConfiguration}
instance ToResourceProperties DatabaseSourceAuthenticationConfigurationProperty where
  toResourceProperties
    DatabaseSourceAuthenticationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.DatabaseSourceAuthenticationConfiguration",
         supportsTags = Prelude.False,
         properties = ["SecretsManagerConfiguration"
                         JSON..= secretsManagerConfiguration]}
instance JSON.ToJSON DatabaseSourceAuthenticationConfigurationProperty where
  toJSON DatabaseSourceAuthenticationConfigurationProperty {..}
    = JSON.object
        ["SecretsManagerConfiguration" JSON..= secretsManagerConfiguration]
instance Property "SecretsManagerConfiguration" DatabaseSourceAuthenticationConfigurationProperty where
  type PropertyType "SecretsManagerConfiguration" DatabaseSourceAuthenticationConfigurationProperty = SecretsManagerConfigurationProperty
  set newValue DatabaseSourceAuthenticationConfigurationProperty {..}
    = DatabaseSourceAuthenticationConfigurationProperty
        {secretsManagerConfiguration = newValue, ..}