module Stratosphere.SageMaker.StudioLifecycleConfig (
        StudioLifecycleConfig(..), mkStudioLifecycleConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data StudioLifecycleConfig
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-studiolifecycleconfig.html>
    StudioLifecycleConfig {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-studiolifecycleconfig.html#cfn-sagemaker-studiolifecycleconfig-studiolifecycleconfigapptype>
                           studioLifecycleConfigAppType :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-studiolifecycleconfig.html#cfn-sagemaker-studiolifecycleconfig-studiolifecycleconfigcontent>
                           studioLifecycleConfigContent :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-studiolifecycleconfig.html#cfn-sagemaker-studiolifecycleconfig-studiolifecycleconfigname>
                           studioLifecycleConfigName :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-studiolifecycleconfig.html#cfn-sagemaker-studiolifecycleconfig-tags>
                           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStudioLifecycleConfig ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> StudioLifecycleConfig
mkStudioLifecycleConfig
  studioLifecycleConfigAppType
  studioLifecycleConfigContent
  studioLifecycleConfigName
  = StudioLifecycleConfig
      {haddock_workaround_ = (),
       studioLifecycleConfigAppType = studioLifecycleConfigAppType,
       studioLifecycleConfigContent = studioLifecycleConfigContent,
       studioLifecycleConfigName = studioLifecycleConfigName,
       tags = Prelude.Nothing}
instance ToResourceProperties StudioLifecycleConfig where
  toResourceProperties StudioLifecycleConfig {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::StudioLifecycleConfig",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StudioLifecycleConfigAppType"
                              JSON..= studioLifecycleConfigAppType,
                            "StudioLifecycleConfigContent"
                              JSON..= studioLifecycleConfigContent,
                            "StudioLifecycleConfigName" JSON..= studioLifecycleConfigName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON StudioLifecycleConfig where
  toJSON StudioLifecycleConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StudioLifecycleConfigAppType"
                 JSON..= studioLifecycleConfigAppType,
               "StudioLifecycleConfigContent"
                 JSON..= studioLifecycleConfigContent,
               "StudioLifecycleConfigName" JSON..= studioLifecycleConfigName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "StudioLifecycleConfigAppType" StudioLifecycleConfig where
  type PropertyType "StudioLifecycleConfigAppType" StudioLifecycleConfig = Value Prelude.Text
  set newValue StudioLifecycleConfig {..}
    = StudioLifecycleConfig
        {studioLifecycleConfigAppType = newValue, ..}
instance Property "StudioLifecycleConfigContent" StudioLifecycleConfig where
  type PropertyType "StudioLifecycleConfigContent" StudioLifecycleConfig = Value Prelude.Text
  set newValue StudioLifecycleConfig {..}
    = StudioLifecycleConfig
        {studioLifecycleConfigContent = newValue, ..}
instance Property "StudioLifecycleConfigName" StudioLifecycleConfig where
  type PropertyType "StudioLifecycleConfigName" StudioLifecycleConfig = Value Prelude.Text
  set newValue StudioLifecycleConfig {..}
    = StudioLifecycleConfig {studioLifecycleConfigName = newValue, ..}
instance Property "Tags" StudioLifecycleConfig where
  type PropertyType "Tags" StudioLifecycleConfig = [Tag]
  set newValue StudioLifecycleConfig {..}
    = StudioLifecycleConfig {tags = Prelude.pure newValue, ..}