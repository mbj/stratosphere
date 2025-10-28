module Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateActionProperty (
        ExperimentTemplateActionProperty(..),
        mkExperimentTemplateActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExperimentTemplateActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateaction.html>
    ExperimentTemplateActionProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateaction.html#cfn-fis-experimenttemplate-experimenttemplateaction-actionid>
                                      actionId :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateaction.html#cfn-fis-experimenttemplate-experimenttemplateaction-description>
                                      description :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateaction.html#cfn-fis-experimenttemplate-experimenttemplateaction-parameters>
                                      parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateaction.html#cfn-fis-experimenttemplate-experimenttemplateaction-startafter>
                                      startAfter :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplateaction.html#cfn-fis-experimenttemplate-experimenttemplateaction-targets>
                                      targets :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExperimentTemplateActionProperty ::
  Value Prelude.Text -> ExperimentTemplateActionProperty
mkExperimentTemplateActionProperty actionId
  = ExperimentTemplateActionProperty
      {haddock_workaround_ = (), actionId = actionId,
       description = Prelude.Nothing, parameters = Prelude.Nothing,
       startAfter = Prelude.Nothing, targets = Prelude.Nothing}
instance ToResourceProperties ExperimentTemplateActionProperty where
  toResourceProperties ExperimentTemplateActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.ExperimentTemplateAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionId" JSON..= actionId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "StartAfter" Prelude.<$> startAfter,
                               (JSON..=) "Targets" Prelude.<$> targets]))}
instance JSON.ToJSON ExperimentTemplateActionProperty where
  toJSON ExperimentTemplateActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionId" JSON..= actionId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "StartAfter" Prelude.<$> startAfter,
                  (JSON..=) "Targets" Prelude.<$> targets])))
instance Property "ActionId" ExperimentTemplateActionProperty where
  type PropertyType "ActionId" ExperimentTemplateActionProperty = Value Prelude.Text
  set newValue ExperimentTemplateActionProperty {..}
    = ExperimentTemplateActionProperty {actionId = newValue, ..}
instance Property "Description" ExperimentTemplateActionProperty where
  type PropertyType "Description" ExperimentTemplateActionProperty = Value Prelude.Text
  set newValue ExperimentTemplateActionProperty {..}
    = ExperimentTemplateActionProperty
        {description = Prelude.pure newValue, ..}
instance Property "Parameters" ExperimentTemplateActionProperty where
  type PropertyType "Parameters" ExperimentTemplateActionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ExperimentTemplateActionProperty {..}
    = ExperimentTemplateActionProperty
        {parameters = Prelude.pure newValue, ..}
instance Property "StartAfter" ExperimentTemplateActionProperty where
  type PropertyType "StartAfter" ExperimentTemplateActionProperty = ValueList Prelude.Text
  set newValue ExperimentTemplateActionProperty {..}
    = ExperimentTemplateActionProperty
        {startAfter = Prelude.pure newValue, ..}
instance Property "Targets" ExperimentTemplateActionProperty where
  type PropertyType "Targets" ExperimentTemplateActionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ExperimentTemplateActionProperty {..}
    = ExperimentTemplateActionProperty
        {targets = Prelude.pure newValue, ..}