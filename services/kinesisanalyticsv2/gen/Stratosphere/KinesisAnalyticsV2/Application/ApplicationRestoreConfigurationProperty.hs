module Stratosphere.KinesisAnalyticsV2.Application.ApplicationRestoreConfigurationProperty (
        ApplicationRestoreConfigurationProperty(..),
        mkApplicationRestoreConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationRestoreConfigurationProperty
  = ApplicationRestoreConfigurationProperty {applicationRestoreType :: (Value Prelude.Text),
                                             snapshotName :: (Prelude.Maybe (Value Prelude.Text))}
mkApplicationRestoreConfigurationProperty ::
  Value Prelude.Text -> ApplicationRestoreConfigurationProperty
mkApplicationRestoreConfigurationProperty applicationRestoreType
  = ApplicationRestoreConfigurationProperty
      {applicationRestoreType = applicationRestoreType,
       snapshotName = Prelude.Nothing}
instance ToResourceProperties ApplicationRestoreConfigurationProperty where
  toResourceProperties ApplicationRestoreConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.ApplicationRestoreConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationRestoreType" JSON..= applicationRestoreType]
                           (Prelude.catMaybes
                              [(JSON..=) "SnapshotName" Prelude.<$> snapshotName]))}
instance JSON.ToJSON ApplicationRestoreConfigurationProperty where
  toJSON ApplicationRestoreConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationRestoreType" JSON..= applicationRestoreType]
              (Prelude.catMaybes
                 [(JSON..=) "SnapshotName" Prelude.<$> snapshotName])))
instance Property "ApplicationRestoreType" ApplicationRestoreConfigurationProperty where
  type PropertyType "ApplicationRestoreType" ApplicationRestoreConfigurationProperty = Value Prelude.Text
  set newValue ApplicationRestoreConfigurationProperty {..}
    = ApplicationRestoreConfigurationProperty
        {applicationRestoreType = newValue, ..}
instance Property "SnapshotName" ApplicationRestoreConfigurationProperty where
  type PropertyType "SnapshotName" ApplicationRestoreConfigurationProperty = Value Prelude.Text
  set newValue ApplicationRestoreConfigurationProperty {..}
    = ApplicationRestoreConfigurationProperty
        {snapshotName = Prelude.pure newValue, ..}