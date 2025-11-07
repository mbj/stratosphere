module Stratosphere.SageMaker.Project.CfnTemplateProviderDetailProperty (
        module Exports, CfnTemplateProviderDetailProperty(..),
        mkCfnTemplateProviderDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Project.CfnStackParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CfnTemplateProviderDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-cfntemplateproviderdetail.html>
    CfnTemplateProviderDetailProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-cfntemplateproviderdetail.html#cfn-sagemaker-project-cfntemplateproviderdetail-parameters>
                                       parameters :: (Prelude.Maybe [CfnStackParameterProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-cfntemplateproviderdetail.html#cfn-sagemaker-project-cfntemplateproviderdetail-rolearn>
                                       roleARN :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-cfntemplateproviderdetail.html#cfn-sagemaker-project-cfntemplateproviderdetail-templatename>
                                       templateName :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-cfntemplateproviderdetail.html#cfn-sagemaker-project-cfntemplateproviderdetail-templateurl>
                                       templateURL :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCfnTemplateProviderDetailProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CfnTemplateProviderDetailProperty
mkCfnTemplateProviderDetailProperty templateName templateURL
  = CfnTemplateProviderDetailProperty
      {haddock_workaround_ = (), templateName = templateName,
       templateURL = templateURL, parameters = Prelude.Nothing,
       roleARN = Prelude.Nothing}
instance ToResourceProperties CfnTemplateProviderDetailProperty where
  toResourceProperties CfnTemplateProviderDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Project.CfnTemplateProviderDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TemplateName" JSON..= templateName,
                            "TemplateURL" JSON..= templateURL]
                           (Prelude.catMaybes
                              [(JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "RoleARN" Prelude.<$> roleARN]))}
instance JSON.ToJSON CfnTemplateProviderDetailProperty where
  toJSON CfnTemplateProviderDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TemplateName" JSON..= templateName,
               "TemplateURL" JSON..= templateURL]
              (Prelude.catMaybes
                 [(JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "RoleARN" Prelude.<$> roleARN])))
instance Property "Parameters" CfnTemplateProviderDetailProperty where
  type PropertyType "Parameters" CfnTemplateProviderDetailProperty = [CfnStackParameterProperty]
  set newValue CfnTemplateProviderDetailProperty {..}
    = CfnTemplateProviderDetailProperty
        {parameters = Prelude.pure newValue, ..}
instance Property "RoleARN" CfnTemplateProviderDetailProperty where
  type PropertyType "RoleARN" CfnTemplateProviderDetailProperty = Value Prelude.Text
  set newValue CfnTemplateProviderDetailProperty {..}
    = CfnTemplateProviderDetailProperty
        {roleARN = Prelude.pure newValue, ..}
instance Property "TemplateName" CfnTemplateProviderDetailProperty where
  type PropertyType "TemplateName" CfnTemplateProviderDetailProperty = Value Prelude.Text
  set newValue CfnTemplateProviderDetailProperty {..}
    = CfnTemplateProviderDetailProperty {templateName = newValue, ..}
instance Property "TemplateURL" CfnTemplateProviderDetailProperty where
  type PropertyType "TemplateURL" CfnTemplateProviderDetailProperty = Value Prelude.Text
  set newValue CfnTemplateProviderDetailProperty {..}
    = CfnTemplateProviderDetailProperty {templateURL = newValue, ..}