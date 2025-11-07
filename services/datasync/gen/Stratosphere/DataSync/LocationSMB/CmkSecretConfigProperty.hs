module Stratosphere.DataSync.LocationSMB.CmkSecretConfigProperty (
        CmkSecretConfigProperty(..), mkCmkSecretConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CmkSecretConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationsmb-cmksecretconfig.html>
    CmkSecretConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationsmb-cmksecretconfig.html#cfn-datasync-locationsmb-cmksecretconfig-kmskeyarn>
                             kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-locationsmb-cmksecretconfig.html#cfn-datasync-locationsmb-cmksecretconfig-secretarn>
                             secretArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCmkSecretConfigProperty :: CmkSecretConfigProperty
mkCmkSecretConfigProperty
  = CmkSecretConfigProperty
      {haddock_workaround_ = (), kmsKeyArn = Prelude.Nothing,
       secretArn = Prelude.Nothing}
instance ToResourceProperties CmkSecretConfigProperty where
  toResourceProperties CmkSecretConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationSMB.CmkSecretConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                            (JSON..=) "SecretArn" Prelude.<$> secretArn])}
instance JSON.ToJSON CmkSecretConfigProperty where
  toJSON CmkSecretConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
               (JSON..=) "SecretArn" Prelude.<$> secretArn]))
instance Property "KmsKeyArn" CmkSecretConfigProperty where
  type PropertyType "KmsKeyArn" CmkSecretConfigProperty = Value Prelude.Text
  set newValue CmkSecretConfigProperty {..}
    = CmkSecretConfigProperty {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "SecretArn" CmkSecretConfigProperty where
  type PropertyType "SecretArn" CmkSecretConfigProperty = Value Prelude.Text
  set newValue CmkSecretConfigProperty {..}
    = CmkSecretConfigProperty {secretArn = Prelude.pure newValue, ..}