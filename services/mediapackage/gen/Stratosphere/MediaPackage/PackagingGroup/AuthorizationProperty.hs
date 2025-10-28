module Stratosphere.MediaPackage.PackagingGroup.AuthorizationProperty (
        AuthorizationProperty(..), mkAuthorizationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthorizationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packaginggroup-authorization.html>
    AuthorizationProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packaginggroup-authorization.html#cfn-mediapackage-packaginggroup-authorization-cdnidentifiersecret>
                           cdnIdentifierSecret :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packaginggroup-authorization.html#cfn-mediapackage-packaginggroup-authorization-secretsrolearn>
                           secretsRoleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthorizationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> AuthorizationProperty
mkAuthorizationProperty cdnIdentifierSecret secretsRoleArn
  = AuthorizationProperty
      {haddock_workaround_ = (),
       cdnIdentifierSecret = cdnIdentifierSecret,
       secretsRoleArn = secretsRoleArn}
instance ToResourceProperties AuthorizationProperty where
  toResourceProperties AuthorizationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingGroup.Authorization",
         supportsTags = Prelude.False,
         properties = ["CdnIdentifierSecret" JSON..= cdnIdentifierSecret,
                       "SecretsRoleArn" JSON..= secretsRoleArn]}
instance JSON.ToJSON AuthorizationProperty where
  toJSON AuthorizationProperty {..}
    = JSON.object
        ["CdnIdentifierSecret" JSON..= cdnIdentifierSecret,
         "SecretsRoleArn" JSON..= secretsRoleArn]
instance Property "CdnIdentifierSecret" AuthorizationProperty where
  type PropertyType "CdnIdentifierSecret" AuthorizationProperty = Value Prelude.Text
  set newValue AuthorizationProperty {..}
    = AuthorizationProperty {cdnIdentifierSecret = newValue, ..}
instance Property "SecretsRoleArn" AuthorizationProperty where
  type PropertyType "SecretsRoleArn" AuthorizationProperty = Value Prelude.Text
  set newValue AuthorizationProperty {..}
    = AuthorizationProperty {secretsRoleArn = newValue, ..}