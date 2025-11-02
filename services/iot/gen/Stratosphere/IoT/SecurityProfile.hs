module Stratosphere.IoT.SecurityProfile (
        module Exports, SecurityProfile(..), mkSecurityProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.AlertTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.BehaviorProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.MetricToRetainProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.MetricsExportConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SecurityProfile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-securityprofile.html>
    SecurityProfile {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-securityprofile.html#cfn-iot-securityprofile-additionalmetricstoretainv2>
                     additionalMetricsToRetainV2 :: (Prelude.Maybe [MetricToRetainProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-securityprofile.html#cfn-iot-securityprofile-alerttargets>
                     alertTargets :: (Prelude.Maybe (Prelude.Map Prelude.Text AlertTargetProperty)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-securityprofile.html#cfn-iot-securityprofile-behaviors>
                     behaviors :: (Prelude.Maybe [BehaviorProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-securityprofile.html#cfn-iot-securityprofile-metricsexportconfig>
                     metricsExportConfig :: (Prelude.Maybe MetricsExportConfigProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-securityprofile.html#cfn-iot-securityprofile-securityprofiledescription>
                     securityProfileDescription :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-securityprofile.html#cfn-iot-securityprofile-securityprofilename>
                     securityProfileName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-securityprofile.html#cfn-iot-securityprofile-tags>
                     tags :: (Prelude.Maybe [Tag]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-securityprofile.html#cfn-iot-securityprofile-targetarns>
                     targetArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityProfile :: SecurityProfile
mkSecurityProfile
  = SecurityProfile
      {haddock_workaround_ = (),
       additionalMetricsToRetainV2 = Prelude.Nothing,
       alertTargets = Prelude.Nothing, behaviors = Prelude.Nothing,
       metricsExportConfig = Prelude.Nothing,
       securityProfileDescription = Prelude.Nothing,
       securityProfileName = Prelude.Nothing, tags = Prelude.Nothing,
       targetArns = Prelude.Nothing}
instance ToResourceProperties SecurityProfile where
  toResourceProperties SecurityProfile {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SecurityProfile",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalMetricsToRetainV2"
                              Prelude.<$> additionalMetricsToRetainV2,
                            (JSON..=) "AlertTargets" Prelude.<$> alertTargets,
                            (JSON..=) "Behaviors" Prelude.<$> behaviors,
                            (JSON..=) "MetricsExportConfig" Prelude.<$> metricsExportConfig,
                            (JSON..=) "SecurityProfileDescription"
                              Prelude.<$> securityProfileDescription,
                            (JSON..=) "SecurityProfileName" Prelude.<$> securityProfileName,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TargetArns" Prelude.<$> targetArns])}
instance JSON.ToJSON SecurityProfile where
  toJSON SecurityProfile {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalMetricsToRetainV2"
                 Prelude.<$> additionalMetricsToRetainV2,
               (JSON..=) "AlertTargets" Prelude.<$> alertTargets,
               (JSON..=) "Behaviors" Prelude.<$> behaviors,
               (JSON..=) "MetricsExportConfig" Prelude.<$> metricsExportConfig,
               (JSON..=) "SecurityProfileDescription"
                 Prelude.<$> securityProfileDescription,
               (JSON..=) "SecurityProfileName" Prelude.<$> securityProfileName,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TargetArns" Prelude.<$> targetArns]))
instance Property "AdditionalMetricsToRetainV2" SecurityProfile where
  type PropertyType "AdditionalMetricsToRetainV2" SecurityProfile = [MetricToRetainProperty]
  set newValue SecurityProfile {..}
    = SecurityProfile
        {additionalMetricsToRetainV2 = Prelude.pure newValue, ..}
instance Property "AlertTargets" SecurityProfile where
  type PropertyType "AlertTargets" SecurityProfile = Prelude.Map Prelude.Text AlertTargetProperty
  set newValue SecurityProfile {..}
    = SecurityProfile {alertTargets = Prelude.pure newValue, ..}
instance Property "Behaviors" SecurityProfile where
  type PropertyType "Behaviors" SecurityProfile = [BehaviorProperty]
  set newValue SecurityProfile {..}
    = SecurityProfile {behaviors = Prelude.pure newValue, ..}
instance Property "MetricsExportConfig" SecurityProfile where
  type PropertyType "MetricsExportConfig" SecurityProfile = MetricsExportConfigProperty
  set newValue SecurityProfile {..}
    = SecurityProfile {metricsExportConfig = Prelude.pure newValue, ..}
instance Property "SecurityProfileDescription" SecurityProfile where
  type PropertyType "SecurityProfileDescription" SecurityProfile = Value Prelude.Text
  set newValue SecurityProfile {..}
    = SecurityProfile
        {securityProfileDescription = Prelude.pure newValue, ..}
instance Property "SecurityProfileName" SecurityProfile where
  type PropertyType "SecurityProfileName" SecurityProfile = Value Prelude.Text
  set newValue SecurityProfile {..}
    = SecurityProfile {securityProfileName = Prelude.pure newValue, ..}
instance Property "Tags" SecurityProfile where
  type PropertyType "Tags" SecurityProfile = [Tag]
  set newValue SecurityProfile {..}
    = SecurityProfile {tags = Prelude.pure newValue, ..}
instance Property "TargetArns" SecurityProfile where
  type PropertyType "TargetArns" SecurityProfile = ValueList Prelude.Text
  set newValue SecurityProfile {..}
    = SecurityProfile {targetArns = Prelude.pure newValue, ..}