module Stratosphere.GuardDuty.Detector.CFNDataSourceConfigurationsProperty (
        module Exports, CFNDataSourceConfigurationsProperty(..),
        mkCFNDataSourceConfigurationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.Detector.CFNKubernetesConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GuardDuty.Detector.CFNMalwareProtectionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GuardDuty.Detector.CFNS3LogsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CFNDataSourceConfigurationsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html>
    CFNDataSourceConfigurationsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html#cfn-guardduty-detector-cfndatasourceconfigurations-kubernetes>
                                         kubernetes :: (Prelude.Maybe CFNKubernetesConfigurationProperty),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html#cfn-guardduty-detector-cfndatasourceconfigurations-malwareprotection>
                                         malwareProtection :: (Prelude.Maybe CFNMalwareProtectionConfigurationProperty),
                                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-detector-cfndatasourceconfigurations.html#cfn-guardduty-detector-cfndatasourceconfigurations-s3logs>
                                         s3Logs :: (Prelude.Maybe CFNS3LogsConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCFNDataSourceConfigurationsProperty ::
  CFNDataSourceConfigurationsProperty
mkCFNDataSourceConfigurationsProperty
  = CFNDataSourceConfigurationsProperty
      {kubernetes = Prelude.Nothing, malwareProtection = Prelude.Nothing,
       s3Logs = Prelude.Nothing}
instance ToResourceProperties CFNDataSourceConfigurationsProperty where
  toResourceProperties CFNDataSourceConfigurationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Detector.CFNDataSourceConfigurations",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Kubernetes" Prelude.<$> kubernetes,
                            (JSON..=) "MalwareProtection" Prelude.<$> malwareProtection,
                            (JSON..=) "S3Logs" Prelude.<$> s3Logs])}
instance JSON.ToJSON CFNDataSourceConfigurationsProperty where
  toJSON CFNDataSourceConfigurationsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Kubernetes" Prelude.<$> kubernetes,
               (JSON..=) "MalwareProtection" Prelude.<$> malwareProtection,
               (JSON..=) "S3Logs" Prelude.<$> s3Logs]))
instance Property "Kubernetes" CFNDataSourceConfigurationsProperty where
  type PropertyType "Kubernetes" CFNDataSourceConfigurationsProperty = CFNKubernetesConfigurationProperty
  set newValue CFNDataSourceConfigurationsProperty {..}
    = CFNDataSourceConfigurationsProperty
        {kubernetes = Prelude.pure newValue, ..}
instance Property "MalwareProtection" CFNDataSourceConfigurationsProperty where
  type PropertyType "MalwareProtection" CFNDataSourceConfigurationsProperty = CFNMalwareProtectionConfigurationProperty
  set newValue CFNDataSourceConfigurationsProperty {..}
    = CFNDataSourceConfigurationsProperty
        {malwareProtection = Prelude.pure newValue, ..}
instance Property "S3Logs" CFNDataSourceConfigurationsProperty where
  type PropertyType "S3Logs" CFNDataSourceConfigurationsProperty = CFNS3LogsConfigurationProperty
  set newValue CFNDataSourceConfigurationsProperty {..}
    = CFNDataSourceConfigurationsProperty
        {s3Logs = Prelude.pure newValue, ..}