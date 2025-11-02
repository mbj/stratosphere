module Stratosphere.RDS.DBCluster.MasterUserSecretProperty (
        MasterUserSecretProperty(..), mkMasterUserSecretProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MasterUserSecretProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-masterusersecret.html>
    MasterUserSecretProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-masterusersecret.html#cfn-rds-dbcluster-masterusersecret-kmskeyid>
                              kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-masterusersecret.html#cfn-rds-dbcluster-masterusersecret-secretarn>
                              secretArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMasterUserSecretProperty :: MasterUserSecretProperty
mkMasterUserSecretProperty
  = MasterUserSecretProperty
      {haddock_workaround_ = (), kmsKeyId = Prelude.Nothing,
       secretArn = Prelude.Nothing}
instance ToResourceProperties MasterUserSecretProperty where
  toResourceProperties MasterUserSecretProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBCluster.MasterUserSecret",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "SecretArn" Prelude.<$> secretArn])}
instance JSON.ToJSON MasterUserSecretProperty where
  toJSON MasterUserSecretProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "SecretArn" Prelude.<$> secretArn]))
instance Property "KmsKeyId" MasterUserSecretProperty where
  type PropertyType "KmsKeyId" MasterUserSecretProperty = Value Prelude.Text
  set newValue MasterUserSecretProperty {..}
    = MasterUserSecretProperty {kmsKeyId = Prelude.pure newValue, ..}
instance Property "SecretArn" MasterUserSecretProperty where
  type PropertyType "SecretArn" MasterUserSecretProperty = Value Prelude.Text
  set newValue MasterUserSecretProperty {..}
    = MasterUserSecretProperty {secretArn = Prelude.pure newValue, ..}