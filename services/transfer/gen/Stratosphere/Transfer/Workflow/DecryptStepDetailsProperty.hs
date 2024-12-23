module Stratosphere.Transfer.Workflow.DecryptStepDetailsProperty (
        module Exports, DecryptStepDetailsProperty(..),
        mkDecryptStepDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Workflow.InputFileLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DecryptStepDetailsProperty
  = DecryptStepDetailsProperty {destinationFileLocation :: InputFileLocationProperty,
                                name :: (Prelude.Maybe (Value Prelude.Text)),
                                overwriteExisting :: (Prelude.Maybe (Value Prelude.Text)),
                                sourceFileLocation :: (Prelude.Maybe (Value Prelude.Text)),
                                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDecryptStepDetailsProperty ::
  InputFileLocationProperty
  -> Value Prelude.Text -> DecryptStepDetailsProperty
mkDecryptStepDetailsProperty destinationFileLocation type'
  = DecryptStepDetailsProperty
      {destinationFileLocation = destinationFileLocation, type' = type',
       name = Prelude.Nothing, overwriteExisting = Prelude.Nothing,
       sourceFileLocation = Prelude.Nothing}
instance ToResourceProperties DecryptStepDetailsProperty where
  toResourceProperties DecryptStepDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.DecryptStepDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationFileLocation" JSON..= destinationFileLocation,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "OverwriteExisting" Prelude.<$> overwriteExisting,
                               (JSON..=) "SourceFileLocation" Prelude.<$> sourceFileLocation]))}
instance JSON.ToJSON DecryptStepDetailsProperty where
  toJSON DecryptStepDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationFileLocation" JSON..= destinationFileLocation,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "OverwriteExisting" Prelude.<$> overwriteExisting,
                  (JSON..=) "SourceFileLocation" Prelude.<$> sourceFileLocation])))
instance Property "DestinationFileLocation" DecryptStepDetailsProperty where
  type PropertyType "DestinationFileLocation" DecryptStepDetailsProperty = InputFileLocationProperty
  set newValue DecryptStepDetailsProperty {..}
    = DecryptStepDetailsProperty
        {destinationFileLocation = newValue, ..}
instance Property "Name" DecryptStepDetailsProperty where
  type PropertyType "Name" DecryptStepDetailsProperty = Value Prelude.Text
  set newValue DecryptStepDetailsProperty {..}
    = DecryptStepDetailsProperty {name = Prelude.pure newValue, ..}
instance Property "OverwriteExisting" DecryptStepDetailsProperty where
  type PropertyType "OverwriteExisting" DecryptStepDetailsProperty = Value Prelude.Text
  set newValue DecryptStepDetailsProperty {..}
    = DecryptStepDetailsProperty
        {overwriteExisting = Prelude.pure newValue, ..}
instance Property "SourceFileLocation" DecryptStepDetailsProperty where
  type PropertyType "SourceFileLocation" DecryptStepDetailsProperty = Value Prelude.Text
  set newValue DecryptStepDetailsProperty {..}
    = DecryptStepDetailsProperty
        {sourceFileLocation = Prelude.pure newValue, ..}
instance Property "Type" DecryptStepDetailsProperty where
  type PropertyType "Type" DecryptStepDetailsProperty = Value Prelude.Text
  set newValue DecryptStepDetailsProperty {..}
    = DecryptStepDetailsProperty {type' = newValue, ..}