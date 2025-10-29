module Stratosphere.QuickSight.DataSource.DataSourceCredentialsProperty (
        module Exports, DataSourceCredentialsProperty(..),
        mkDataSourceCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSource.CredentialPairProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSourceCredentialsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourcecredentials.html>
    DataSourceCredentialsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourcecredentials.html#cfn-quicksight-datasource-datasourcecredentials-copysourcearn>
                                   copySourceArn :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourcecredentials.html#cfn-quicksight-datasource-datasourcecredentials-credentialpair>
                                   credentialPair :: (Prelude.Maybe CredentialPairProperty),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourcecredentials.html#cfn-quicksight-datasource-datasourcecredentials-secretarn>
                                   secretArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceCredentialsProperty :: DataSourceCredentialsProperty
mkDataSourceCredentialsProperty
  = DataSourceCredentialsProperty
      {copySourceArn = Prelude.Nothing, credentialPair = Prelude.Nothing,
       secretArn = Prelude.Nothing}
instance ToResourceProperties DataSourceCredentialsProperty where
  toResourceProperties DataSourceCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.DataSourceCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CopySourceArn" Prelude.<$> copySourceArn,
                            (JSON..=) "CredentialPair" Prelude.<$> credentialPair,
                            (JSON..=) "SecretArn" Prelude.<$> secretArn])}
instance JSON.ToJSON DataSourceCredentialsProperty where
  toJSON DataSourceCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CopySourceArn" Prelude.<$> copySourceArn,
               (JSON..=) "CredentialPair" Prelude.<$> credentialPair,
               (JSON..=) "SecretArn" Prelude.<$> secretArn]))
instance Property "CopySourceArn" DataSourceCredentialsProperty where
  type PropertyType "CopySourceArn" DataSourceCredentialsProperty = Value Prelude.Text
  set newValue DataSourceCredentialsProperty {..}
    = DataSourceCredentialsProperty
        {copySourceArn = Prelude.pure newValue, ..}
instance Property "CredentialPair" DataSourceCredentialsProperty where
  type PropertyType "CredentialPair" DataSourceCredentialsProperty = CredentialPairProperty
  set newValue DataSourceCredentialsProperty {..}
    = DataSourceCredentialsProperty
        {credentialPair = Prelude.pure newValue, ..}
instance Property "SecretArn" DataSourceCredentialsProperty where
  type PropertyType "SecretArn" DataSourceCredentialsProperty = Value Prelude.Text
  set newValue DataSourceCredentialsProperty {..}
    = DataSourceCredentialsProperty
        {secretArn = Prelude.pure newValue, ..}