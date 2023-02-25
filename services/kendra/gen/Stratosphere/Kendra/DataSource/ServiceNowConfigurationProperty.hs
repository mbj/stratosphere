module Stratosphere.Kendra.DataSource.ServiceNowConfigurationProperty (
        module Exports, ServiceNowConfigurationProperty(..),
        mkServiceNowConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ServiceNowKnowledgeArticleConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ServiceNowServiceCatalogConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceNowConfigurationProperty
  = ServiceNowConfigurationProperty {authenticationType :: (Prelude.Maybe (Value Prelude.Text)),
                                     hostUrl :: (Value Prelude.Text),
                                     knowledgeArticleConfiguration :: (Prelude.Maybe ServiceNowKnowledgeArticleConfigurationProperty),
                                     secretArn :: (Value Prelude.Text),
                                     serviceCatalogConfiguration :: (Prelude.Maybe ServiceNowServiceCatalogConfigurationProperty),
                                     serviceNowBuildVersion :: (Value Prelude.Text)}
mkServiceNowConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ServiceNowConfigurationProperty
mkServiceNowConfigurationProperty
  hostUrl
  secretArn
  serviceNowBuildVersion
  = ServiceNowConfigurationProperty
      {hostUrl = hostUrl, secretArn = secretArn,
       serviceNowBuildVersion = serviceNowBuildVersion,
       authenticationType = Prelude.Nothing,
       knowledgeArticleConfiguration = Prelude.Nothing,
       serviceCatalogConfiguration = Prelude.Nothing}
instance ToResourceProperties ServiceNowConfigurationProperty where
  toResourceProperties ServiceNowConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ServiceNowConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HostUrl" JSON..= hostUrl, "SecretArn" JSON..= secretArn,
                            "ServiceNowBuildVersion" JSON..= serviceNowBuildVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
                               (JSON..=) "KnowledgeArticleConfiguration"
                                 Prelude.<$> knowledgeArticleConfiguration,
                               (JSON..=) "ServiceCatalogConfiguration"
                                 Prelude.<$> serviceCatalogConfiguration]))}
instance JSON.ToJSON ServiceNowConfigurationProperty where
  toJSON ServiceNowConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HostUrl" JSON..= hostUrl, "SecretArn" JSON..= secretArn,
               "ServiceNowBuildVersion" JSON..= serviceNowBuildVersion]
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
                  (JSON..=) "KnowledgeArticleConfiguration"
                    Prelude.<$> knowledgeArticleConfiguration,
                  (JSON..=) "ServiceCatalogConfiguration"
                    Prelude.<$> serviceCatalogConfiguration])))
instance Property "AuthenticationType" ServiceNowConfigurationProperty where
  type PropertyType "AuthenticationType" ServiceNowConfigurationProperty = Value Prelude.Text
  set newValue ServiceNowConfigurationProperty {..}
    = ServiceNowConfigurationProperty
        {authenticationType = Prelude.pure newValue, ..}
instance Property "HostUrl" ServiceNowConfigurationProperty where
  type PropertyType "HostUrl" ServiceNowConfigurationProperty = Value Prelude.Text
  set newValue ServiceNowConfigurationProperty {..}
    = ServiceNowConfigurationProperty {hostUrl = newValue, ..}
instance Property "KnowledgeArticleConfiguration" ServiceNowConfigurationProperty where
  type PropertyType "KnowledgeArticleConfiguration" ServiceNowConfigurationProperty = ServiceNowKnowledgeArticleConfigurationProperty
  set newValue ServiceNowConfigurationProperty {..}
    = ServiceNowConfigurationProperty
        {knowledgeArticleConfiguration = Prelude.pure newValue, ..}
instance Property "SecretArn" ServiceNowConfigurationProperty where
  type PropertyType "SecretArn" ServiceNowConfigurationProperty = Value Prelude.Text
  set newValue ServiceNowConfigurationProperty {..}
    = ServiceNowConfigurationProperty {secretArn = newValue, ..}
instance Property "ServiceCatalogConfiguration" ServiceNowConfigurationProperty where
  type PropertyType "ServiceCatalogConfiguration" ServiceNowConfigurationProperty = ServiceNowServiceCatalogConfigurationProperty
  set newValue ServiceNowConfigurationProperty {..}
    = ServiceNowConfigurationProperty
        {serviceCatalogConfiguration = Prelude.pure newValue, ..}
instance Property "ServiceNowBuildVersion" ServiceNowConfigurationProperty where
  type PropertyType "ServiceNowBuildVersion" ServiceNowConfigurationProperty = Value Prelude.Text
  set newValue ServiceNowConfigurationProperty {..}
    = ServiceNowConfigurationProperty
        {serviceNowBuildVersion = newValue, ..}