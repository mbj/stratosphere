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
  = StudioLifecycleConfig {studioLifecycleConfigAppType :: (Value Prelude.Text),
                           studioLifecycleConfigContent :: (Value Prelude.Text),
                           studioLifecycleConfigName :: (Value Prelude.Text),
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
      {studioLifecycleConfigAppType = studioLifecycleConfigAppType,
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