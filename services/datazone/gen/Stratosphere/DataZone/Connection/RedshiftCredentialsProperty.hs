module Stratosphere.DataZone.Connection.RedshiftCredentialsProperty (
        module Exports, RedshiftCredentialsProperty(..),
        mkRedshiftCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Connection.UsernamePasswordProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftcredentials.html>
    RedshiftCredentialsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftcredentials.html#cfn-datazone-connection-redshiftcredentials-secretarn>
                                 secretArn :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftcredentials.html#cfn-datazone-connection-redshiftcredentials-usernamepassword>
                                 usernamePassword :: (Prelude.Maybe UsernamePasswordProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftCredentialsProperty :: RedshiftCredentialsProperty
mkRedshiftCredentialsProperty
  = RedshiftCredentialsProperty
      {haddock_workaround_ = (), secretArn = Prelude.Nothing,
       usernamePassword = Prelude.Nothing}
instance ToResourceProperties RedshiftCredentialsProperty where
  toResourceProperties RedshiftCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.RedshiftCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecretArn" Prelude.<$> secretArn,
                            (JSON..=) "UsernamePassword" Prelude.<$> usernamePassword])}
instance JSON.ToJSON RedshiftCredentialsProperty where
  toJSON RedshiftCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecretArn" Prelude.<$> secretArn,
               (JSON..=) "UsernamePassword" Prelude.<$> usernamePassword]))
instance Property "SecretArn" RedshiftCredentialsProperty where
  type PropertyType "SecretArn" RedshiftCredentialsProperty = Value Prelude.Text
  set newValue RedshiftCredentialsProperty {..}
    = RedshiftCredentialsProperty
        {secretArn = Prelude.pure newValue, ..}
instance Property "UsernamePassword" RedshiftCredentialsProperty where
  type PropertyType "UsernamePassword" RedshiftCredentialsProperty = UsernamePasswordProperty
  set newValue RedshiftCredentialsProperty {..}
    = RedshiftCredentialsProperty
        {usernamePassword = Prelude.pure newValue, ..}