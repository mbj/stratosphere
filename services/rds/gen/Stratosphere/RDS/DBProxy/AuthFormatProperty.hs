module Stratosphere.RDS.DBProxy.AuthFormatProperty (
        AuthFormatProperty(..), mkAuthFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthFormatProperty
  = AuthFormatProperty {authScheme :: (Prelude.Maybe (Value Prelude.Text)),
                        clientPasswordAuthType :: (Prelude.Maybe (Value Prelude.Text)),
                        description :: (Prelude.Maybe (Value Prelude.Text)),
                        iAMAuth :: (Prelude.Maybe (Value Prelude.Text)),
                        secretArn :: (Prelude.Maybe (Value Prelude.Text))}
mkAuthFormatProperty :: AuthFormatProperty
mkAuthFormatProperty
  = AuthFormatProperty
      {authScheme = Prelude.Nothing,
       clientPasswordAuthType = Prelude.Nothing,
       description = Prelude.Nothing, iAMAuth = Prelude.Nothing,
       secretArn = Prelude.Nothing}
instance ToResourceProperties AuthFormatProperty where
  toResourceProperties AuthFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBProxy.AuthFormat",
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