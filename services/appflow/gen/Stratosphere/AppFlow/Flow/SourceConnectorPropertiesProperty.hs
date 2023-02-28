module Stratosphere.AppFlow.Flow.SourceConnectorPropertiesProperty (
        module Exports, SourceConnectorPropertiesProperty(..),
        mkSourceConnectorPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.AmplitudeSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.CustomConnectorSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.DatadogSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.DynatraceSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.GoogleAnalyticsSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.InforNexusSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.MarketoSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.PardotSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.S3SourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.SAPODataSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.SalesforceSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ServiceNowSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.SingularSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.SlackSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.TrendmicroSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.VeevaSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ZendeskSourcePropertiesProperty as Exports
import Stratosphere.ResourceProperties
data SourceConnectorPropertiesProperty
  = SourceConnectorPropertiesProperty {amplitude :: (Prelude.Maybe AmplitudeSourcePropertiesProperty),
                                       customConnector :: (Prelude.Maybe CustomConnectorSourcePropertiesProperty),
                                       datadog :: (Prelude.Maybe DatadogSourcePropertiesProperty),
                                       dynatrace :: (Prelude.Maybe DynatraceSourcePropertiesProperty),
                                       googleAnalytics :: (Prelude.Maybe GoogleAnalyticsSourcePropertiesProperty),
                                       inforNexus :: (Prelude.Maybe InforNexusSourcePropertiesProperty),
                                       marketo :: (Prelude.Maybe MarketoSourcePropertiesProperty),
                                       pardot :: (Prelude.Maybe PardotSourcePropertiesProperty),
                                       s3 :: (Prelude.Maybe S3SourcePropertiesProperty),
                                       sAPOData :: (Prelude.Maybe SAPODataSourcePropertiesProperty),
                                       salesforce :: (Prelude.Maybe SalesforceSourcePropertiesProperty),
                                       serviceNow :: (Prelude.Maybe ServiceNowSourcePropertiesProperty),
                                       singular :: (Prelude.Maybe SingularSourcePropertiesProperty),
                                       slack :: (Prelude.Maybe SlackSourcePropertiesProperty),
                                       trendmicro :: (Prelude.Maybe TrendmicroSourcePropertiesProperty),
                                       veeva :: (Prelude.Maybe VeevaSourcePropertiesProperty),
                                       zendesk :: (Prelude.Maybe ZendeskSourcePropertiesProperty)}
mkSourceConnectorPropertiesProperty ::
  SourceConnectorPropertiesProperty
mkSourceConnectorPropertiesProperty
  = SourceConnectorPropertiesProperty
      {amplitude = Prelude.Nothing, customConnector = Prelude.Nothing,
       datadog = Prelude.Nothing, dynatrace = Prelude.Nothing,
       googleAnalytics = Prelude.Nothing, inforNexus = Prelude.Nothing,
       marketo = Prelude.Nothing, pardot = Prelude.Nothing,
       s3 = Prelude.Nothing, sAPOData = Prelude.Nothing,
       salesforce = Prelude.Nothing, serviceNow = Prelude.Nothing,
       singular = Prelude.Nothing, slack = Prelude.Nothing,
       trendmicro = Prelude.Nothing, veeva = Prelude.Nothing,
       zendesk = Prelude.Nothing}
instance ToResourceProperties SourceConnectorPropertiesProperty where
  toResourceProperties SourceConnectorPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SourceConnectorProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Amplitude" Prelude.<$> amplitude,
                            (JSON..=) "CustomConnector" Prelude.<$> customConnector,
                            (JSON..=) "Datadog" Prelude.<$> datadog,
                            (JSON..=) "Dynatrace" Prelude.<$> dynatrace,
                            (JSON..=) "GoogleAnalytics" Prelude.<$> googleAnalytics,
                            (JSON..=) "InforNexus" Prelude.<$> inforNexus,
                            (JSON..=) "Marketo" Prelude.<$> marketo,
                            (JSON..=) "Pardot" Prelude.<$> pardot,
                            (JSON..=) "S3" Prelude.<$> s3,
                            (JSON..=) "SAPOData" Prelude.<$> sAPOData,
                            (JSON..=) "Salesforce" Prelude.<$> salesforce,
                            (JSON..=) "ServiceNow" Prelude.<$> serviceNow,
                            (JSON..=) "Singular" Prelude.<$> singular,
                            (JSON..=) "Slack" Prelude.<$> slack,
                            (JSON..=) "Trendmicro" Prelude.<$> trendmicro,
                            (JSON..=) "Veeva" Prelude.<$> veeva,
                            (JSON..=) "Zendesk" Prelude.<$> zendesk])}
