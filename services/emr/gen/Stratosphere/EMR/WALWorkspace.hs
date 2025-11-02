module Stratosphere.EMR.WALWorkspace (
        WALWorkspace(..), mkWALWorkspace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data WALWorkspace
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-walworkspace.html>
    WALWorkspace {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-walworkspace.html#cfn-emr-walworkspace-tags>
                  tags :: (Prelude.Maybe [Tag]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emr-walworkspace.html#cfn-emr-walworkspace-walworkspacename>
                  wALWorkspaceName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWALWorkspace :: WALWorkspace
mkWALWorkspace
  = WALWorkspace
      {haddock_workaround_ = (), tags = Prelude.Nothing,
       wALWorkspaceName = Prelude.Nothing}
instance ToResourceProperties WALWorkspace where
  toResourceProperties WALWorkspace {..}
    = ResourceProperties
        {awsType = "AWS::EMR::WALWorkspace", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "WALWorkspaceName" Prelude.<$> wALWorkspaceName])}
instance JSON.ToJSON WALWorkspace where
  toJSON WALWorkspace {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "WALWorkspaceName" Prelude.<$> wALWorkspaceName]))
instance Property "Tags" WALWorkspace where
  type PropertyType "Tags" WALWorkspace = [Tag]
  set newValue WALWorkspace {..}
    = WALWorkspace {tags = Prelude.pure newValue, ..}
instance Property "WALWorkspaceName" WALWorkspace where
  type PropertyType "WALWorkspaceName" WALWorkspace = Value Prelude.Text
  set newValue WALWorkspace {..}
    = WALWorkspace {wALWorkspaceName = Prelude.pure newValue, ..}