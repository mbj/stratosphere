module Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateExperimentOptionsProperty (
        ExperimentTemplateExperimentOptionsProperty(..),
        mkExperimentTemplateExperimentOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExperimentTemplateExperimentOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateexperimentoptions.html>
    ExperimentTemplateExperimentOptionsProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateexperimentoptions.html#cfn-fis-experimenttemplate-experimenttemplateexperimentoptions-accounttargeting>
                                                 accountTargeting :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateexperimentoptions.html#cfn-fis-experimenttemplate-experimenttemplateexperimentoptions-emptytargetresolutionmode>
                                                 emptyTargetResolutionMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExperimentTemplateExperimentOptionsProperty ::
  ExperimentTemplateExperimentOptionsProperty
mkExperimentTemplateExperimentOptionsProperty
  = ExperimentTemplateExperimentOptionsProperty
      {haddock_workaround_ = (), accountTargeting = Prelude.Nothing,
       emptyTargetResolutionMode = Prelude.Nothing}
instance ToResourceProperties ExperimentTemplateExperimentOptionsProperty where
  toResourceProperties
    ExperimentTemplateExperimentOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.ExperimentTemplateExperimentOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountTargeting" Prelude.<$> accountTargeting,
                            (JSON..=) "EmptyTargetResolutionMode"
                              Prelude.<$> emptyTargetResolutionMode])}
instance JSON.ToJSON ExperimentTemplateExperimentOptionsProperty where
  toJSON ExperimentTemplateExperimentOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountTargeting" Prelude.<$> accountTargeting,
               (JSON..=) "EmptyTargetResolutionMode"
                 Prelude.<$> emptyTargetResolutionMode]))
instance Property "AccountTargeting" ExperimentTemplateExperimentOptionsProperty where
  type PropertyType "AccountTargeting" ExperimentTemplateExperimentOptionsProperty = Value Prelude.Text
  set newValue ExperimentTemplateExperimentOptionsProperty {..}
    = ExperimentTemplateExperimentOptionsProperty
        {accountTargeting = Prelude.pure newValue, ..}
instance Property "EmptyTargetResolutionMode" ExperimentTemplateExperimentOptionsProperty where
  type PropertyType "EmptyTargetResolutionMode" ExperimentTemplateExperimentOptionsProperty = Value Prelude.Text
  set newValue ExperimentTemplateExperimentOptionsProperty {..}
    = ExperimentTemplateExperimentOptionsProperty
        {emptyTargetResolutionMode = Prelude.pure newValue, ..}