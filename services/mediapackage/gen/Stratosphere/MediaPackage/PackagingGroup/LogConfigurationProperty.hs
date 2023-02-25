module Stratosphere.MediaPackage.PackagingGroup.LogConfigurationProperty (
        LogConfigurationProperty(..), mkLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogConfigurationProperty
  = LogConfigurationProperty {logGroupName :: (Prelude.Maybe (Value Prelude.Text))}
mkLogConfigurationProperty :: LogConfigurationProperty
mkLogConfigurationProperty
  = LogConfigurationProperty {logGroupName = Prelude.Nothing}
instance ToResourceProperties LogConfigurationProperty where
  toResourceProperties LogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingGroup.LogConfiguration",
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
  set newValue LogConfigurationProperty {}
    = LogConfigurationProperty
        {logGroupName = Prelude.pure newValue, ..}