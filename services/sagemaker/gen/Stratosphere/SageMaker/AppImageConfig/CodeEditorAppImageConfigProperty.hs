module Stratosphere.SageMaker.AppImageConfig.CodeEditorAppImageConfigProperty (
        module Exports, CodeEditorAppImageConfigProperty(..),
        mkCodeEditorAppImageConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.AppImageConfig.ContainerConfigProperty as Exports
import Stratosphere.ResourceProperties
data CodeEditorAppImageConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-codeeditorappimageconfig.html>
    CodeEditorAppImageConfigProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-codeeditorappimageconfig.html#cfn-sagemaker-appimageconfig-codeeditorappimageconfig-containerconfig>
                                      containerConfig :: (Prelude.Maybe ContainerConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeEditorAppImageConfigProperty ::
  CodeEditorAppImageConfigProperty
mkCodeEditorAppImageConfigProperty
  = CodeEditorAppImageConfigProperty
      {haddock_workaround_ = (), containerConfig = Prelude.Nothing}
instance ToResourceProperties CodeEditorAppImageConfigProperty where
  toResourceProperties CodeEditorAppImageConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::AppImageConfig.CodeEditorAppImageConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerConfig" Prelude.<$> containerConfig])}
instance JSON.ToJSON CodeEditorAppImageConfigProperty where
  toJSON CodeEditorAppImageConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerConfig" Prelude.<$> containerConfig]))
instance Property "ContainerConfig" CodeEditorAppImageConfigProperty where
  type PropertyType "ContainerConfig" CodeEditorAppImageConfigProperty = ContainerConfigProperty
  set newValue CodeEditorAppImageConfigProperty {..}
    = CodeEditorAppImageConfigProperty
        {containerConfig = Prelude.pure newValue, ..}