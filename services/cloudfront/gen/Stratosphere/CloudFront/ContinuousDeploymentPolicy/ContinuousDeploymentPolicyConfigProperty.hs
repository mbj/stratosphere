module Stratosphere.CloudFront.ContinuousDeploymentPolicy.ContinuousDeploymentPolicyConfigProperty (
        module Exports, ContinuousDeploymentPolicyConfigProperty(..),
        mkContinuousDeploymentPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ContinuousDeploymentPolicy.SingleHeaderPolicyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ContinuousDeploymentPolicy.SingleWeightPolicyConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFront.ContinuousDeploymentPolicy.TrafficConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContinuousDeploymentPolicyConfigProperty
  = ContinuousDeploymentPolicyConfigProperty {enabled :: (Value Prelude.Bool),
                                              singleHeaderPolicyConfig :: (Prelude.Maybe SingleHeaderPolicyConfigProperty),
                                              singleWeightPolicyConfig :: (Prelude.Maybe SingleWeightPolicyConfigProperty),
                                              stagingDistributionDnsNames :: (ValueList Prelude.Text),
                                              trafficConfig :: (Prelude.Maybe TrafficConfigProperty),
                                              type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContinuousDeploymentPolicyConfigProperty ::
  Value Prelude.Bool
  -> ValueList Prelude.Text
     -> ContinuousDeploymentPolicyConfigProperty
mkContinuousDeploymentPolicyConfigProperty
  enabled
  stagingDistributionDnsNames
  = ContinuousDeploymentPolicyConfigProperty
      {enabled = enabled,
       stagingDistributionDnsNames = stagingDistributionDnsNames,
       singleHeaderPolicyConfig = Prelude.Nothing,
       singleWeightPolicyConfig = Prelude.Nothing,
       trafficConfig = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties ContinuousDeploymentPolicyConfigProperty where
  toResourceProperties ContinuousDeploymentPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ContinuousDeploymentPolicy.ContinuousDeploymentPolicyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled,
                            "StagingDistributionDnsNames" JSON..= stagingDistributionDnsNames]
                           (Prelude.catMaybes
                              [(JSON..=) "SingleHeaderPolicyConfig"
                                 Prelude.<$> singleHeaderPolicyConfig,
                               (JSON..=) "SingleWeightPolicyConfig"
                                 Prelude.<$> singleWeightPolicyConfig,
                               (JSON..=) "TrafficConfig" Prelude.<$> trafficConfig,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON ContinuousDeploymentPolicyConfigProperty where
  toJSON ContinuousDeploymentPolicyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled,
               "StagingDistributionDnsNames" JSON..= stagingDistributionDnsNames]
              (Prelude.catMaybes
                 [(JSON..=) "SingleHeaderPolicyConfig"
                    Prelude.<$> singleHeaderPolicyConfig,
                  (JSON..=) "SingleWeightPolicyConfig"
                    Prelude.<$> singleWeightPolicyConfig,
                  (JSON..=) "TrafficConfig" Prelude.<$> trafficConfig,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "Enabled" ContinuousDeploymentPolicyConfigProperty where
  type PropertyType "Enabled" ContinuousDeploymentPolicyConfigProperty = Value Prelude.Bool
  set newValue ContinuousDeploymentPolicyConfigProperty {..}
    = ContinuousDeploymentPolicyConfigProperty {enabled = newValue, ..}
instance Property "SingleHeaderPolicyConfig" ContinuousDeploymentPolicyConfigProperty where
  type PropertyType "SingleHeaderPolicyConfig" ContinuousDeploymentPolicyConfigProperty = SingleHeaderPolicyConfigProperty
  set newValue ContinuousDeploymentPolicyConfigProperty {..}
    = ContinuousDeploymentPolicyConfigProperty
        {singleHeaderPolicyConfig = Prelude.pure newValue, ..}
instance Property "SingleWeightPolicyConfig" ContinuousDeploymentPolicyConfigProperty where
  type PropertyType "SingleWeightPolicyConfig" ContinuousDeploymentPolicyConfigProperty = SingleWeightPolicyConfigProperty
  set newValue ContinuousDeploymentPolicyConfigProperty {..}
    = ContinuousDeploymentPolicyConfigProperty
        {singleWeightPolicyConfig = Prelude.pure newValue, ..}
instance Property "StagingDistributionDnsNames" ContinuousDeploymentPolicyConfigProperty where
  type PropertyType "StagingDistributionDnsNames" ContinuousDeploymentPolicyConfigProperty = ValueList Prelude.Text
  set newValue ContinuousDeploymentPolicyConfigProperty {..}
    = ContinuousDeploymentPolicyConfigProperty
        {stagingDistributionDnsNames = newValue, ..}
instance Property "TrafficConfig" ContinuousDeploymentPolicyConfigProperty where
  type PropertyType "TrafficConfig" ContinuousDeploymentPolicyConfigProperty = TrafficConfigProperty
  set newValue ContinuousDeploymentPolicyConfigProperty {..}
    = ContinuousDeploymentPolicyConfigProperty
        {trafficConfig = Prelude.pure newValue, ..}
instance Property "Type" ContinuousDeploymentPolicyConfigProperty where
  type PropertyType "Type" ContinuousDeploymentPolicyConfigProperty = Value Prelude.Text
  set newValue ContinuousDeploymentPolicyConfigProperty {..}
    = ContinuousDeploymentPolicyConfigProperty
        {type' = Prelude.pure newValue, ..}