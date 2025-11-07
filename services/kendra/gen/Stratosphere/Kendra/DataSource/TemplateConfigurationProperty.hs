module Stratosphere.Kendra.DataSource.TemplateConfigurationProperty (
        TemplateConfigurationProperty(..), mkTemplateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data TemplateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-templateconfiguration.html>
    TemplateConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-templateconfiguration.html#cfn-kendra-datasource-templateconfiguration-template>
                                   template :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateConfigurationProperty ::
  JSON.Object -> TemplateConfigurationProperty
mkTemplateConfigurationProperty template
  = TemplateConfigurationProperty
      {haddock_workaround_ = (), template = template}
instance ToResourceProperties TemplateConfigurationProperty where
  toResourceProperties TemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.TemplateConfiguration",
         supportsTags = Prelude.False,
         properties = ["Template" JSON..= template]}
instance JSON.ToJSON TemplateConfigurationProperty where
  toJSON TemplateConfigurationProperty {..}
    = JSON.object ["Template" JSON..= template]
instance Property "Template" TemplateConfigurationProperty where
  type PropertyType "Template" TemplateConfigurationProperty = JSON.Object
  set newValue TemplateConfigurationProperty {..}
    = TemplateConfigurationProperty {template = newValue, ..}