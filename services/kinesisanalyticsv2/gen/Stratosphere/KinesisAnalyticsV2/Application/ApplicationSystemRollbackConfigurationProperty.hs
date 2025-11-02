module Stratosphere.KinesisAnalyticsV2.Application.ApplicationSystemRollbackConfigurationProperty (
        ApplicationSystemRollbackConfigurationProperty(..),
        mkApplicationSystemRollbackConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationSystemRollbackConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationsystemrollbackconfiguration.html>
    ApplicationSystemRollbackConfigurationProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationsystemrollbackconfiguration.html#cfn-kinesisanalyticsv2-application-applicationsystemrollbackconfiguration-rollbackenabled>
                                                    rollbackEnabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationSystemRollbackConfigurationProperty ::
  Value Prelude.Bool
  -> ApplicationSystemRollbackConfigurationProperty
mkApplicationSystemRollbackConfigurationProperty rollbackEnabled
  = ApplicationSystemRollbackConfigurationProperty
      {haddock_workaround_ = (), rollbackEnabled = rollbackEnabled}
instance ToResourceProperties ApplicationSystemRollbackConfigurationProperty where
  toResourceProperties
    ApplicationSystemRollbackConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.ApplicationSystemRollbackConfiguration",
         supportsTags = Prelude.False,
         properties = ["RollbackEnabled" JSON..= rollbackEnabled]}
instance JSON.ToJSON ApplicationSystemRollbackConfigurationProperty where
  toJSON ApplicationSystemRollbackConfigurationProperty {..}
    = JSON.object ["RollbackEnabled" JSON..= rollbackEnabled]
instance Property "RollbackEnabled" ApplicationSystemRollbackConfigurationProperty where
  type PropertyType "RollbackEnabled" ApplicationSystemRollbackConfigurationProperty = Value Prelude.Bool
  set newValue ApplicationSystemRollbackConfigurationProperty {..}
    = ApplicationSystemRollbackConfigurationProperty
        {rollbackEnabled = newValue, ..}