module Stratosphere.RDS.DBInstance.MasterUserSecretProperty (
        MasterUserSecretProperty(..), mkMasterUserSecretProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MasterUserSecretProperty
  = MasterUserSecretProperty {kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                              secretArn :: (Prelude.Maybe (Value Prelude.Text))}
mkMasterUserSecretProperty :: MasterUserSecretProperty
mkMasterUserSecretProperty
  = MasterUserSecretProperty
      {kmsKeyId = Prelude.Nothing, secretArn = Prelude.Nothing}
instance ToResourceProperties MasterUserSecretProperty where
  toResourceProperties MasterUserSecretProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBInstance.MasterUserSecret",
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