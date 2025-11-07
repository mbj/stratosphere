module Stratosphere.SageMaker.Domain.StudioWebPortalSettingsProperty (
        module Exports, StudioWebPortalSettingsProperty(..),
        mkStudioWebPortalSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.HiddenSageMakerImageProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StudioWebPortalSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html>
    StudioWebPortalSettingsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html#cfn-sagemaker-domain-studiowebportalsettings-hiddenapptypes>
                                     hiddenAppTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html#cfn-sagemaker-domain-studiowebportalsettings-hiddeninstancetypes>
                                     hiddenInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html#cfn-sagemaker-domain-studiowebportalsettings-hiddenmltools>
                                     hiddenMlTools :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-studiowebportalsettings.html#cfn-sagemaker-domain-studiowebportalsettings-hiddensagemakerimageversionaliases>
                                     hiddenSageMakerImageVersionAliases :: (Prelude.Maybe [HiddenSageMakerImageProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStudioWebPortalSettingsProperty ::
  StudioWebPortalSettingsProperty
mkStudioWebPortalSettingsProperty
  = StudioWebPortalSettingsProperty
      {haddock_workaround_ = (), hiddenAppTypes = Prelude.Nothing,
       hiddenInstanceTypes = Prelude.Nothing,
       hiddenMlTools = Prelude.Nothing,
       hiddenSageMakerImageVersionAliases = Prelude.Nothing}
instance ToResourceProperties StudioWebPortalSettingsProperty where
  toResourceProperties StudioWebPortalSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.StudioWebPortalSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HiddenAppTypes" Prelude.<$> hiddenAppTypes,
                            (JSON..=) "HiddenInstanceTypes" Prelude.<$> hiddenInstanceTypes,
                            (JSON..=) "HiddenMlTools" Prelude.<$> hiddenMlTools,
                            (JSON..=) "HiddenSageMakerImageVersionAliases"
                              Prelude.<$> hiddenSageMakerImageVersionAliases])}
instance JSON.ToJSON StudioWebPortalSettingsProperty where
  toJSON StudioWebPortalSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HiddenAppTypes" Prelude.<$> hiddenAppTypes,
               (JSON..=) "HiddenInstanceTypes" Prelude.<$> hiddenInstanceTypes,
               (JSON..=) "HiddenMlTools" Prelude.<$> hiddenMlTools,
               (JSON..=) "HiddenSageMakerImageVersionAliases"
                 Prelude.<$> hiddenSageMakerImageVersionAliases]))
instance Property "HiddenAppTypes" StudioWebPortalSettingsProperty where
  type PropertyType "HiddenAppTypes" StudioWebPortalSettingsProperty = ValueList Prelude.Text
  set newValue StudioWebPortalSettingsProperty {..}
    = StudioWebPortalSettingsProperty
        {hiddenAppTypes = Prelude.pure newValue, ..}
instance Property "HiddenInstanceTypes" StudioWebPortalSettingsProperty where
  type PropertyType "HiddenInstanceTypes" StudioWebPortalSettingsProperty = ValueList Prelude.Text
  set newValue StudioWebPortalSettingsProperty {..}
    = StudioWebPortalSettingsProperty
        {hiddenInstanceTypes = Prelude.pure newValue, ..}
instance Property "HiddenMlTools" StudioWebPortalSettingsProperty where
  type PropertyType "HiddenMlTools" StudioWebPortalSettingsProperty = ValueList Prelude.Text
  set newValue StudioWebPortalSettingsProperty {..}
    = StudioWebPortalSettingsProperty
        {hiddenMlTools = Prelude.pure newValue, ..}
instance Property "HiddenSageMakerImageVersionAliases" StudioWebPortalSettingsProperty where
  type PropertyType "HiddenSageMakerImageVersionAliases" StudioWebPortalSettingsProperty = [HiddenSageMakerImageProperty]
  set newValue StudioWebPortalSettingsProperty {..}
    = StudioWebPortalSettingsProperty
        {hiddenSageMakerImageVersionAliases = Prelude.pure newValue, ..}