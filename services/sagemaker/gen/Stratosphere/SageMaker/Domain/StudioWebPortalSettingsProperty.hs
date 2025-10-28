module Stratosphere.SageMaker.Domain.StudioWebPortalSettingsProperty (
        StudioWebPortalSettingsProperty(..),
        mkStudioWebPortalSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StudioWebPortalSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html>
    StudioWebPortalSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html#cfn-sagemaker-domain-studiowebportalsettings-hiddenapptypes>
                                     hiddenAppTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html#cfn-sagemaker-domain-studiowebportalsettings-hiddenmltools>
                                     hiddenMlTools :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStudioWebPortalSettingsProperty ::
  StudioWebPortalSettingsProperty
mkStudioWebPortalSettingsProperty
  = StudioWebPortalSettingsProperty
      {hiddenAppTypes = Prelude.Nothing, hiddenMlTools = Prelude.Nothing}
instance ToResourceProperties StudioWebPortalSettingsProperty where
  toResourceProperties StudioWebPortalSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.StudioWebPortalSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HiddenAppTypes" Prelude.<$> hiddenAppTypes,
                            (JSON..=) "HiddenMlTools" Prelude.<$> hiddenMlTools])}
instance JSON.ToJSON StudioWebPortalSettingsProperty where
  toJSON StudioWebPortalSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HiddenAppTypes" Prelude.<$> hiddenAppTypes,
               (JSON..=) "HiddenMlTools" Prelude.<$> hiddenMlTools]))
instance Property "HiddenAppTypes" StudioWebPortalSettingsProperty where
  type PropertyType "HiddenAppTypes" StudioWebPortalSettingsProperty = ValueList Prelude.Text
  set newValue StudioWebPortalSettingsProperty {..}
    = StudioWebPortalSettingsProperty
        {hiddenAppTypes = Prelude.pure newValue, ..}
instance Property "HiddenMlTools" StudioWebPortalSettingsProperty where
  type PropertyType "HiddenMlTools" StudioWebPortalSettingsProperty = ValueList Prelude.Text
  set newValue StudioWebPortalSettingsProperty {..}
    = StudioWebPortalSettingsProperty
        {hiddenMlTools = Prelude.pure newValue, ..}