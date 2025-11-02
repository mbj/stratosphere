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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationrestoreconfiguration.html>
    ApplicationRestoreConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationrestoreconfiguration.html#cfn-kinesisanalyticsv2-application-applicationrestoreconfiguration-applicationrestoretype>
                                             applicationRestoreType :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationrestoreconfiguration.html#cfn-kinesisanalyticsv2-application-applicationrestoreconfiguration-snapshotname>
                                             snapshotName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationRestoreConfigurationProperty ::
  Value Prelude.Text -> ApplicationRestoreConfigurationProperty
mkApplicationRestoreConfigurationProperty applicationRestoreType
  = ApplicationRestoreConfigurationProperty
      {haddock_workaround_ = (),
       applicationRestoreType = applicationRestoreType,
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