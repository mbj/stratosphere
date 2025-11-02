module Stratosphere.Comprehend.Flywheel.TaskConfigProperty (
        module Exports, TaskConfigProperty(..), mkTaskConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Comprehend.Flywheel.DocumentClassificationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Comprehend.Flywheel.EntityRecognitionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-taskconfig.html>
    TaskConfigProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-taskconfig.html#cfn-comprehend-flywheel-taskconfig-documentclassificationconfig>
                        documentClassificationConfig :: (Prelude.Maybe DocumentClassificationConfigProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-taskconfig.html#cfn-comprehend-flywheel-taskconfig-entityrecognitionconfig>
                        entityRecognitionConfig :: (Prelude.Maybe EntityRecognitionConfigProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-comprehend-flywheel-taskconfig.html#cfn-comprehend-flywheel-taskconfig-languagecode>
                        languageCode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskConfigProperty :: Value Prelude.Text -> TaskConfigProperty
mkTaskConfigProperty languageCode
  = TaskConfigProperty
      {haddock_workaround_ = (), languageCode = languageCode,
       documentClassificationConfig = Prelude.Nothing,
       entityRecognitionConfig = Prelude.Nothing}
instance ToResourceProperties TaskConfigProperty where
  toResourceProperties TaskConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Comprehend::Flywheel.TaskConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LanguageCode" JSON..= languageCode]
                           (Prelude.catMaybes
                              [(JSON..=) "DocumentClassificationConfig"
                                 Prelude.<$> documentClassificationConfig,
                               (JSON..=) "EntityRecognitionConfig"
                                 Prelude.<$> entityRecognitionConfig]))}
instance JSON.ToJSON TaskConfigProperty where
  toJSON TaskConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LanguageCode" JSON..= languageCode]
              (Prelude.catMaybes
                 [(JSON..=) "DocumentClassificationConfig"
                    Prelude.<$> documentClassificationConfig,
                  (JSON..=) "EntityRecognitionConfig"
                    Prelude.<$> entityRecognitionConfig])))
instance Property "DocumentClassificationConfig" TaskConfigProperty where
  type PropertyType "DocumentClassificationConfig" TaskConfigProperty = DocumentClassificationConfigProperty
  set newValue TaskConfigProperty {..}
    = TaskConfigProperty
        {documentClassificationConfig = Prelude.pure newValue, ..}
instance Property "EntityRecognitionConfig" TaskConfigProperty where
  type PropertyType "EntityRecognitionConfig" TaskConfigProperty = EntityRecognitionConfigProperty
  set newValue TaskConfigProperty {..}
    = TaskConfigProperty
        {entityRecognitionConfig = Prelude.pure newValue, ..}
instance Property "LanguageCode" TaskConfigProperty where
  type PropertyType "LanguageCode" TaskConfigProperty = Value Prelude.Text
  set newValue TaskConfigProperty {..}
    = TaskConfigProperty {languageCode = newValue, ..}