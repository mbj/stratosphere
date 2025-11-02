module Stratosphere.AppMesh.VirtualNode.LoggingProperty (
        module Exports, LoggingProperty(..), mkLoggingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.AccessLogProperty as Exports
import Stratosphere.ResourceProperties
data LoggingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-logging.html>
    LoggingProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-logging.html#cfn-appmesh-virtualnode-logging-accesslog>
                     accessLog :: (Prelude.Maybe AccessLogProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingProperty :: LoggingProperty
mkLoggingProperty
  = LoggingProperty
      {haddock_workaround_ = (), accessLog = Prelude.Nothing}
instance ToResourceProperties LoggingProperty where
  toResourceProperties LoggingProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.Logging",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "AccessLog" Prelude.<$> accessLog])}
instance JSON.ToJSON LoggingProperty where
  toJSON LoggingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "AccessLog" Prelude.<$> accessLog]))
instance Property "AccessLog" LoggingProperty where
  type PropertyType "AccessLog" LoggingProperty = AccessLogProperty
  set newValue LoggingProperty {..}
    = LoggingProperty {accessLog = Prelude.pure newValue, ..}