module Stratosphere.SSMIncidents.ResponsePlan.IntegrationProperty (
        module Exports, IntegrationProperty(..), mkIntegrationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMIncidents.ResponsePlan.PagerDutyConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data IntegrationProperty
  = IntegrationProperty {pagerDutyConfiguration :: PagerDutyConfigurationProperty}
mkIntegrationProperty ::
  PagerDutyConfigurationProperty -> IntegrationProperty
mkIntegrationProperty pagerDutyConfiguration
  = IntegrationProperty
      {pagerDutyConfiguration = pagerDutyConfiguration}
instance ToResourceProperties IntegrationProperty where
  toResourceProperties IntegrationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.Integration",
         properties = ["PagerDutyConfiguration"
                         JSON..= pagerDutyConfiguration]}
instance JSON.ToJSON IntegrationProperty where
  toJSON IntegrationProperty {..}
    = JSON.object
        ["PagerDutyConfiguration" JSON..= pagerDutyConfiguration]
instance Property "PagerDutyConfiguration" IntegrationProperty where
  type PropertyType "PagerDutyConfiguration" IntegrationProperty = PagerDutyConfigurationProperty
  set newValue IntegrationProperty {}
    = IntegrationProperty {pagerDutyConfiguration = newValue, ..}