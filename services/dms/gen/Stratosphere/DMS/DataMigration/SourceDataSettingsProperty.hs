module Stratosphere.DMS.DataMigration.SourceDataSettingsProperty (
        SourceDataSettingsProperty(..), mkSourceDataSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceDataSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-datamigration-sourcedatasettings.html>
    SourceDataSettingsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-datamigration-sourcedatasettings.html#cfn-dms-datamigration-sourcedatasettings-cdcstartposition>
                                cDCStartPosition :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-datamigration-sourcedatasettings.html#cfn-dms-datamigration-sourcedatasettings-cdcstarttime>
                                cDCStartTime :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-datamigration-sourcedatasettings.html#cfn-dms-datamigration-sourcedatasettings-cdcstoptime>
                                cDCStopTime :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-datamigration-sourcedatasettings.html#cfn-dms-datamigration-sourcedatasettings-slotname>
                                slotName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceDataSettingsProperty :: SourceDataSettingsProperty
mkSourceDataSettingsProperty
  = SourceDataSettingsProperty
      {haddock_workaround_ = (), cDCStartPosition = Prelude.Nothing,
       cDCStartTime = Prelude.Nothing, cDCStopTime = Prelude.Nothing,
       slotName = Prelude.Nothing}
instance ToResourceProperties SourceDataSettingsProperty where
  toResourceProperties SourceDataSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::DataMigration.SourceDataSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CDCStartPosition" Prelude.<$> cDCStartPosition,
                            (JSON..=) "CDCStartTime" Prelude.<$> cDCStartTime,
                            (JSON..=) "CDCStopTime" Prelude.<$> cDCStopTime,
                            (JSON..=) "SlotName" Prelude.<$> slotName])}
instance JSON.ToJSON SourceDataSettingsProperty where
  toJSON SourceDataSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CDCStartPosition" Prelude.<$> cDCStartPosition,
               (JSON..=) "CDCStartTime" Prelude.<$> cDCStartTime,
               (JSON..=) "CDCStopTime" Prelude.<$> cDCStopTime,
               (JSON..=) "SlotName" Prelude.<$> slotName]))
instance Property "CDCStartPosition" SourceDataSettingsProperty where
  type PropertyType "CDCStartPosition" SourceDataSettingsProperty = Value Prelude.Text
  set newValue SourceDataSettingsProperty {..}
    = SourceDataSettingsProperty
        {cDCStartPosition = Prelude.pure newValue, ..}
instance Property "CDCStartTime" SourceDataSettingsProperty where
  type PropertyType "CDCStartTime" SourceDataSettingsProperty = Value Prelude.Text
  set newValue SourceDataSettingsProperty {..}
    = SourceDataSettingsProperty
        {cDCStartTime = Prelude.pure newValue, ..}
instance Property "CDCStopTime" SourceDataSettingsProperty where
  type PropertyType "CDCStopTime" SourceDataSettingsProperty = Value Prelude.Text
  set newValue SourceDataSettingsProperty {..}
    = SourceDataSettingsProperty
        {cDCStopTime = Prelude.pure newValue, ..}
instance Property "SlotName" SourceDataSettingsProperty where
  type PropertyType "SlotName" SourceDataSettingsProperty = Value Prelude.Text
  set newValue SourceDataSettingsProperty {..}
    = SourceDataSettingsProperty {slotName = Prelude.pure newValue, ..}