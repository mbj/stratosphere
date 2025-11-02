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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html>
    ServiceNowConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html#cfn-kendra-datasource-servicenowconfiguration-authenticationtype>
                                     authenticationType :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html#cfn-kendra-datasource-servicenowconfiguration-hosturl>
                                     hostUrl :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html#cfn-kendra-datasource-servicenowconfiguration-knowledgearticleconfiguration>
                                     knowledgeArticleConfiguration :: (Prelude.Maybe ServiceNowKnowledgeArticleConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html#cfn-kendra-datasource-servicenowconfiguration-secretarn>
                                     secretArn :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html#cfn-kendra-datasource-servicenowconfiguration-servicecatalogconfiguration>
                                     serviceCatalogConfiguration :: (Prelude.Maybe ServiceNowServiceCatalogConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html#cfn-kendra-datasource-servicenowconfiguration-servicenowbuildversion>
                                     serviceNowBuildVersion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceNowConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ServiceNowConfigurationProperty
mkServiceNowConfigurationProperty
  hostUrl
  secretArn
  serviceNowBuildVersion
  = ServiceNowConfigurationProperty
      {haddock_workaround_ = (), hostUrl = hostUrl,
       secretArn = secretArn,
       serviceNowBuildVersion = serviceNowBuildVersion,
       authenticationType = Prelude.Nothing,
       knowledgeArticleConfiguration = Prelude.Nothing,
       serviceCatalogConfiguration = Prelude.Nothing}
instance ToResourceProperties ServiceNowConfigurationProperty where
  toResourceProperties ServiceNowConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ServiceNowConfiguration",
         supportsTags = Prelude.False,
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