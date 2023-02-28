module Stratosphere.AppFlow.ConnectorProfile.ConnectorProfilePropertiesProperty (
        module Exports, ConnectorProfilePropertiesProperty(..),
        mkConnectorProfilePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.CustomConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.DatadogConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.DynatraceConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.InforNexusConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.MarketoConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.PardotConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.RedshiftConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.SAPODataConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.SalesforceConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ServiceNowConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.SlackConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.SnowflakeConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.VeevaConnectorProfilePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ZendeskConnectorProfilePropertiesProperty as Exports
import Stratosphere.ResourceProperties
data ConnectorProfilePropertiesProperty
  = ConnectorProfilePropertiesProperty {customConnector :: (Prelude.Maybe CustomConnectorProfilePropertiesProperty),
                                        datadog :: (Prelude.Maybe DatadogConnectorProfilePropertiesProperty),
                                        dynatrace :: (Prelude.Maybe DynatraceConnectorProfilePropertiesProperty),
                                        inforNexus :: (Prelude.Maybe InforNexusConnectorProfilePropertiesProperty),
                                        marketo :: (Prelude.Maybe MarketoConnectorProfilePropertiesProperty),
                                        pardot :: (Prelude.Maybe PardotConnectorProfilePropertiesProperty),
                                        redshift :: (Prelude.Maybe RedshiftConnectorProfilePropertiesProperty),
                                        sAPOData :: (Prelude.Maybe SAPODataConnectorProfilePropertiesProperty),
                                        salesforce :: (Prelude.Maybe SalesforceConnectorProfilePropertiesProperty),
                                        serviceNow :: (Prelude.Maybe ServiceNowConnectorProfilePropertiesProperty),
                                        slack :: (Prelude.Maybe SlackConnectorProfilePropertiesProperty),
                                        snowflake :: (Prelude.Maybe SnowflakeConnectorProfilePropertiesProperty),
                                        veeva :: (Prelude.Maybe VeevaConnectorProfilePropertiesProperty),
                                        zendesk :: (Prelude.Maybe ZendeskConnectorProfilePropertiesProperty)}
mkConnectorProfilePropertiesProperty ::
  ConnectorProfilePropertiesProperty
mkConnectorProfilePropertiesProperty
  = ConnectorProfilePropertiesProperty
      {customConnector = Prelude.Nothing, datadog = Prelude.Nothing,
       dynatrace = Prelude.Nothing, inforNexus = Prelude.Nothing,
       marketo = Prelude.Nothing, pardot = Prelude.Nothing,
       redshift = Prelude.Nothing, sAPOData = Prelude.Nothing,
       salesforce = Prelude.Nothing, serviceNow = Prelude.Nothing,
       slack = Prelude.Nothing, snowflake = Prelude.Nothing,
       veeva = Prelude.Nothing, zendesk = Prelude.Nothing}
instance ToResourceProperties ConnectorProfilePropertiesProperty where
  toResourceProperties ConnectorProfilePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.ConnectorProfileProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomConnector" Prelude.<$> customConnector,
                            (JSON..=) "Datadog" Prelude.<$> datadog,
                            (JSON..=) "Dynatrace" Prelude.<$> dynatrace,
                            (JSON..=) "InforNexus" Prelude.<$> inforNexus,
                            (JSON..=) "Marketo" Prelude.<$> marketo,
                            (JSON..=) "Pardot" Prelude.<$> pardot,
                            (JSON..=) "Redshift" Prelude.<$> redshift,
                            (JSON..=) "SAPOData" Prelude.<$> sAPOData,
                            (JSON..=) "Salesforce" Prelude.<$> salesforce,
                            (JSON..=) "ServiceNow" Prelude.<$> serviceNow,
                            (JSON..=) "Slack" Prelude.<$> slack,
                            (JSON..=) "Snowflake" Prelude.<$> snowflake,
                            (JSON..=) "Veeva" Prelude.<$> veeva,
                            (JSON..=) "Zendesk" Prelude.<$> zendesk])}
