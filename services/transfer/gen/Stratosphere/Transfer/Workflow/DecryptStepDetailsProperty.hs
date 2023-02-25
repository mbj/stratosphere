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
  = DecryptStepDetailsProperty {destinationFileLocation :: (Prelude.Maybe InputFileLocationProperty),
                                name :: (Prelude.Maybe (Value Prelude.Text)),
                                overwriteExisting :: (Prelude.Maybe (Value Prelude.Text)),
                                sourceFileLocation :: (Prelude.Maybe (Value Prelude.Text)),
                                type' :: (Prelude.Maybe (Value Prelude.Text))}
mkDecryptStepDetailsProperty :: DecryptStepDetailsProperty
mkDecryptStepDetailsProperty
  = DecryptStepDetailsProperty
      {destinationFileLocation = Prelude.Nothing, name = Prelude.Nothing,
       overwriteExisting = Prelude.Nothing,
       sourceFileLocation = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties DecryptStepDetailsProperty where
  toResourceProperties DecryptStepDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.DecryptStepDetails",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationFileLocation"
                              Prelude.<$> destinationFileLocation,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "OverwriteExisting" Prelude.<$> overwriteExisting,
                            (JSON..=) "SourceFileLocation" Prelude.<$> sourceFileLocation,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON DecryptStepDetailsProperty where
  toJSON DecryptStepDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationFileLocation"
                 Prelude.<$> destinationFileLocation,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "OverwriteExisting" Prelude.<$> overwriteExisting,
               (JSON..=) "SourceFileLocation" Prelude.<$> sourceFileLocation,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "DestinationFileLocation" DecryptStepDetailsProperty where
  type PropertyType "DestinationFileLocation" DecryptStepDetailsProperty = InputFileLocationProperty
  set newValue DecryptStepDetailsProperty {..}
    = DecryptStepDetailsProperty
        {destinationFileLocation = Prelude.pure newValue, ..}
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
    = DecryptStepDetailsProperty {type' = Prelude.pure newValue, ..}