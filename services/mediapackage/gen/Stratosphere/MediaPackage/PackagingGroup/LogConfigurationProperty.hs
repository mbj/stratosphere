module Stratosphere.MediaPackage.PackagingGroup.LogConfigurationProperty (
        LogConfigurationProperty(..), mkLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packaginggroup-logconfiguration.html>
    LogConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packaginggroup-logconfiguration.html#cfn-mediapackage-packaginggroup-logconfiguration-loggroupname>
                              logGroupName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogConfigurationProperty :: LogConfigurationProperty
mkLogConfigurationProperty
  = LogConfigurationProperty
      {haddock_workaround_ = (), logGroupName = Prelude.Nothing}
instance ToResourceProperties LogConfigurationProperty where
  toResourceProperties LogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingGroup.LogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogGroupName" Prelude.<$> logGroupName])}
instance JSON.ToJSON LogConfigurationProperty where
  toJSON LogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogGroupName" Prelude.<$> logGroupName]))
instance Property "LogGroupName" LogConfigurationProperty where
  type PropertyType "LogGroupName" LogConfigurationProperty = Value Prelude.Text
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty
        {logGroupName = Prelude.pure newValue, ..}