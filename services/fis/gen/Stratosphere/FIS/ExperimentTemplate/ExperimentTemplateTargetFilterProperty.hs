module Stratosphere.FIS.ExperimentTemplate.ExperimentTemplateTargetFilterProperty (
        ExperimentTemplateTargetFilterProperty(..),
        mkExperimentTemplateTargetFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExperimentTemplateTargetFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatetargetfilter.html>
    ExperimentTemplateTargetFilterProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatetargetfilter.html#cfn-fis-experimenttemplate-experimenttemplatetargetfilter-path>
                                            path :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatetargetfilter.html#cfn-fis-experimenttemplate-experimenttemplatetargetfilter-values>
                                            values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExperimentTemplateTargetFilterProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> ExperimentTemplateTargetFilterProperty
mkExperimentTemplateTargetFilterProperty path values
  = ExperimentTemplateTargetFilterProperty
      {haddock_workaround_ = (), path = path, values = values}
instance ToResourceProperties ExperimentTemplateTargetFilterProperty where
  toResourceProperties ExperimentTemplateTargetFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.ExperimentTemplateTargetFilter",
         supportsTags = Prelude.False,
         properties = ["Path" JSON..= path, "Values" JSON..= values]}
instance JSON.ToJSON ExperimentTemplateTargetFilterProperty where
  toJSON ExperimentTemplateTargetFilterProperty {..}
    = JSON.object ["Path" JSON..= path, "Values" JSON..= values]
instance Property "Path" ExperimentTemplateTargetFilterProperty where
  type PropertyType "Path" ExperimentTemplateTargetFilterProperty = Value Prelude.Text
  set newValue ExperimentTemplateTargetFilterProperty {..}
    = ExperimentTemplateTargetFilterProperty {path = newValue, ..}
instance Property "Values" ExperimentTemplateTargetFilterProperty where
  type PropertyType "Values" ExperimentTemplateTargetFilterProperty = ValueList Prelude.Text
  set newValue ExperimentTemplateTargetFilterProperty {..}
    = ExperimentTemplateTargetFilterProperty {values = newValue, ..}