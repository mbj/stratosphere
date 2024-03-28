module Stratosphere.InspectorV2.CisScanConfiguration (
        module Exports, CisScanConfiguration(..), mkCisScanConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.CisScanConfiguration.CisTargetsProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.CisScanConfiguration.ScheduleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CisScanConfiguration
  = CisScanConfiguration {scanName :: (Prelude.Maybe (Value Prelude.Text)),
                          schedule :: (Prelude.Maybe ScheduleProperty),
                          securityLevel :: (Prelude.Maybe (Value Prelude.Text)),
                          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                          targets :: (Prelude.Maybe CisTargetsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCisScanConfiguration :: CisScanConfiguration
mkCisScanConfiguration
  = CisScanConfiguration
      {scanName = Prelude.Nothing, schedule = Prelude.Nothing,
       securityLevel = Prelude.Nothing, tags = Prelude.Nothing,
       targets = Prelude.Nothing}
instance ToResourceProperties CisScanConfiguration where
  toResourceProperties CisScanConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CisScanConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScanName" Prelude.<$> scanName,
                            (JSON..=) "Schedule" Prelude.<$> schedule,
                            (JSON..=) "SecurityLevel" Prelude.<$> securityLevel,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Targets" Prelude.<$> targets])}
instance JSON.ToJSON CisScanConfiguration where
  toJSON CisScanConfiguration {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScanName" Prelude.<$> scanName,
               (JSON..=) "Schedule" Prelude.<$> schedule,
               (JSON..=) "SecurityLevel" Prelude.<$> securityLevel,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Targets" Prelude.<$> targets]))
instance Property "ScanName" CisScanConfiguration where
  type PropertyType "ScanName" CisScanConfiguration = Value Prelude.Text
  set newValue CisScanConfiguration {..}
    = CisScanConfiguration {scanName = Prelude.pure newValue, ..}
instance Property "Schedule" CisScanConfiguration where
  type PropertyType "Schedule" CisScanConfiguration = ScheduleProperty
  set newValue CisScanConfiguration {..}
    = CisScanConfiguration {schedule = Prelude.pure newValue, ..}
instance Property "SecurityLevel" CisScanConfiguration where
  type PropertyType "SecurityLevel" CisScanConfiguration = Value Prelude.Text
  set newValue CisScanConfiguration {..}
    = CisScanConfiguration {securityLevel = Prelude.pure newValue, ..}
instance Property "Tags" CisScanConfiguration where
  type PropertyType "Tags" CisScanConfiguration = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CisScanConfiguration {..}
    = CisScanConfiguration {tags = Prelude.pure newValue, ..}
instance Property "Targets" CisScanConfiguration where
  type PropertyType "Targets" CisScanConfiguration = CisTargetsProperty
  set newValue CisScanConfiguration {..}
    = CisScanConfiguration {targets = Prelude.pure newValue, ..}