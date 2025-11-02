module Stratosphere.SageMaker.Space.SpaceIdleSettingsProperty (
        SpaceIdleSettingsProperty(..), mkSpaceIdleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpaceIdleSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spaceidlesettings.html>
    SpaceIdleSettingsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spaceidlesettings.html#cfn-sagemaker-space-spaceidlesettings-idletimeoutinminutes>
                               idleTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpaceIdleSettingsProperty :: SpaceIdleSettingsProperty
mkSpaceIdleSettingsProperty
  = SpaceIdleSettingsProperty
      {haddock_workaround_ = (), idleTimeoutInMinutes = Prelude.Nothing}
instance ToResourceProperties SpaceIdleSettingsProperty where
  toResourceProperties SpaceIdleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.SpaceIdleSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdleTimeoutInMinutes"
                              Prelude.<$> idleTimeoutInMinutes])}
instance JSON.ToJSON SpaceIdleSettingsProperty where
  toJSON SpaceIdleSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdleTimeoutInMinutes"
                 Prelude.<$> idleTimeoutInMinutes]))
instance Property "IdleTimeoutInMinutes" SpaceIdleSettingsProperty where
  type PropertyType "IdleTimeoutInMinutes" SpaceIdleSettingsProperty = Value Prelude.Integer
  set newValue SpaceIdleSettingsProperty {..}
    = SpaceIdleSettingsProperty
        {idleTimeoutInMinutes = Prelude.pure newValue, ..}