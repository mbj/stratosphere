module Stratosphere.MediaPackageV2.OriginEndpointPolicy.CdnAuthConfigurationProperty (
        CdnAuthConfigurationProperty(..), mkCdnAuthConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CdnAuthConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpointpolicy-cdnauthconfiguration.html>
    CdnAuthConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpointpolicy-cdnauthconfiguration.html#cfn-mediapackagev2-originendpointpolicy-cdnauthconfiguration-cdnidentifiersecretarns>
                                  cdnIdentifierSecretArns :: (ValueList Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpointpolicy-cdnauthconfiguration.html#cfn-mediapackagev2-originendpointpolicy-cdnauthconfiguration-secretsrolearn>
                                  secretsRoleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCdnAuthConfigurationProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> CdnAuthConfigurationProperty
mkCdnAuthConfigurationProperty
  cdnIdentifierSecretArns
  secretsRoleArn
  = CdnAuthConfigurationProperty
      {haddock_workaround_ = (),
       cdnIdentifierSecretArns = cdnIdentifierSecretArns,
       secretsRoleArn = secretsRoleArn}
instance ToResourceProperties CdnAuthConfigurationProperty where
  toResourceProperties CdnAuthConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpointPolicy.CdnAuthConfiguration",
         supportsTags = Prelude.False,
         properties = ["CdnIdentifierSecretArns"
                         JSON..= cdnIdentifierSecretArns,
                       "SecretsRoleArn" JSON..= secretsRoleArn]}
instance JSON.ToJSON CdnAuthConfigurationProperty where
  toJSON CdnAuthConfigurationProperty {..}
    = JSON.object
        ["CdnIdentifierSecretArns" JSON..= cdnIdentifierSecretArns,
         "SecretsRoleArn" JSON..= secretsRoleArn]
instance Property "CdnIdentifierSecretArns" CdnAuthConfigurationProperty where
  type PropertyType "CdnIdentifierSecretArns" CdnAuthConfigurationProperty = ValueList Prelude.Text
  set newValue CdnAuthConfigurationProperty {..}
    = CdnAuthConfigurationProperty
        {cdnIdentifierSecretArns = newValue, ..}
instance Property "SecretsRoleArn" CdnAuthConfigurationProperty where
  type PropertyType "SecretsRoleArn" CdnAuthConfigurationProperty = Value Prelude.Text
  set newValue CdnAuthConfigurationProperty {..}
    = CdnAuthConfigurationProperty {secretsRoleArn = newValue, ..}