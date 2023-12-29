module Stratosphere.Proton.EnvironmentTemplate (
        EnvironmentTemplate(..), mkEnvironmentTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EnvironmentTemplate
  = EnvironmentTemplate {description :: (Prelude.Maybe (Value Prelude.Text)),
                         displayName :: (Prelude.Maybe (Value Prelude.Text)),
                         encryptionKey :: (Prelude.Maybe (Value Prelude.Text)),
                         name :: (Prelude.Maybe (Value Prelude.Text)),
                         provisioning :: (Prelude.Maybe (Value Prelude.Text)),
                         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentTemplate :: EnvironmentTemplate
mkEnvironmentTemplate
  = EnvironmentTemplate
      {description = Prelude.Nothing, displayName = Prelude.Nothing,
       encryptionKey = Prelude.Nothing, name = Prelude.Nothing,
       provisioning = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties EnvironmentTemplate where
  toResourceProperties EnvironmentTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Proton::EnvironmentTemplate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DisplayName" Prelude.<$> displayName,
                            (JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Provisioning" Prelude.<$> provisioning,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON EnvironmentTemplate where
  toJSON EnvironmentTemplate {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DisplayName" Prelude.<$> displayName,
               (JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Provisioning" Prelude.<$> provisioning,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" EnvironmentTemplate where
  type PropertyType "Description" EnvironmentTemplate = Value Prelude.Text
  set newValue EnvironmentTemplate {..}
    = EnvironmentTemplate {description = Prelude.pure newValue, ..}
instance Property "DisplayName" EnvironmentTemplate where
  type PropertyType "DisplayName" EnvironmentTemplate = Value Prelude.Text
  set newValue EnvironmentTemplate {..}
    = EnvironmentTemplate {displayName = Prelude.pure newValue, ..}
instance Property "EncryptionKey" EnvironmentTemplate where
  type PropertyType "EncryptionKey" EnvironmentTemplate = Value Prelude.Text
  set newValue EnvironmentTemplate {..}
    = EnvironmentTemplate {encryptionKey = Prelude.pure newValue, ..}
instance Property "Name" EnvironmentTemplate where
  type PropertyType "Name" EnvironmentTemplate = Value Prelude.Text
  set newValue EnvironmentTemplate {..}
    = EnvironmentTemplate {name = Prelude.pure newValue, ..}
instance Property "Provisioning" EnvironmentTemplate where
  type PropertyType "Provisioning" EnvironmentTemplate = Value Prelude.Text
  set newValue EnvironmentTemplate {..}
    = EnvironmentTemplate {provisioning = Prelude.pure newValue, ..}
instance Property "Tags" EnvironmentTemplate where
  type PropertyType "Tags" EnvironmentTemplate = [Tag]
  set newValue EnvironmentTemplate {..}
    = EnvironmentTemplate {tags = Prelude.pure newValue, ..}