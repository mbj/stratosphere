module Stratosphere.Transfer.Connector.SftpConfigProperty (
        SftpConfigProperty(..), mkSftpConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SftpConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-sftpconfig.html>
    SftpConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-sftpconfig.html#cfn-transfer-connector-sftpconfig-trustedhostkeys>
                        trustedHostKeys :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-sftpconfig.html#cfn-transfer-connector-sftpconfig-usersecretid>
                        userSecretId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSftpConfigProperty :: SftpConfigProperty
mkSftpConfigProperty
  = SftpConfigProperty
      {trustedHostKeys = Prelude.Nothing, userSecretId = Prelude.Nothing}
instance ToResourceProperties SftpConfigProperty where
  toResourceProperties SftpConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Connector.SftpConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TrustedHostKeys" Prelude.<$> trustedHostKeys,
                            (JSON..=) "UserSecretId" Prelude.<$> userSecretId])}
instance JSON.ToJSON SftpConfigProperty where
  toJSON SftpConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TrustedHostKeys" Prelude.<$> trustedHostKeys,
               (JSON..=) "UserSecretId" Prelude.<$> userSecretId]))
instance Property "TrustedHostKeys" SftpConfigProperty where
  type PropertyType "TrustedHostKeys" SftpConfigProperty = ValueList Prelude.Text
  set newValue SftpConfigProperty {..}
    = SftpConfigProperty {trustedHostKeys = Prelude.pure newValue, ..}
instance Property "UserSecretId" SftpConfigProperty where
  type PropertyType "UserSecretId" SftpConfigProperty = Value Prelude.Text
  set newValue SftpConfigProperty {..}
    = SftpConfigProperty {userSecretId = Prelude.pure newValue, ..}