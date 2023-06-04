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
  = TaskConfigProperty {documentClassificationConfig :: (Prelude.Maybe DocumentClassificationConfigProperty),
                        entityRecognitionConfig :: (Prelude.Maybe EntityRecognitionConfigProperty),
                        languageCode :: (Value Prelude.Text)}
mkTaskConfigProperty :: Value Prelude.Text -> TaskConfigProperty
mkTaskConfigProperty languageCode
  = TaskConfigProperty
      {languageCode = languageCode,
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