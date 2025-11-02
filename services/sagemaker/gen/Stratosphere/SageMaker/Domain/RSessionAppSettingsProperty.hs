module Stratosphere.SageMaker.Domain.RSessionAppSettingsProperty (
        module Exports, RSessionAppSettingsProperty(..),
        mkRSessionAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.CustomImageProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
data RSessionAppSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-rsessionappsettings.html>
    RSessionAppSettingsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-rsessionappsettings.html#cfn-sagemaker-domain-rsessionappsettings-customimages>
                                 customImages :: (Prelude.Maybe [CustomImageProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-rsessionappsettings.html#cfn-sagemaker-domain-rsessionappsettings-defaultresourcespec>
                                 defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRSessionAppSettingsProperty :: RSessionAppSettingsProperty
mkRSessionAppSettingsProperty
  = RSessionAppSettingsProperty
      {haddock_workaround_ = (), customImages = Prelude.Nothing,
       defaultResourceSpec = Prelude.Nothing}
instance ToResourceProperties RSessionAppSettingsProperty where
  toResourceProperties RSessionAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.RSessionAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomImages" Prelude.<$> customImages,
                            (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec])}
instance JSON.ToJSON RSessionAppSettingsProperty where
  toJSON RSessionAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomImages" Prelude.<$> customImages,
               (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec]))
instance Property "CustomImages" RSessionAppSettingsProperty where
  type PropertyType "CustomImages" RSessionAppSettingsProperty = [CustomImageProperty]
  set newValue RSessionAppSettingsProperty {..}
    = RSessionAppSettingsProperty
        {customImages = Prelude.pure newValue, ..}
instance Property "DefaultResourceSpec" RSessionAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" RSessionAppSettingsProperty = ResourceSpecProperty
  set newValue RSessionAppSettingsProperty {..}
    = RSessionAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}