module Stratosphere.CustomerProfiles.Integration.SourceConnectorPropertiesProperty (
        module Exports, SourceConnectorPropertiesProperty(..),
        mkSourceConnectorPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.MarketoSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.S3SourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.SalesforceSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.ServiceNowSourcePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.Integration.ZendeskSourcePropertiesProperty as Exports
import Stratosphere.ResourceProperties
data SourceConnectorPropertiesProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceconnectorproperties.html>
    SourceConnectorPropertiesProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceconnectorproperties.html#cfn-customerprofiles-integration-sourceconnectorproperties-marketo>
                                       marketo :: (Prelude.Maybe MarketoSourcePropertiesProperty),
                                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceconnectorproperties.html#cfn-customerprofiles-integration-sourceconnectorproperties-s3>
                                       s3 :: (Prelude.Maybe S3SourcePropertiesProperty),
                                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceconnectorproperties.html#cfn-customerprofiles-integration-sourceconnectorproperties-salesforce>
                                       salesforce :: (Prelude.Maybe SalesforceSourcePropertiesProperty),
                                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceconnectorproperties.html#cfn-customerprofiles-integration-sourceconnectorproperties-servicenow>
                                       serviceNow :: (Prelude.Maybe ServiceNowSourcePropertiesProperty),
                                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceconnectorproperties.html#cfn-customerprofiles-integration-sourceconnectorproperties-zendesk>
                                       zendesk :: (Prelude.Maybe ZendeskSourcePropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceConnectorPropertiesProperty ::
  SourceConnectorPropertiesProperty
mkSourceConnectorPropertiesProperty
  = SourceConnectorPropertiesProperty
      {marketo = Prelude.Nothing, s3 = Prelude.Nothing,
       salesforce = Prelude.Nothing, serviceNow = Prelude.Nothing,
       zendesk = Prelude.Nothing}
instance ToResourceProperties SourceConnectorPropertiesProperty where
  toResourceProperties SourceConnectorPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.SourceConnectorProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Marketo" Prelude.<$> marketo,
                            (JSON..=) "S3" Prelude.<$> s3,
                            (JSON..=) "Salesforce" Prelude.<$> salesforce,
                            (JSON..=) "ServiceNow" Prelude.<$> serviceNow,
                            (JSON..=) "Zendesk" Prelude.<$> zendesk])}
instance JSON.ToJSON SourceConnectorPropertiesProperty where
  toJSON SourceConnectorPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Marketo" Prelude.<$> marketo,
               (JSON..=) "S3" Prelude.<$> s3,
               (JSON..=) "Salesforce" Prelude.<$> salesforce,
               (JSON..=) "ServiceNow" Prelude.<$> serviceNow,
               (JSON..=) "Zendesk" Prelude.<$> zendesk]))
instance Property "Marketo" SourceConnectorPropertiesProperty where
  type PropertyType "Marketo" SourceConnectorPropertiesProperty = MarketoSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {marketo = Prelude.pure newValue, ..}
instance Property "S3" SourceConnectorPropertiesProperty where
  type PropertyType "S3" SourceConnectorPropertiesProperty = S3SourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {s3 = Prelude.pure newValue, ..}
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
instance Property "Zendesk" SourceConnectorPropertiesProperty where
  type PropertyType "Zendesk" SourceConnectorPropertiesProperty = ZendeskSourcePropertiesProperty
  set newValue SourceConnectorPropertiesProperty {..}
    = SourceConnectorPropertiesProperty
        {zendesk = Prelude.pure newValue, ..}