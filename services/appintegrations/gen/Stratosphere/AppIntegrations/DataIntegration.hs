module Stratosphere.AppIntegrations.DataIntegration (
        module Exports, DataIntegration(..), mkDataIntegration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppIntegrations.DataIntegration.ScheduleConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataIntegration
  = DataIntegration {description :: (Prelude.Maybe (Value Prelude.Text)),
                     kmsKey :: (Value Prelude.Text),
                     name :: (Value Prelude.Text),
                     scheduleConfig :: ScheduleConfigProperty,
                     sourceURI :: (Value Prelude.Text),
                     tags :: (Prelude.Maybe [Tag])}
mkDataIntegration ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ScheduleConfigProperty -> Value Prelude.Text -> DataIntegration
mkDataIntegration kmsKey name scheduleConfig sourceURI
  = DataIntegration
      {kmsKey = kmsKey, name = name, scheduleConfig = scheduleConfig,
       sourceURI = sourceURI, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DataIntegration where
  toResourceProperties DataIntegration {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::DataIntegration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KmsKey" JSON..= kmsKey, "Name" JSON..= name,
                            "ScheduleConfig" JSON..= scheduleConfig,
                            "SourceURI" JSON..= sourceURI]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DataIntegration where
  toJSON DataIntegration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KmsKey" JSON..= kmsKey, "Name" JSON..= name,
               "ScheduleConfig" JSON..= scheduleConfig,
               "SourceURI" JSON..= sourceURI]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" DataIntegration where
  type PropertyType "Description" DataIntegration = Value Prelude.Text
  set newValue DataIntegration {..}
    = DataIntegration {description = Prelude.pure newValue, ..}
instance Property "KmsKey" DataIntegration where
  type PropertyType "KmsKey" DataIntegration = Value Prelude.Text
  set newValue DataIntegration {..}
    = DataIntegration {kmsKey = newValue, ..}
instance Property "Name" DataIntegration where
  type PropertyType "Name" DataIntegration = Value Prelude.Text
  set newValue DataIntegration {..}
    = DataIntegration {name = newValue, ..}
instance Property "ScheduleConfig" DataIntegration where
  type PropertyType "ScheduleConfig" DataIntegration = ScheduleConfigProperty
  set newValue DataIntegration {..}
    = DataIntegration {scheduleConfig = newValue, ..}
instance Property "SourceURI" DataIntegration where
  type PropertyType "SourceURI" DataIntegration = Value Prelude.Text
  set newValue DataIntegration {..}
    = DataIntegration {sourceURI = newValue, ..}
instance Property "Tags" DataIntegration where
  type PropertyType "Tags" DataIntegration = [Tag]
  set newValue DataIntegration {..}
    = DataIntegration {tags = Prelude.pure newValue, ..}