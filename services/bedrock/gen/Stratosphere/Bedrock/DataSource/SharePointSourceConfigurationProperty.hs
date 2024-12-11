module Stratosphere.Bedrock.DataSource.SharePointSourceConfigurationProperty (
        SharePointSourceConfigurationProperty(..),
        mkSharePointSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SharePointSourceConfigurationProperty
  = SharePointSourceConfigurationProperty {authType :: (Value Prelude.Text),
                                           credentialsSecretArn :: (Value Prelude.Text),
                                           domain :: (Value Prelude.Text),
                                           hostType :: (Value Prelude.Text),
                                           siteUrls :: (ValueList Prelude.Text),
                                           tenantId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSharePointSourceConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> ValueList Prelude.Text -> SharePointSourceConfigurationProperty
mkSharePointSourceConfigurationProperty
  authType
  credentialsSecretArn
  domain
  hostType
  siteUrls
  = SharePointSourceConfigurationProperty
      {authType = authType, credentialsSecretArn = credentialsSecretArn,
       domain = domain, hostType = hostType, siteUrls = siteUrls,
       tenantId = Prelude.Nothing}
instance ToResourceProperties SharePointSourceConfigurationProperty where
  toResourceProperties SharePointSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.SharePointSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthType" JSON..= authType,
                            "CredentialsSecretArn" JSON..= credentialsSecretArn,
                            "Domain" JSON..= domain, "HostType" JSON..= hostType,
                            "SiteUrls" JSON..= siteUrls]
                           (Prelude.catMaybes [(JSON..=) "TenantId" Prelude.<$> tenantId]))}
instance JSON.ToJSON SharePointSourceConfigurationProperty where
  toJSON SharePointSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthType" JSON..= authType,
               "CredentialsSecretArn" JSON..= credentialsSecretArn,
               "Domain" JSON..= domain, "HostType" JSON..= hostType,
               "SiteUrls" JSON..= siteUrls]
              (Prelude.catMaybes [(JSON..=) "TenantId" Prelude.<$> tenantId])))
instance Property "AuthType" SharePointSourceConfigurationProperty where
  type PropertyType "AuthType" SharePointSourceConfigurationProperty = Value Prelude.Text
  set newValue SharePointSourceConfigurationProperty {..}
    = SharePointSourceConfigurationProperty {authType = newValue, ..}
instance Property "CredentialsSecretArn" SharePointSourceConfigurationProperty where
  type PropertyType "CredentialsSecretArn" SharePointSourceConfigurationProperty = Value Prelude.Text
  set newValue SharePointSourceConfigurationProperty {..}
    = SharePointSourceConfigurationProperty
        {credentialsSecretArn = newValue, ..}
instance Property "Domain" SharePointSourceConfigurationProperty where
  type PropertyType "Domain" SharePointSourceConfigurationProperty = Value Prelude.Text
  set newValue SharePointSourceConfigurationProperty {..}
    = SharePointSourceConfigurationProperty {domain = newValue, ..}
instance Property "HostType" SharePointSourceConfigurationProperty where
  type PropertyType "HostType" SharePointSourceConfigurationProperty = Value Prelude.Text
  set newValue SharePointSourceConfigurationProperty {..}
    = SharePointSourceConfigurationProperty {hostType = newValue, ..}
instance Property "SiteUrls" SharePointSourceConfigurationProperty where
  type PropertyType "SiteUrls" SharePointSourceConfigurationProperty = ValueList Prelude.Text
  set newValue SharePointSourceConfigurationProperty {..}
    = SharePointSourceConfigurationProperty {siteUrls = newValue, ..}
instance Property "TenantId" SharePointSourceConfigurationProperty where
  type PropertyType "TenantId" SharePointSourceConfigurationProperty = Value Prelude.Text
  set newValue SharePointSourceConfigurationProperty {..}
    = SharePointSourceConfigurationProperty
        {tenantId = Prelude.pure newValue, ..}