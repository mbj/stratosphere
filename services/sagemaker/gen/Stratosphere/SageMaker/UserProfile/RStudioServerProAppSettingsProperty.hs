module Stratosphere.SageMaker.UserProfile.RStudioServerProAppSettingsProperty (
        RStudioServerProAppSettingsProperty(..),
        mkRStudioServerProAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RStudioServerProAppSettingsProperty
  = RStudioServerProAppSettingsProperty {accessStatus :: (Prelude.Maybe (Value Prelude.Text)),
                                         userGroup :: (Prelude.Maybe (Value Prelude.Text))}
mkRStudioServerProAppSettingsProperty ::
  RStudioServerProAppSettingsProperty
mkRStudioServerProAppSettingsProperty
  = RStudioServerProAppSettingsProperty
      {accessStatus = Prelude.Nothing, userGroup = Prelude.Nothing}
instance ToResourceProperties RStudioServerProAppSettingsProperty where
  toResourceProperties RStudioServerProAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.RStudioServerProAppSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessStatus" Prelude.<$> accessStatus,
                            (JSON..=) "UserGroup" Prelude.<$> userGroup])}
instance JSON.ToJSON RStudioServerProAppSettingsProperty where
  toJSON RStudioServerProAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessStatus" Prelude.<$> accessStatus,
               (JSON..=) "UserGroup" Prelude.<$> userGroup]))
instance Property "AccessStatus" RStudioServerProAppSettingsProperty where
  type PropertyType "AccessStatus" RStudioServerProAppSettingsProperty = Value Prelude.Text
  set newValue RStudioServerProAppSettingsProperty {..}
    = RStudioServerProAppSettingsProperty
        {accessStatus = Prelude.pure newValue, ..}
instance Property "UserGroup" RStudioServerProAppSettingsProperty where
  type PropertyType "UserGroup" RStudioServerProAppSettingsProperty = Value Prelude.Text
  set newValue RStudioServerProAppSettingsProperty {..}
    = RStudioServerProAppSettingsProperty
        {userGroup = Prelude.pure newValue, ..}