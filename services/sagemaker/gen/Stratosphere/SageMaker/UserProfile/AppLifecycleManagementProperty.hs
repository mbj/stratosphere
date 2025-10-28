module Stratosphere.SageMaker.UserProfile.AppLifecycleManagementProperty (
        module Exports, AppLifecycleManagementProperty(..),
        mkAppLifecycleManagementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.IdleSettingsProperty as Exports
import Stratosphere.ResourceProperties
data AppLifecycleManagementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-applifecyclemanagement.html>
    AppLifecycleManagementProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-applifecyclemanagement.html#cfn-sagemaker-userprofile-applifecyclemanagement-idlesettings>
                                    idleSettings :: (Prelude.Maybe IdleSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppLifecycleManagementProperty :: AppLifecycleManagementProperty
mkAppLifecycleManagementProperty
  = AppLifecycleManagementProperty
      {haddock_workaround_ = (), idleSettings = Prelude.Nothing}
instance ToResourceProperties AppLifecycleManagementProperty where
  toResourceProperties AppLifecycleManagementProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.AppLifecycleManagement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdleSettings" Prelude.<$> idleSettings])}
instance JSON.ToJSON AppLifecycleManagementProperty where
  toJSON AppLifecycleManagementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdleSettings" Prelude.<$> idleSettings]))
instance Property "IdleSettings" AppLifecycleManagementProperty where
  type PropertyType "IdleSettings" AppLifecycleManagementProperty = IdleSettingsProperty
  set newValue AppLifecycleManagementProperty {..}
    = AppLifecycleManagementProperty
        {idleSettings = Prelude.pure newValue, ..}