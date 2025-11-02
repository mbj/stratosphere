module Stratosphere.RDS.DBProxy.AuthFormatProperty (
        AuthFormatProperty(..), mkAuthFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthFormatProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-authformat.html>
    AuthFormatProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-authformat.html#cfn-rds-dbproxy-authformat-authscheme>
                        authScheme :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-authformat.html#cfn-rds-dbproxy-authformat-clientpasswordauthtype>
                        clientPasswordAuthType :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-authformat.html#cfn-rds-dbproxy-authformat-description>
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-authformat.html#cfn-rds-dbproxy-authformat-iamauth>
                        iAMAuth :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxy-authformat.html#cfn-rds-dbproxy-authformat-secretarn>
                        secretArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthFormatProperty :: AuthFormatProperty
mkAuthFormatProperty
  = AuthFormatProperty
      {haddock_workaround_ = (), authScheme = Prelude.Nothing,
       clientPasswordAuthType = Prelude.Nothing,
       description = Prelude.Nothing, iAMAuth = Prelude.Nothing,
       secretArn = Prelude.Nothing}
instance ToResourceProperties AuthFormatProperty where
  toResourceProperties AuthFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBProxy.AuthFormat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthScheme" Prelude.<$> authScheme,
                            (JSON..=) "ClientPasswordAuthType"
                              Prelude.<$> clientPasswordAuthType,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "IAMAuth" Prelude.<$> iAMAuth,
                            (JSON..=) "SecretArn" Prelude.<$> secretArn])}
instance JSON.ToJSON AuthFormatProperty where
  toJSON AuthFormatProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthScheme" Prelude.<$> authScheme,
               (JSON..=) "ClientPasswordAuthType"
                 Prelude.<$> clientPasswordAuthType,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "IAMAuth" Prelude.<$> iAMAuth,
               (JSON..=) "SecretArn" Prelude.<$> secretArn]))
instance Property "AuthScheme" AuthFormatProperty where
  type PropertyType "AuthScheme" AuthFormatProperty = Value Prelude.Text
  set newValue AuthFormatProperty {..}
    = AuthFormatProperty {authScheme = Prelude.pure newValue, ..}
instance Property "ClientPasswordAuthType" AuthFormatProperty where
  type PropertyType "ClientPasswordAuthType" AuthFormatProperty = Value Prelude.Text
  set newValue AuthFormatProperty {..}
    = AuthFormatProperty
        {clientPasswordAuthType = Prelude.pure newValue, ..}
instance Property "Description" AuthFormatProperty where
  type PropertyType "Description" AuthFormatProperty = Value Prelude.Text
  set newValue AuthFormatProperty {..}
    = AuthFormatProperty {description = Prelude.pure newValue, ..}
instance Property "IAMAuth" AuthFormatProperty where
  type PropertyType "IAMAuth" AuthFormatProperty = Value Prelude.Text
  set newValue AuthFormatProperty {..}
    = AuthFormatProperty {iAMAuth = Prelude.pure newValue, ..}
instance Property "SecretArn" AuthFormatProperty where
  type PropertyType "SecretArn" AuthFormatProperty = Value Prelude.Text
  set newValue AuthFormatProperty {..}
    = AuthFormatProperty {secretArn = Prelude.pure newValue, ..}