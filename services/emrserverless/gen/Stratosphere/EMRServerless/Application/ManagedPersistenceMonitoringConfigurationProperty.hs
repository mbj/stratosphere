module Stratosphere.EMRServerless.Application.ManagedPersistenceMonitoringConfigurationProperty (
        ManagedPersistenceMonitoringConfigurationProperty(..),
        mkManagedPersistenceMonitoringConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedPersistenceMonitoringConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-managedpersistencemonitoringconfiguration.html>
    ManagedPersistenceMonitoringConfigurationProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-managedpersistencemonitoringconfiguration.html#cfn-emrserverless-application-managedpersistencemonitoringconfiguration-enabled>
                                                       enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-managedpersistencemonitoringconfiguration.html#cfn-emrserverless-application-managedpersistencemonitoringconfiguration-encryptionkeyarn>
                                                       encryptionKeyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedPersistenceMonitoringConfigurationProperty ::
  ManagedPersistenceMonitoringConfigurationProperty
mkManagedPersistenceMonitoringConfigurationProperty
  = ManagedPersistenceMonitoringConfigurationProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       encryptionKeyArn = Prelude.Nothing}
instance ToResourceProperties ManagedPersistenceMonitoringConfigurationProperty where
  toResourceProperties
    ManagedPersistenceMonitoringConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.ManagedPersistenceMonitoringConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn])}
instance JSON.ToJSON ManagedPersistenceMonitoringConfigurationProperty where
  toJSON ManagedPersistenceMonitoringConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn]))
instance Property "Enabled" ManagedPersistenceMonitoringConfigurationProperty where
  type PropertyType "Enabled" ManagedPersistenceMonitoringConfigurationProperty = Value Prelude.Bool
  set newValue ManagedPersistenceMonitoringConfigurationProperty {..}
    = ManagedPersistenceMonitoringConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "EncryptionKeyArn" ManagedPersistenceMonitoringConfigurationProperty where
  type PropertyType "EncryptionKeyArn" ManagedPersistenceMonitoringConfigurationProperty = Value Prelude.Text
  set newValue ManagedPersistenceMonitoringConfigurationProperty {..}
    = ManagedPersistenceMonitoringConfigurationProperty
        {encryptionKeyArn = Prelude.pure newValue, ..}