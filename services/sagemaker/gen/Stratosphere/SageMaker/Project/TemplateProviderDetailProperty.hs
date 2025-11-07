module Stratosphere.SageMaker.Project.TemplateProviderDetailProperty (
        module Exports, TemplateProviderDetailProperty(..),
        mkTemplateProviderDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Project.CfnTemplateProviderDetailProperty as Exports
import Stratosphere.ResourceProperties
data TemplateProviderDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-templateproviderdetail.html>
    TemplateProviderDetailProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-templateproviderdetail.html#cfn-sagemaker-project-templateproviderdetail-cfntemplateproviderdetail>
                                    cfnTemplateProviderDetail :: CfnTemplateProviderDetailProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateProviderDetailProperty ::
  CfnTemplateProviderDetailProperty -> TemplateProviderDetailProperty
mkTemplateProviderDetailProperty cfnTemplateProviderDetail
  = TemplateProviderDetailProperty
      {haddock_workaround_ = (),
       cfnTemplateProviderDetail = cfnTemplateProviderDetail}
instance ToResourceProperties TemplateProviderDetailProperty where
  toResourceProperties TemplateProviderDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Project.TemplateProviderDetail",
         supportsTags = Prelude.False,
         properties = ["CfnTemplateProviderDetail"
                         JSON..= cfnTemplateProviderDetail]}
instance JSON.ToJSON TemplateProviderDetailProperty where
  toJSON TemplateProviderDetailProperty {..}
    = JSON.object
        ["CfnTemplateProviderDetail" JSON..= cfnTemplateProviderDetail]
instance Property "CfnTemplateProviderDetail" TemplateProviderDetailProperty where
  type PropertyType "CfnTemplateProviderDetail" TemplateProviderDetailProperty = CfnTemplateProviderDetailProperty
  set newValue TemplateProviderDetailProperty {..}
    = TemplateProviderDetailProperty
        {cfnTemplateProviderDetail = newValue, ..}