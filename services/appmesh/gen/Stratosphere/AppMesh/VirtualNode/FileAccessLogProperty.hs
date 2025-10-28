module Stratosphere.AppMesh.VirtualNode.FileAccessLogProperty (
        module Exports, FileAccessLogProperty(..), mkFileAccessLogProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.LoggingFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FileAccessLogProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-fileaccesslog.html>
    FileAccessLogProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-fileaccesslog.html#cfn-appmesh-virtualnode-fileaccesslog-format>
                           format :: (Prelude.Maybe LoggingFormatProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-fileaccesslog.html#cfn-appmesh-virtualnode-fileaccesslog-path>
                           path :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileAccessLogProperty ::
  Value Prelude.Text -> FileAccessLogProperty
mkFileAccessLogProperty path
  = FileAccessLogProperty
      {haddock_workaround_ = (), path = path, format = Prelude.Nothing}
instance ToResourceProperties FileAccessLogProperty where
  toResourceProperties FileAccessLogProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.FileAccessLog",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Path" JSON..= path]
                           (Prelude.catMaybes [(JSON..=) "Format" Prelude.<$> format]))}
instance JSON.ToJSON FileAccessLogProperty where
  toJSON FileAccessLogProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Path" JSON..= path]
              (Prelude.catMaybes [(JSON..=) "Format" Prelude.<$> format])))
instance Property "Format" FileAccessLogProperty where
  type PropertyType "Format" FileAccessLogProperty = LoggingFormatProperty
  set newValue FileAccessLogProperty {..}
    = FileAccessLogProperty {format = Prelude.pure newValue, ..}
instance Property "Path" FileAccessLogProperty where
  type PropertyType "Path" FileAccessLogProperty = Value Prelude.Text
  set newValue FileAccessLogProperty {..}
    = FileAccessLogProperty {path = newValue, ..}