module Stratosphere.M2.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.M2.Application.DefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Application
  = Application {definition :: DefinitionProperty,
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 engineType :: (Value Prelude.Text),
                 kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                 name :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkApplication ::
  DefinitionProperty
  -> Value Prelude.Text -> Value Prelude.Text -> Application
mkApplication definition engineType name
  = Application
      {definition = definition, engineType = engineType, name = name,
       description = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::M2::Application",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Definition" JSON..= definition, "EngineType" JSON..= engineType,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Definition" JSON..= definition, "EngineType" JSON..= engineType,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Definition" Application where
  type PropertyType "Definition" Application = DefinitionProperty
  set newValue Application {..}
    = Application {definition = newValue, ..}
instance Property "Description" Application where
  type PropertyType "Description" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {description = Prelude.pure newValue, ..}
instance Property "EngineType" Application where
  type PropertyType "EngineType" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {engineType = newValue, ..}
instance Property "KmsKeyId" Application where
  type PropertyType "KmsKeyId" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Name" Application where
  type PropertyType "Name" Application = Value Prelude.Text
  set newValue Application {..} = Application {name = newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}