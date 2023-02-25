module Stratosphere.GuardDuty.Detector.CFNScanEc2InstanceWithFindingsConfigurationProperty (
        CFNScanEc2InstanceWithFindingsConfigurationProperty(..),
        mkCFNScanEc2InstanceWithFindingsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CFNScanEc2InstanceWithFindingsConfigurationProperty
  = CFNScanEc2InstanceWithFindingsConfigurationProperty {ebsVolumes :: (Prelude.Maybe (Value Prelude.Bool))}
mkCFNScanEc2InstanceWithFindingsConfigurationProperty ::
  CFNScanEc2InstanceWithFindingsConfigurationProperty
mkCFNScanEc2InstanceWithFindingsConfigurationProperty
  = CFNScanEc2InstanceWithFindingsConfigurationProperty
      {ebsVolumes = Prelude.Nothing}
instance ToResourceProperties CFNScanEc2InstanceWithFindingsConfigurationProperty where
  toResourceProperties
    CFNScanEc2InstanceWithFindingsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Detector.CFNScanEc2InstanceWithFindingsConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EbsVolumes" Prelude.<$> ebsVolumes])}
instance JSON.ToJSON CFNScanEc2InstanceWithFindingsConfigurationProperty where
  toJSON CFNScanEc2InstanceWithFindingsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EbsVolumes" Prelude.<$> ebsVolumes]))
instance Property "EbsVolumes" CFNScanEc2InstanceWithFindingsConfigurationProperty where
  type PropertyType "EbsVolumes" CFNScanEc2InstanceWithFindingsConfigurationProperty = Value Prelude.Bool
  set newValue CFNScanEc2InstanceWithFindingsConfigurationProperty {}
    = CFNScanEc2InstanceWithFindingsConfigurationProperty
        {ebsVolumes = Prelude.pure newValue, ..}