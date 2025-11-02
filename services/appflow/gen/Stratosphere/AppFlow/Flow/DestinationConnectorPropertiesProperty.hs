module Stratosphere.AppFlow.Flow.DestinationConnectorPropertiesProperty (
        module Exports, DestinationConnectorPropertiesProperty(..),
        mkDestinationConnectorPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.CustomConnectorDestinationPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.EventBridgeDestinationPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.LookoutMetricsDestinationPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.MarketoDestinationPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.RedshiftDestinationPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.S3DestinationPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.SAPODataDestinationPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.SalesforceDestinationPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.SnowflakeDestinationPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.UpsolverDestinationPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ZendeskDestinationPropertiesProperty as Exports
import Stratosphere.ResourceProperties
data DestinationConnectorPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html>
    DestinationConnectorPropertiesProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-customconnector>
                                            customConnector :: (Prelude.Maybe CustomConnectorDestinationPropertiesProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-eventbridge>
                                            eventBridge :: (Prelude.Maybe EventBridgeDestinationPropertiesProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-lookoutmetrics>
                                            lookoutMetrics :: (Prelude.Maybe LookoutMetricsDestinationPropertiesProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-marketo>
                                            marketo :: (Prelude.Maybe MarketoDestinationPropertiesProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-redshift>
                                            redshift :: (Prelude.Maybe RedshiftDestinationPropertiesProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-s3>
                                            s3 :: (Prelude.Maybe S3DestinationPropertiesProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-sapodata>
                                            sAPOData :: (Prelude.Maybe SAPODataDestinationPropertiesProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-salesforce>
                                            salesforce :: (Prelude.Maybe SalesforceDestinationPropertiesProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-snowflake>
                                            snowflake :: (Prelude.Maybe SnowflakeDestinationPropertiesProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-upsolver>
                                            upsolver :: (Prelude.Maybe UpsolverDestinationPropertiesProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-destinationconnectorproperties.html#cfn-appflow-flow-destinationconnectorproperties-zendesk>
                                            zendesk :: (Prelude.Maybe ZendeskDestinationPropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationConnectorPropertiesProperty ::
  DestinationConnectorPropertiesProperty
mkDestinationConnectorPropertiesProperty
  = DestinationConnectorPropertiesProperty
      {haddock_workaround_ = (), customConnector = Prelude.Nothing,
       eventBridge = Prelude.Nothing, lookoutMetrics = Prelude.Nothing,
       marketo = Prelude.Nothing, redshift = Prelude.Nothing,
       s3 = Prelude.Nothing, sAPOData = Prelude.Nothing,
       salesforce = Prelude.Nothing, snowflake = Prelude.Nothing,
       upsolver = Prelude.Nothing, zendesk = Prelude.Nothing}
instance ToResourceProperties DestinationConnectorPropertiesProperty where
  toResourceProperties DestinationConnectorPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.DestinationConnectorProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomConnector" Prelude.<$> customConnector,
                            (JSON..=) "EventBridge" Prelude.<$> eventBridge,
                            (JSON..=) "LookoutMetrics" Prelude.<$> lookoutMetrics,
                            (JSON..=) "Marketo" Prelude.<$> marketo,
                            (JSON..=) "Redshift" Prelude.<$> redshift,
                            (JSON..=) "S3" Prelude.<$> s3,
                            (JSON..=) "SAPOData" Prelude.<$> sAPOData,
                            (JSON..=) "Salesforce" Prelude.<$> salesforce,
                            (JSON..=) "Snowflake" Prelude.<$> snowflake,
                            (JSON..=) "Upsolver" Prelude.<$> upsolver,
                            (JSON..=) "Zendesk" Prelude.<$> zendesk])}
instance JSON.ToJSON DestinationConnectorPropertiesProperty where
  toJSON DestinationConnectorPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomConnector" Prelude.<$> customConnector,
               (JSON..=) "EventBridge" Prelude.<$> eventBridge,
               (JSON..=) "LookoutMetrics" Prelude.<$> lookoutMetrics,
               (JSON..=) "Marketo" Prelude.<$> marketo,
               (JSON..=) "Redshift" Prelude.<$> redshift,
               (JSON..=) "S3" Prelude.<$> s3,
               (JSON..=) "SAPOData" Prelude.<$> sAPOData,
               (JSON..=) "Salesforce" Prelude.<$> salesforce,
               (JSON..=) "Snowflake" Prelude.<$> snowflake,
               (JSON..=) "Upsolver" Prelude.<$> upsolver,
               (JSON..=) "Zendesk" Prelude.<$> zendesk]))
instance Property "CustomConnector" DestinationConnectorPropertiesProperty where
  type PropertyType "CustomConnector" DestinationConnectorPropertiesProperty = CustomConnectorDestinationPropertiesProperty
  set newValue DestinationConnectorPropertiesProperty {..}
    = DestinationConnectorPropertiesProperty
        {customConnector = Prelude.pure newValue, ..}
instance Property "EventBridge" DestinationConnectorPropertiesProperty where
  type PropertyType "EventBridge" DestinationConnectorPropertiesProperty = EventBridgeDestinationPropertiesProperty
  set newValue DestinationConnectorPropertiesProperty {..}
    = DestinationConnectorPropertiesProperty
        {eventBridge = Prelude.pure newValue, ..}
instance Property "LookoutMetrics" DestinationConnectorPropertiesProperty where
  type PropertyType "LookoutMetrics" DestinationConnectorPropertiesProperty = LookoutMetricsDestinationPropertiesProperty
  set newValue DestinationConnectorPropertiesProperty {..}
    = DestinationConnectorPropertiesProperty
        {lookoutMetrics = Prelude.pure newValue, ..}
instance Property "Marketo" DestinationConnectorPropertiesProperty where
  type PropertyType "Marketo" DestinationConnectorPropertiesProperty = MarketoDestinationPropertiesProperty
  set newValue DestinationConnectorPropertiesProperty {..}
    = DestinationConnectorPropertiesProperty
        {marketo = Prelude.pure newValue, ..}
instance Property "Redshift" DestinationConnectorPropertiesProperty where
  type PropertyType "Redshift" DestinationConnectorPropertiesProperty = RedshiftDestinationPropertiesProperty
  set newValue DestinationConnectorPropertiesProperty {..}
    = DestinationConnectorPropertiesProperty
        {redshift = Prelude.pure newValue, ..}
instance Property "S3" DestinationConnectorPropertiesProperty where
  type PropertyType "S3" DestinationConnectorPropertiesProperty = S3DestinationPropertiesProperty
  set newValue DestinationConnectorPropertiesProperty {..}
    = DestinationConnectorPropertiesProperty
        {s3 = Prelude.pure newValue, ..}
instance Property "SAPOData" DestinationConnectorPropertiesProperty where
  type PropertyType "SAPOData" DestinationConnectorPropertiesProperty = SAPODataDestinationPropertiesProperty
  set newValue DestinationConnectorPropertiesProperty {..}
    = DestinationConnectorPropertiesProperty
        {sAPOData = Prelude.pure newValue, ..}
instance Property "Salesforce" DestinationConnectorPropertiesProperty where
  type PropertyType "Salesforce" DestinationConnectorPropertiesProperty = SalesforceDestinationPropertiesProperty
  set newValue DestinationConnectorPropertiesProperty {..}
    = DestinationConnectorPropertiesProperty
        {salesforce = Prelude.pure newValue, ..}
instance Property "Snowflake" DestinationConnectorPropertiesProperty where
  type PropertyType "Snowflake" DestinationConnectorPropertiesProperty = SnowflakeDestinationPropertiesProperty
  set newValue DestinationConnectorPropertiesProperty {..}
    = DestinationConnectorPropertiesProperty
        {snowflake = Prelude.pure newValue, ..}
instance Property "Upsolver" DestinationConnectorPropertiesProperty where
  type PropertyType "Upsolver" DestinationConnectorPropertiesProperty = UpsolverDestinationPropertiesProperty
  set newValue DestinationConnectorPropertiesProperty {..}
    = DestinationConnectorPropertiesProperty
        {upsolver = Prelude.pure newValue, ..}
instance Property "Zendesk" DestinationConnectorPropertiesProperty where
  type PropertyType "Zendesk" DestinationConnectorPropertiesProperty = ZendeskDestinationPropertiesProperty
  set newValue DestinationConnectorPropertiesProperty {..}
    = DestinationConnectorPropertiesProperty
        {zendesk = Prelude.pure newValue, ..}