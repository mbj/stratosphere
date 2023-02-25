module Stratosphere.AppMesh.VirtualNode.LoggingProperty (
        module Exports, LoggingProperty(..), mkLoggingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.AccessLogProperty as Exports
import Stratosphere.ResourceProperties
data LoggingProperty
  = LoggingProperty {accessLog :: (Prelude.Maybe AccessLogProperty)}
mkLoggingProperty :: LoggingProperty
mkLoggingProperty = LoggingProperty {accessLog = Prelude.Nothing}
instance ToResourceProperties LoggingProperty where
  toResourceProperties LoggingProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.Logging",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "AccessLog" Prelude.<$> accessLog])}
instance JSON.ToJSON LoggingProperty where
  toJSON LoggingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "AccessLog" Prelude.<$> accessLog]))
instance Property "AccessLog" LoggingProperty where
  type PropertyType "AccessLog" LoggingProperty = AccessLogProperty
  set newValue LoggingProperty {}
    = LoggingProperty {accessLog = Prelude.pure newValue, ..}