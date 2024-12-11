module Stratosphere.StepFunctions.Activity (
        module Exports, Activity(..), mkActivity
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.StepFunctions.Activity.EncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.StepFunctions.Activity.TagsEntryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Activity
  = Activity {encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
              name :: (Value Prelude.Text),
              tags :: (Prelude.Maybe [TagsEntryProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActivity :: Value Prelude.Text -> Activity
mkActivity name
  = Activity
      {name = name, encryptionConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Activity where
  toResourceProperties Activity {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::Activity",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionConfiguration"
                                 Prelude.<$> encryptionConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Activity where
  toJSON Activity {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionConfiguration"
                    Prelude.<$> encryptionConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "EncryptionConfiguration" Activity where
  type PropertyType "EncryptionConfiguration" Activity = EncryptionConfigurationProperty
  set newValue Activity {..}
    = Activity {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "Name" Activity where
  type PropertyType "Name" Activity = Value Prelude.Text
  set newValue Activity {..} = Activity {name = newValue, ..}
instance Property "Tags" Activity where
  type PropertyType "Tags" Activity = [TagsEntryProperty]
  set newValue Activity {..}
    = Activity {tags = Prelude.pure newValue, ..}