module Stratosphere.AppStream.AppBlock (
        module Exports, AppBlock(..), mkAppBlock
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppStream.AppBlock.S3LocationProperty as Exports
import {-# SOURCE #-} Stratosphere.AppStream.AppBlock.ScriptDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AppBlock
  = AppBlock {description :: (Prelude.Maybe (Value Prelude.Text)),
              displayName :: (Prelude.Maybe (Value Prelude.Text)),
              name :: (Value Prelude.Text),
              setupScriptDetails :: ScriptDetailsProperty,
              sourceS3Location :: S3LocationProperty,
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppBlock ::
  Value Prelude.Text
  -> ScriptDetailsProperty -> S3LocationProperty -> AppBlock
mkAppBlock name setupScriptDetails sourceS3Location
  = AppBlock
      {name = name, setupScriptDetails = setupScriptDetails,
       sourceS3Location = sourceS3Location, description = Prelude.Nothing,
       displayName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AppBlock where
  toResourceProperties AppBlock {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::AppBlock", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name,
                            "SetupScriptDetails" JSON..= setupScriptDetails,
                            "SourceS3Location" JSON..= sourceS3Location]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisplayName" Prelude.<$> displayName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AppBlock where
  toJSON AppBlock {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name,
               "SetupScriptDetails" JSON..= setupScriptDetails,
               "SourceS3Location" JSON..= sourceS3Location]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" AppBlock where
  type PropertyType "Description" AppBlock = Value Prelude.Text
  set newValue AppBlock {..}
    = AppBlock {description = Prelude.pure newValue, ..}
instance Property "DisplayName" AppBlock where
  type PropertyType "DisplayName" AppBlock = Value Prelude.Text
  set newValue AppBlock {..}
    = AppBlock {displayName = Prelude.pure newValue, ..}
instance Property "Name" AppBlock where
  type PropertyType "Name" AppBlock = Value Prelude.Text
  set newValue AppBlock {..} = AppBlock {name = newValue, ..}
instance Property "SetupScriptDetails" AppBlock where
  type PropertyType "SetupScriptDetails" AppBlock = ScriptDetailsProperty
  set newValue AppBlock {..}
    = AppBlock {setupScriptDetails = newValue, ..}
instance Property "SourceS3Location" AppBlock where
  type PropertyType "SourceS3Location" AppBlock = S3LocationProperty
  set newValue AppBlock {..}
    = AppBlock {sourceS3Location = newValue, ..}
instance Property "Tags" AppBlock where
  type PropertyType "Tags" AppBlock = [Tag]
  set newValue AppBlock {..}
    = AppBlock {tags = Prelude.pure newValue, ..}