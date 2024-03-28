module Stratosphere.SageMaker.UserProfile.CustomFileSystemConfigProperty (
        module Exports, CustomFileSystemConfigProperty(..),
        mkCustomFileSystemConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.EFSFileSystemConfigProperty as Exports
import Stratosphere.ResourceProperties
data CustomFileSystemConfigProperty
  = CustomFileSystemConfigProperty {eFSFileSystemConfig :: (Prelude.Maybe EFSFileSystemConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomFileSystemConfigProperty :: CustomFileSystemConfigProperty
mkCustomFileSystemConfigProperty
  = CustomFileSystemConfigProperty
      {eFSFileSystemConfig = Prelude.Nothing}
instance ToResourceProperties CustomFileSystemConfigProperty where
  toResourceProperties CustomFileSystemConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.CustomFileSystemConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EFSFileSystemConfig" Prelude.<$> eFSFileSystemConfig])}
instance JSON.ToJSON CustomFileSystemConfigProperty where
  toJSON CustomFileSystemConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EFSFileSystemConfig" Prelude.<$> eFSFileSystemConfig]))
instance Property "EFSFileSystemConfig" CustomFileSystemConfigProperty where
  type PropertyType "EFSFileSystemConfig" CustomFileSystemConfigProperty = EFSFileSystemConfigProperty
  set newValue CustomFileSystemConfigProperty {}
    = CustomFileSystemConfigProperty
        {eFSFileSystemConfig = Prelude.pure newValue, ..}