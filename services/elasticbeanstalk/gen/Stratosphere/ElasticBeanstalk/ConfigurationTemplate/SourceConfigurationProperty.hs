module Stratosphere.ElasticBeanstalk.ConfigurationTemplate.SourceConfigurationProperty (
        SourceConfigurationProperty(..), mkSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html>
    SourceConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration-applicationname>
                                 applicationName :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration-templatename>
                                 templateName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SourceConfigurationProperty
mkSourceConfigurationProperty applicationName templateName
  = SourceConfigurationProperty
      {haddock_workaround_ = (), applicationName = applicationName,
       templateName = templateName}
instance ToResourceProperties SourceConfigurationProperty where
  toResourceProperties SourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::ConfigurationTemplate.SourceConfiguration",
         supportsTags = Prelude.False,
         properties = ["ApplicationName" JSON..= applicationName,
                       "TemplateName" JSON..= templateName]}
instance JSON.ToJSON SourceConfigurationProperty where
  toJSON SourceConfigurationProperty {..}
    = JSON.object
        ["ApplicationName" JSON..= applicationName,
         "TemplateName" JSON..= templateName]
instance Property "ApplicationName" SourceConfigurationProperty where
  type PropertyType "ApplicationName" SourceConfigurationProperty = Value Prelude.Text
  set newValue SourceConfigurationProperty {..}
    = SourceConfigurationProperty {applicationName = newValue, ..}
instance Property "TemplateName" SourceConfigurationProperty where
  type PropertyType "TemplateName" SourceConfigurationProperty = Value Prelude.Text
  set newValue SourceConfigurationProperty {..}
    = SourceConfigurationProperty {templateName = newValue, ..}