module Stratosphere.DataSync.LocationSMB.ManagedSecretConfigProperty (
        ManagedSecretConfigProperty(..), mkManagedSecretConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedSecretConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationsmb-managedsecretconfig.html>
    ManagedSecretConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationsmb-managedsecretconfig.html#cfn-datasync-locationsmb-managedsecretconfig-secretarn>
                                 secretArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedSecretConfigProperty ::
  Value Prelude.Text -> ManagedSecretConfigProperty
mkManagedSecretConfigProperty secretArn
  = ManagedSecretConfigProperty
      {haddock_workaround_ = (), secretArn = secretArn}
instance ToResourceProperties ManagedSecretConfigProperty where
  toResourceProperties ManagedSecretConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationSMB.ManagedSecretConfig",
         supportsTags = Prelude.False,
         properties = ["SecretArn" JSON..= secretArn]}
instance JSON.ToJSON ManagedSecretConfigProperty where
  toJSON ManagedSecretConfigProperty {..}
    = JSON.object ["SecretArn" JSON..= secretArn]
instance Property "SecretArn" ManagedSecretConfigProperty where
  type PropertyType "SecretArn" ManagedSecretConfigProperty = Value Prelude.Text
  set newValue ManagedSecretConfigProperty {..}
    = ManagedSecretConfigProperty {secretArn = newValue, ..}