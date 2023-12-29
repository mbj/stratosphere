module Stratosphere.CloudFront.ContinuousDeploymentPolicy.ContinuousDeploymentPolicyConfigProperty (
        module Exports, ContinuousDeploymentPolicyConfigProperty(..),
        mkContinuousDeploymentPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.ContinuousDeploymentPolicy.TrafficConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContinuousDeploymentPolicyConfigProperty
  = ContinuousDeploymentPolicyConfigProperty {enabled :: (Value Prelude.Bool),
                                              stagingDistributionDnsNames :: (ValueList Prelude.Text),
                                              trafficConfig :: (Prelude.Maybe TrafficConfigProperty)}
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
       trafficConfig = Prelude.Nothing}
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
                              [(JSON..=) "TrafficConfig" Prelude.<$> trafficConfig]))}
instance JSON.ToJSON ContinuousDeploymentPolicyConfigProperty where
  toJSON ContinuousDeploymentPolicyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled,
               "StagingDistributionDnsNames" JSON..= stagingDistributionDnsNames]
              (Prelude.catMaybes
                 [(JSON..=) "TrafficConfig" Prelude.<$> trafficConfig])))
instance Property "Enabled" ContinuousDeploymentPolicyConfigProperty where
  type PropertyType "Enabled" ContinuousDeploymentPolicyConfigProperty = Value Prelude.Bool
  set newValue ContinuousDeploymentPolicyConfigProperty {..}
    = ContinuousDeploymentPolicyConfigProperty {enabled = newValue, ..}
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