instance JSON.ToJSON SourceConnectorPropertiesProperty where
  toJSON SourceConnectorPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Amplitude" Prelude.<$> amplitude,
               (JSON..=) "CustomConnector" Prelude.<$> customConnector,
               (JSON..=) "Datadog" Prelude.<$> datadog,
               (JSON..=) "Dynatrace" Prelude.<$> dynatrace,
               (JSON..=) "GoogleAnalytics" Prelude.<$> googleAnalytics,
               (JSON..=) "InforNexus" Prelude.<$> inforNexus,
               (JSON..=) "Marketo" Prelude.<$> marketo,
               (JSON..=) "Pardot" Prelude.<$> pardot,
               (JSON..=) "S3" Prelude.<$> s3,
               (JSON..=) "SAPOData" Prelude.<$> sAPOData,
               (JSON..=) "Salesforce" Prelude.<$> salesforce,
               (JSON..=) "ServiceNow" Prelude.<$> serviceNow,
               (JSON..=) "Singular" Prelude.<$> singular,
               (JSON..=) "Slack" Prelude.<$> slack,
               (JSON..=) "Trendmicro" Prelude.<$> trendmicro,
               (JSON..=) "Veeva" Prelude.<$> veeva,
               (JSON..=) "Zendesk" Prelude.<$> zendesk]))
instance Property "Amplitude" SourceConnectorPropertiesProperty where
  type PropertyType "Amplitude" SourceConnectorPropertiesProperty = AmplitudeSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {amplitude = Prelude.pure newValue, ..}
instance Property "CustomConnector" SourceConnectorPropertiesProperty where
  type PropertyType "CustomConnector" SourceConnectorPropertiesProperty = CustomConnectorSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {customConnector = Prelude.pure newValue, ..}
instance Property "Datadog" SourceConnectorPropertiesProperty where
  type PropertyType "Datadog" SourceConnectorPropertiesProperty = DatadogSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {datadog = Prelude.pure newValue, ..}
instance Property "Dynatrace" SourceConnectorPropertiesProperty where
  type PropertyType "Dynatrace" SourceConnectorPropertiesProperty = DynatraceSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {dynatrace = Prelude.pure newValue, ..}
instance Property "GoogleAnalytics" SourceConnectorPropertiesProperty where
  type PropertyType "GoogleAnalytics" SourceConnectorPropertiesProperty = GoogleAnalyticsSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {googleAnalytics = Prelude.pure newValue, ..}
instance Property "InforNexus" SourceConnectorPropertiesProperty where
  type PropertyType "InforNexus" SourceConnectorPropertiesProperty = InforNexusSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {inforNexus = Prelude.pure newValue, ..}
instance Property "Marketo" SourceConnectorPropertiesProperty where
  type PropertyType "Marketo" SourceConnectorPropertiesProperty = MarketoSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {marketo = Prelude.pure newValue, ..}
instance Property "Pardot" SourceConnectorPropertiesProperty where
  type PropertyType "Pardot" SourceConnectorPropertiesProperty = PardotSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {pardot = Prelude.pure newValue, ..}
instance Property "S3" SourceConnectorPropertiesProperty where
  type PropertyType "S3" SourceConnectorPropertiesProperty = S3SourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {s3 = Prelude.pure newValue, ..}
instance Property "SAPOData" SourceConnectorPropertiesProperty where
  type PropertyType "SAPOData" SourceConnectorPropertiesProperty = SAPODataSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {sAPOData = Prelude.pure newValue, ..}
instance Property "Salesforce" SourceConnectorPropertiesProperty where
  type PropertyType "Salesforce" SourceConnectorPropertiesProperty = SalesforceSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {salesforce = Prelude.pure newValue, ..}
instance Property "ServiceNow" SourceConnectorPropertiesProperty where
  type PropertyType "ServiceNow" SourceConnectorPropertiesProperty = ServiceNowSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {serviceNow = Prelude.pure newValue, ..}
instance Property "Singular" SourceConnectorPropertiesProperty where
  type PropertyType "Singular" SourceConnectorPropertiesProperty = SingularSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {singular = Prelude.pure newValue, ..}
instance Property "Slack" SourceConnectorPropertiesProperty where
  type PropertyType "Slack" SourceConnectorPropertiesProperty = SlackSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {slack = Prelude.pure newValue, ..}
instance Property "Trendmicro" SourceConnectorPropertiesProperty where
  type PropertyType "Trendmicro" SourceConnectorPropertiesProperty = TrendmicroSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {trendmicro = Prelude.pure newValue, ..}
instance Property "Veeva" SourceConnectorPropertiesProperty where
  type PropertyType "Veeva" SourceConnectorPropertiesProperty = VeevaSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {veeva = Prelude.pure newValue, ..}
instance Property "Zendesk" SourceConnectorPropertiesProperty where
  type PropertyType "Zendesk" SourceConnectorPropertiesProperty = ZendeskSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {zendesk = Prelude.pure newValue, ..}