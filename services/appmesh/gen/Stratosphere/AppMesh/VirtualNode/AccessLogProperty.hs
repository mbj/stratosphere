module Stratosphere.AppMesh.VirtualNode.AccessLogProperty (
        module Exports, AccessLogProperty(..), mkAccessLogProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.FileAccessLogProperty as Exports
import Stratosphere.ResourceProperties
data AccessLogProperty
  = AccessLogProperty {file :: (Prelude.Maybe FileAccessLogProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccessLogProperty :: AccessLogProperty
mkAccessLogProperty = AccessLogProperty {file = Prelude.Nothing}
instance ToResourceProperties AccessLogProperty where
  toResourceProperties AccessLogProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.AccessLog",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "File" Prelude.<$> file])}
instance JSON.ToJSON AccessLogProperty where
  toJSON AccessLogProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "File" Prelude.<$> file]))
instance Property "File" AccessLogProperty where
  type PropertyType "File" AccessLogProperty = FileAccessLogProperty
  set newValue AccessLogProperty {}
    = AccessLogProperty {file = Prelude.pure newValue, ..}