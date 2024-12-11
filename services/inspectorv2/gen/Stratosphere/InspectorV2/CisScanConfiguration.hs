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
  = CisScanConfiguration {scanName :: (Value Prelude.Text),
                          schedule :: ScheduleProperty,
                          securityLevel :: (Value Prelude.Text),
                          tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                          targets :: CisTargetsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCisScanConfiguration ::
  Value Prelude.Text
  -> ScheduleProperty
     -> Value Prelude.Text -> CisTargetsProperty -> CisScanConfiguration
mkCisScanConfiguration scanName schedule securityLevel targets
  = CisScanConfiguration
      {scanName = scanName, schedule = schedule,
       securityLevel = securityLevel, targets = targets,
       tags = Prelude.Nothing}
instance ToResourceProperties CisScanConfiguration where
  toResourceProperties CisScanConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CisScanConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ScanName" JSON..= scanName, "Schedule" JSON..= schedule,
                            "SecurityLevel" JSON..= securityLevel, "Targets" JSON..= targets]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CisScanConfiguration where
  toJSON CisScanConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ScanName" JSON..= scanName, "Schedule" JSON..= schedule,
               "SecurityLevel" JSON..= securityLevel, "Targets" JSON..= targets]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ScanName" CisScanConfiguration where
  type PropertyType "ScanName" CisScanConfiguration = Value Prelude.Text
  set newValue CisScanConfiguration {..}
    = CisScanConfiguration {scanName = newValue, ..}
instance Property "Schedule" CisScanConfiguration where
  type PropertyType "Schedule" CisScanConfiguration = ScheduleProperty
  set newValue CisScanConfiguration {..}
    = CisScanConfiguration {schedule = newValue, ..}
instance Property "SecurityLevel" CisScanConfiguration where
  type PropertyType "SecurityLevel" CisScanConfiguration = Value Prelude.Text
  set newValue CisScanConfiguration {..}
    = CisScanConfiguration {securityLevel = newValue, ..}
instance Property "Tags" CisScanConfiguration where
  type PropertyType "Tags" CisScanConfiguration = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CisScanConfiguration {..}
    = CisScanConfiguration {tags = Prelude.pure newValue, ..}
instance Property "Targets" CisScanConfiguration where
  type PropertyType "Targets" CisScanConfiguration = CisTargetsProperty
  set newValue CisScanConfiguration {..}
    = CisScanConfiguration {targets = newValue, ..}