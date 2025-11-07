module Stratosphere.WorkSpacesWeb.SessionLogger.LogConfigurationProperty (
        module Exports, LogConfigurationProperty(..),
        mkLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkSpacesWeb.SessionLogger.S3LogConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data LogConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-logconfiguration.html>
    LogConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-logconfiguration.html#cfn-workspacesweb-sessionlogger-logconfiguration-s3>
                              s3 :: (Prelude.Maybe S3LogConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogConfigurationProperty :: LogConfigurationProperty
mkLogConfigurationProperty
  = LogConfigurationProperty
      {haddock_workaround_ = (), s3 = Prelude.Nothing}
instance ToResourceProperties LogConfigurationProperty where
  toResourceProperties LogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::SessionLogger.LogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON LogConfigurationProperty where
  toJSON LogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3" Prelude.<$> s3]))
instance Property "S3" LogConfigurationProperty where
  type PropertyType "S3" LogConfigurationProperty = S3LogConfigurationProperty
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty {s3 = Prelude.pure newValue, ..}