module Stratosphere.IoT.SecurityProfile (
        module Exports, SecurityProfile(..), mkSecurityProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.AlertTargetProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.BehaviorProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.SecurityProfile.MetricToRetainProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SecurityProfile
  = SecurityProfile {additionalMetricsToRetainV2 :: (Prelude.Maybe [MetricToRetainProperty]),
                     alertTargets :: (Prelude.Maybe (Prelude.Map Prelude.Text AlertTargetProperty)),
                     behaviors :: (Prelude.Maybe [BehaviorProperty]),
                     securityProfileDescription :: (Prelude.Maybe (Value Prelude.Text)),
                     securityProfileName :: (Prelude.Maybe (Value Prelude.Text)),
                     tags :: (Prelude.Maybe [Tag]),
                     targetArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityProfile :: SecurityProfile
mkSecurityProfile
  = SecurityProfile
      {additionalMetricsToRetainV2 = Prelude.Nothing,
       alertTargets = Prelude.Nothing, behaviors = Prelude.Nothing,
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