instance JSON.ToJSON ConnectorProfilePropertiesProperty where
  toJSON ConnectorProfilePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomConnector" Prelude.<$> customConnector,
               (JSON..=) "Datadog" Prelude.<$> datadog,
               (JSON..=) "Dynatrace" Prelude.<$> dynatrace,
               (JSON..=) "InforNexus" Prelude.<$> inforNexus,
               (JSON..=) "Marketo" Prelude.<$> marketo,
               (JSON..=) "Pardot" Prelude.<$> pardot,
               (JSON..=) "Redshift" Prelude.<$> redshift,
               (JSON..=) "SAPOData" Prelude.<$> sAPOData,
               (JSON..=) "Salesforce" Prelude.<$> salesforce,
               (JSON..=) "ServiceNow" Prelude.<$> serviceNow,
               (JSON..=) "Slack" Prelude.<$> slack,
               (JSON..=) "Snowflake" Prelude.<$> snowflake,
               (JSON..=) "Veeva" Prelude.<$> veeva,
               (JSON..=) "Zendesk" Prelude.<$> zendesk]))
instance Property "CustomConnector" ConnectorProfilePropertiesProperty where
  type PropertyType "CustomConnector" ConnectorProfilePropertiesProperty = CustomConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {customConnector = Prelude.pure newValue, ..}
instance Property "Datadog" ConnectorProfilePropertiesProperty where
  type PropertyType "Datadog" ConnectorProfilePropertiesProperty = DatadogConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {datadog = Prelude.pure newValue, ..}
instance Property "Dynatrace" ConnectorProfilePropertiesProperty where
  type PropertyType "Dynatrace" ConnectorProfilePropertiesProperty = DynatraceConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {dynatrace = Prelude.pure newValue, ..}
instance Property "InforNexus" ConnectorProfilePropertiesProperty where
  type PropertyType "InforNexus" ConnectorProfilePropertiesProperty = InforNexusConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {inforNexus = Prelude.pure newValue, ..}
instance Property "Marketo" ConnectorProfilePropertiesProperty where
  type PropertyType "Marketo" ConnectorProfilePropertiesProperty = MarketoConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {marketo = Prelude.pure newValue, ..}
instance Property "Pardot" ConnectorProfilePropertiesProperty where
  type PropertyType "Pardot" ConnectorProfilePropertiesProperty = PardotConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {pardot = Prelude.pure newValue, ..}
instance Property "Redshift" ConnectorProfilePropertiesProperty where
  type PropertyType "Redshift" ConnectorProfilePropertiesProperty = RedshiftConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {redshift = Prelude.pure newValue, ..}
instance Property "SAPOData" ConnectorProfilePropertiesProperty where
  type PropertyType "SAPOData" ConnectorProfilePropertiesProperty = SAPODataConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {sAPOData = Prelude.pure newValue, ..}
instance Property "Salesforce" ConnectorProfilePropertiesProperty where
  type PropertyType "Salesforce" ConnectorProfilePropertiesProperty = SalesforceConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {salesforce = Prelude.pure newValue, ..}
instance Property "ServiceNow" ConnectorProfilePropertiesProperty where
  type PropertyType "ServiceNow" ConnectorProfilePropertiesProperty = ServiceNowConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {serviceNow = Prelude.pure newValue, ..}
instance Property "Slack" ConnectorProfilePropertiesProperty where
  type PropertyType "Slack" ConnectorProfilePropertiesProperty = SlackConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {slack = Prelude.pure newValue, ..}
instance Property "Snowflake" ConnectorProfilePropertiesProperty where
  type PropertyType "Snowflake" ConnectorProfilePropertiesProperty = SnowflakeConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {snowflake = Prelude.pure newValue, ..}
instance Property "Veeva" ConnectorProfilePropertiesProperty where
  type PropertyType "Veeva" ConnectorProfilePropertiesProperty = VeevaConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {veeva = Prelude.pure newValue, ..}
instance Property "Zendesk" ConnectorProfilePropertiesProperty where
  type PropertyType "Zendesk" ConnectorProfilePropertiesProperty = ZendeskConnectorProfilePropertiesProperty
  set newValue ConnectorProfilePropertiesProperty {..}
    = ConnectorProfilePropertiesProperty
        {zendesk = Prelude.pure newValue, ..}