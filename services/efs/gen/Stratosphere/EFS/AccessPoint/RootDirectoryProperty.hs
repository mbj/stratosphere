module Stratosphere.EFS.AccessPoint.RootDirectoryProperty (
        module Exports, RootDirectoryProperty(..), mkRootDirectoryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EFS.AccessPoint.CreationInfoProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RootDirectoryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-rootdirectory.html>
    RootDirectoryProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-rootdirectory.html#cfn-efs-accesspoint-rootdirectory-creationinfo>
                           creationInfo :: (Prelude.Maybe CreationInfoProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-rootdirectory.html#cfn-efs-accesspoint-rootdirectory-path>
                           path :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRootDirectoryProperty :: RootDirectoryProperty
mkRootDirectoryProperty
  = RootDirectoryProperty
      {haddock_workaround_ = (), creationInfo = Prelude.Nothing,
       path = Prelude.Nothing}
instance ToResourceProperties RootDirectoryProperty where
  toResourceProperties RootDirectoryProperty {..}
    = ResourceProperties
        {awsType = "AWS::EFS::AccessPoint.RootDirectory",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CreationInfo" Prelude.<$> creationInfo,
                            (JSON..=) "Path" Prelude.<$> path])}
instance JSON.ToJSON RootDirectoryProperty where
  toJSON RootDirectoryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CreationInfo" Prelude.<$> creationInfo,
               (JSON..=) "Path" Prelude.<$> path]))
instance Property "CreationInfo" RootDirectoryProperty where
  type PropertyType "CreationInfo" RootDirectoryProperty = CreationInfoProperty
  set newValue RootDirectoryProperty {..}
    = RootDirectoryProperty {creationInfo = Prelude.pure newValue, ..}
instance Property "Path" RootDirectoryProperty where
  type PropertyType "Path" RootDirectoryProperty = Value Prelude.Text
  set newValue RootDirectoryProperty {..}
    = RootDirectoryProperty {path = Prelude.pure newValue, ..}